unit Simulateur;

interface
uses
  ExtCtrls;
const
  A                     =0;
  D                     =1;
  VM_Guidage   		      =0;
  VM_Corec_Plus    	    =4;
  VM_Corec_Moins    	  =8;
  VM_Lent        		    =12;
  VM_Rapide      		    =16;
  VM_Acce   		        =20;
  Dir_Guidage  		      =21;
  Dir_Corec_Plus  	    =22;
  Dir_Corec_Moins  	    =23;
  Dir_Lent_Plus  		    =24;
  Dir_Lent_Moins  	    =25;
  Dir_Rapide_Plus  	    =26;
  Dir_Rapide_Moins 	    =27;
  Resol_Guidage  		    =28;
  Resol_Corec_Plus 	    =29;
  Resol_Corec_Moins 	  =30;
  Resol_Lent  		      =31;
  Resol_Rapide  		    =32;
  Courant_Guidage  	    =33;
  Courant_Lent  		    =34;
  Courant_Rapide  	    =35;
  Sens_Raq_Led  		    =36;
  PasCodeur 		        =37;
  ParkMode 		          =41;
  Raq_type_can_address  =42;
  PEC_ENABLED		        =47;
  Jour                  =24*60*60;
var

Old_Dir_M,Dir_M,Command_Rec,Inverse_Sens,
Init_PEC,Pos_Pec1,Stop,Pointage,Act_Corr_pointage,Guide,Change_Mode,ACCU_ADD,
DIR_PHASE,DELAY_M_LSB_Compteur,DELAY_M_LSB,Niveau_Courant_M,
Buf_Count,Num_Carte,Clavier,Mode_Vitesse,Accel_M,temp,
Old_Mode_Vitesse,PEC_BASE,PEC_COUNT,Envoyer_Info,
PEC_ACTIVED,PEC_WRITE,PEC_START,DECMODE,FOCUSMODE,Parked,Raq_type_can,OKstep: array[A..D] of byte;
PEC_STEP,PEC_COMP,TEMP_PEC_STEP,temp_pec,
Compt_target,Debug,Compt_Flash,Flash_Init:array[A..D] of word;
DELAY_M,DELAY_M_Guide,DELAY_M_Temp,DELAY_TARGET,
DELAY_M_Guide_32,DELAY_TARGET_32,
TEMP_NUM_POSI,NUM_POSI,Num_Pointage,DebugL,POSI_REF:array[A..D] of longword;
Pointage_Corr:array[A..D] of ShortString;
EEPROM:array[0..1,0..47] of byte;
Temps_Ref,Temps:array[A..D] of TTime;

function SendSimulator(ordre:ShortString;device:byte):ShortString;
function DeviceReadySimulator(device:byte):byte;
function ReadEncoderSimulator(Rang_octet, device: byte): integer;
procedure StopSlewingSimulator(device:byte);
type
  TTimerMAJ = class(TTimer)
    procedure TimerEvent(Sender: TObject);
  private
  public
  end;

implementation

uses Dialogs,System.Win.Registry,Windows,SysUtils,Core,MCMT_Main,SyncObjs;
var
  Reg: TRegistry;
  Index:byte;
  SectionCritiqueMAJ    :TCriticalSection;
  TimerMAJ:TTimerMAJ;

function CalculAdresse(address,device:byte):AnsiString;
var
  IndexS:AnsiString;
begin
    IndexS:=IntToStr(address);
    if address<10 then   IndexS:='0'+IndexS;
    if device=A then CalculAdresse:='A'+IndexS else CalculAdresse:='D'+IndexS;
end;

function CalculVitesse(Pas:longword):double; //en µpas par s
begin
  if Pas=0 then CalculVitesse:=0
  else CalculVitesse:=80000000/Pas;
end;

function READ_EEPROM(address,device:byte):byte;
begin
  READ_EEPROM:=EEPROM[device,address];
end;

function READ_EEPROM_LONG(address,device:byte):longword;
begin
  READ_EEPROM_LONG:=EEPROM[device,address+3]*16777216+
                    EEPROM[device,address+2]*65536+
                    EEPROM[device,address+1]*256+
                    EEPROM[device,address+0];
end;

procedure WRITE_EEPROM(address,data,device:byte);
begin
  try
    Reg:=TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('SOFTWARE\MCMT32\EEPROM',False);
    Reg.WriteInteger(CalculAdresse(address,device),data);
    Reg.CloseKey;
    EEPROM[device,address]:=data;
  Finally
    Reg.Free;
  end;
end;

procedure WRITE_EEPROM_LONG(address:byte;data:longword;device:byte);
var
  d:longword;
begin
  try
    Reg:=TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('SOFTWARE\MCMT32\EEPROM',False);
    d:=data;
    Reg.WriteInteger(CalculAdresse(address,device),d mod 256);
    EEPROM[device,address]:=d mod 256;
    d:=d div 256;
    Reg.WriteInteger(CalculAdresse(address+1,device),d mod 256);
    EEPROM[device,address+1]:=d mod 256;
    d:=d div 256;
    Reg.WriteInteger(CalculAdresse(address+2,device),d mod 256);
    EEPROM[device,address+2]:=d mod 256;
    d:=d div 256;
    Reg.WriteInteger(CalculAdresse(address+3,device),d mod 256);
    EEPROM[device,address+3]:=d mod 256;
    Reg.CloseKey;
  Finally
    Reg.Free;
  end;
end;

procedure Change_Mode_Vitesse(device:byte);
begin
  Change_Mode[device]:=0;
  Temps_Ref[device]:=now;
  POSI_REF[Device]:=NUM_POSI[Device];
  case Mode_Vitesse[device] of
    0:
      begin
        DELAY_M[device]:=READ_EEPROM_LONG(VM_Guidage,device);					//suivi
        DELAY_M_Temp[device]:=DELAY_M[device];
        Pointage[device]:=0;
        Dir_M[device]:=READ_EEPROM(Dir_Guidage,device);
      end;
    1:
      begin
        DELAY_M_Temp[device]:=READ_EEPROM_LONG(VM_Corec_Plus,device);				//guidage +
        Pointage[device]:=0;
        Dir_M[device]:=READ_EEPROM(Dir_Guidage,device);
      end;
    2:
      begin
        DELAY_M_Temp[device]:=READ_EEPROM_LONG(VM_Lent,device);				//pointage lent +
        Pointage[device]:=1;
        Dir_M[device]:=READ_EEPROM(Dir_Guidage,device);
      end;
    3:
      begin
        DELAY_M_Temp[device]:=READ_EEPROM_LONG(VM_Rapide,device);				//pointage rapide +
        Pointage[device]:=1;
        Dir_M[device]:=READ_EEPROM(Dir_Guidage,device);
      end;
    4:
      begin
        DELAY_M_Temp[device]:=READ_EEPROM_LONG(VM_Corec_Moins,device);				//guidage-
        Pointage[device]:=0;
        if device=A then Dir_M[device]:=READ_EEPROM(Dir_Guidage,device)
        else Dir_M[device]:=(READ_EEPROM(Dir_Guidage,device)+1) mod 2;
      end;
    5:
      begin
        DELAY_M_Temp[device]:=READ_EEPROM_LONG(VM_Lent,device);				//pointage lent -
        Pointage[device]:=1;
        Dir_M[device]:=(READ_EEPROM(Dir_Guidage,device)+1) mod 2;
      end;
    6:
      begin
        DELAY_M_Temp[device]:=READ_EEPROM_LONG(VM_Rapide,device);				//pointage rapide -
        Pointage[device]:=1;
        Dir_M[device]:=(READ_EEPROM(Dir_Guidage,device)+1) mod 2;
      end;
  end;
end;

function DeviceReadySimulator(device:byte):byte;
begin
  if Pointage[device]=0 then
    DeviceReadySimulator:=1
  else
    DeviceReadySimulator:=0;
end;

procedure MiseAJour;
var
  Axe:byte;
  Delta,Delta1: double;
  PasPointage:LongWord;
begin
  SectionCritiqueMAJ.Enter;
  for Axe:=A to D do
  begin
    Delta:=(now-Temps_Ref[axe])*jour;
    if Parked[Axe]=0 then //pas en park--> calcul déplacement
    begin
      if Act_Corr_pointage[Axe]=0 then //pas en pointage
      begin
        if Dir_M[Axe]=1 then NUM_POSI[Axe]:=POSI_REF[Axe]+round(CalculVitesse(DELAY_M_Temp[Axe])*Delta)
        else NUM_POSI[Axe]:=POSI_REF[Axe]-round(CalculVitesse(DELAY_M_Temp[Axe])*Delta);
      end
      else // en pointage    delta1=temps en vitesse pointage    delta=temps en vitesse suivi
      begin
        PasPointage:=round(CalculVitesse(DELAY_M_Temp[Axe])*Delta);
        if Num_Pointage[Axe]>PasPointage then //pointage non terminé
        begin
          delta1:=delta;
          delta:=0;
        end
        else // pointage se terminant
        begin
          delta1:=Num_Pointage[Axe]/CalculVitesse(DELAY_M_Temp[Axe]);
          delta:=delta-delta1;
        end;
        if Dir_M[Axe]=1 then NUM_POSI[Axe]:=POSI_REF[Axe]+round(CalculVitesse(DELAY_M_Temp[Axe])*Delta1)
        else NUM_POSI[Axe]:=POSI_REF[Axe]-round(CalculVitesse(DELAY_M_Temp[Axe])*Delta1);
        if delta<>0 then // pointage se terminant //on rajoute le deplacement en alpha
        begin
          if READ_EEPROM(Dir_Guidage,A)=1 then inc(NUM_POSI[A],round(CalculVitesse(DELAY_M[A])*(Delta1+Delta)))
          else dec(NUM_POSI[A],round(CalculVitesse(DELAY_M[A])*(Delta1+Delta)));
    		  Mode_Vitesse[Axe]:=0;
          Change_Mode[Axe]:=1;
          Act_Corr_pointage[Axe]:=0;
        end;
      end;
    end;
    if Change_Mode[Axe]=1 then Change_Mode_Vitesse(Axe);
  end;
  SectionCritiqueMAJ.Leave;
end;

Procedure TTimerMAJ.TimerEvent(Sender: TObject);  // Arrive apres X ms
begin
  MiseAJour;
end;


function ReadEncoderSimulator(Rang_octet, device: byte): integer;
begin
  MiseAJour;
  case Rang_Octet of
    $3:
      begin
        TEMP_NUM_POSI[device]:=NUM_POSI[device];
        result:=(TEMP_NUM_POSI[device] and $FF000000) shr 24;
      end;
    $2:
      result:=(TEMP_NUM_POSI[device] and $00FF0000) shr 16;
    $1:
      result:=(TEMP_NUM_POSI[device] and $0000FF00) shr 8;
    $0:
      result:=TEMP_NUM_POSI[device] and $000000FF;
  end;
end;

procedure StopSlewingSimulator(device:byte);
begin
 	Mode_Vitesse[device]:=0;
  Change_Mode[device]:=1;
  MiseAJour;
end;

function  SendSimulator(ordre:ShortString;device:byte):ShortString;
var
  address,i:byte;
  data:longword;
  command:array[1..20] of byte;
  SendSimulatorB:array[1..50] of byte;
  S:AnsiString;
begin
  MiseAJour;
  for i:=1 to 20 do command[i]:=ord(ordre[i]);
  case command[1] of
    $44:  //D 	Guidage +
      begin
		    Mode_Vitesse[device]:=1;
        Change_Mode[device]:=1;
      end;
    $47:  //G  	Pointage Lent +
      begin
        Mode_Vitesse[device]:=2;
		    Change_Mode[device]:=1;
      end;
    $58:	//X  	Rapide +
		  begin
    		Mode_Vitesse[device]:=3;
		    Change_Mode[device]:=1;
      end;
    $51:	//Q 	Guidage -
		  begin
    		Mode_Vitesse[device]:=4;
		    Change_Mode[device]:=1;
      end;
    $46:	//F  Pointage	Lent -
      begin
        Mode_Vitesse[device]:=5;
        Change_Mode[device]:=1;
      end;
    $57:	//W	Pointage Rapide -
		  begin
    		Mode_Vitesse[device]:=6;
		    Change_Mode[device]:=1;
      end;
    $4A:  //J   	Lecture octet dans EEPROM
		  begin
        address:=command[2];
        SendSimulatorb[1]:=READ_EEPROM(address,device);
      end;
    $4B:	//K   	Lecture des param?tres en batch
  		begin
        for address:=0 to 47 do
        begin
          SendSimulatorb[1+address]:=READ_EEPROM(address,device);
        end;
      end;
    $4C:	//L  Ecriture EEPROM
      begin
       	address:=VM_Guidage+command[2];
       	WRITE_EEPROM(address,command[3],device);
        if address=Dir_Guidage then Dir_M[device]:=READ_EEPROM(Dir_Guidage,device);
        if address=PEC_ENABLED then PEC_ACTIVED[device]:=READ_EEPROM(PEC_ENABLED,device);
    		Change_Mode[device]:=1;
      end;
    $4E:	//N 	No Park Mode
      begin
    		Parked[device]:=0;
		    WRITE_EEPROM(ParkMode,0,device);
      end;
    $50:	//P 	Park Mode
      begin
    		Parked[device]:=1;
		    WRITE_EEPROM(ParkMode,1,device);
      end;
    $52:	//R  Ecriture Valeur DELAY_M et Dir_M
      begin
 		    if Mode_Vitesse[device]=0 then
        begin
		      DELAY_M[device]:=(command[2] shl 24)+(command[3] shl 16)+
                        (command[4] shl 8)+command[5];
  		    DELAY_M_Temp[device]:=DELAY_M[device];
          command[6]:=command[6] and $01;
		      if (command[6]=1) then Dir_M[device]:=READ_EEPROM(Dir_Guidage,device)
		      else Dir_M[device]:=(READ_EEPROM(Dir_Guidage,device)+1) mod 2;
        end;
      end;
    $53:	//S   	Sidérale - 25600 micro-pas
		  begin
       	Mode_Vitesse[device]:=0;
		    Change_Mode[device]:=1;
      end;
    $56:	//V  Lecture Version
 		  begin
		    SendSimulator:='MCMT32 V1.1.13'
      end;
    $6C:	//l  Ecriture EEPROM d'un longword
		  begin
        address:=VM_Guidage+command[2];
        data:=(((command[3] shl 8)+command[4]) shl 8) + command[5];
        data:=(data shl 8)+command[6];
        WRITE_EEPROM_LONG(address,data,device);
      end;
    $72:	//r  Lecture Valeur DELAY_M, DELAY_M_LSB, PEC_BASE, PEC_STEP, PEC_COMP, PEC_STATE et Park
 		  begin
        TEMP_PEC_STEP[device]:=PEC_STEP[device];//0x000AD08D
		    SendSimulatorb[1]:=lo((DELAY_M[device] and $FF000000) shr 24);
		    SendSimulatorb[2]:=lo((DELAY_M[device] and $00FF0000) shr 16);
		    SendSimulatorb[3]:=lo((DELAY_M[device] and $0000FF00) shr 8);
		    SendSimulatorb[4]:=lo(DELAY_M[device] and $000000FF);
		    SendSimulatorb[5]:=PEC_BASE[device];
 		    SendSimulatorb[6]:=TEMP_PEC_STEP[device];
        SendSimulatorb[7]:=hi(PEC_COMP[device]);
        SendSimulatorb[8]:=lo(PEC_COMP[device]);
        SendSimulatorb[9]:=0;
		    SendSimulatorb[10]:=Parked[device];
      end;
    $70:  //p   POSITIONNEMENT
		  begin
    		Num_Pointage[device]:=((command[2] and $7F) shl 24)+(command[3] shl 16)+
                  (command[4] shl 8)+command[5];
		    if((command[2] and $80) = $80) then Mode_Vitesse[device]:=6
		    else Mode_Vitesse[device]:=3;
		    if(Num_Pointage[device]<>0) then
        begin
    		  Change_Mode[device]:=1;
		      Act_Corr_pointage[device]:=1;
        end;
      end;
  end;
  S:='';
  for i:=1 to 50 do S:=S+AnsiChar(chr(SendSimulatorb[i]));
  Result:=S;
end;

Initialization
  try
    Reg:=TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    if not (Reg.OpenKey('SOFTWARE\MCMT32', False)) then
      Reg.OpenKey('SOFTWARE\MCMT32', True);
    Reg.OpenKey('EEPROM',true);
    for index:=0 to 47 do
      begin
        if not(Reg.ValueExists(CalculAdresse(Index,A))) then Reg.WriteInteger(CalculAdresse(Index,A),0)
          else EEPROM[A,index]:=Reg.ReadInteger(CalculAdresse(Index,A));
        if not(Reg.ValueExists(CalculAdresse(Index,D))) then Reg.WriteInteger(CalculAdresse(Index,D),0)
          else EEPROM[D,index]:=Reg.ReadInteger(CalculAdresse(Index,D));
      end;
    Reg.CloseKey;
  Finally
    Reg.Free;
  end;
  for index:=A to D do
  begin
  	Parked[index]:=READ_EEPROM(ParkMode,index);		// Vérifie le mode Park
	  DELAY_M[index]:=READ_EEPROM_LONG(VM_Guidage,index);
	  DELAY_M_Temp[index]:=DELAY_M[index];
	  Dir_M[index]:=READ_EEPROM(Dir_Guidage,index);
	  Old_Dir_M[index]:=Dir_M[index];
	  Inverse_Sens[index]:=READ_EEPROM(Sens_Raq_Led,index);
	  Mode_Vitesse[index]:=0;
    NUM_POSI[index]:=$40000000;
    POSI_REF[index]:=NUM_POSI[index];
    DELAY_M[index]:=READ_EEPROM_LONG(VM_Guidage,index);
    Pointage[index]:=0;
	  Guide[index]:=1;
  end;
  Temps_Ref[A]:=now;
  Temps_Ref[D]:=Temps_Ref[A];
  SectionCritiqueMAJ:=TCriticalSection.create;
  TimerMAJ:=TTimerMAJ.Create(nil);
  TimerMAJ.Interval:=100;
  TimerMAJ.OnTimer:=TimerMAJ.TimerEvent;
  TimerMAJ.Enabled:=False;
Finalization
begin
  SectionCritiqueMAJ.Free;
  TimerMAJ.Free;
end;

end.
