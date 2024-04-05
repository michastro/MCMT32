unit Core;

interface
uses
        FMX.Types,
        MCMT32_ASCOM_TLB,
        HiResTim,ShlObj;
Function IsMCMTSlewing(Axis: integer): boolean;
function IsAxisSlewing_Backlash(Axis: integer): boolean;
function MoveOffsetDirectStep(AlphaDSteps, DeltaDSteps: Integer): Boolean;
Function RetrieveDataAlphaDelta: boolean;
//Function InitTelescopeSeeker(var Alpha, Delta, Latitude, Longitude: Double): Boolean;
function InitTelescopeSeeker(var Alpha, Delta, Latitude, Longitude,
  Accuracy: Double): boolean;
function STOPTelescope(Alpha, Delta: Boolean): Boolean;
function STOP_ALL_Telescope: Boolean;
procedure TelescopeMoveAxe(MoveSteps, Axe: integer);
Function  TelescopeMove(MoveStepsAlpha, MoveStepsDelta: integer): Boolean;
Procedure CalculePositionMonture;
function TelescopeOuest : boolean;
function ReturnToSideralSpeed: Boolean;
function ParkTel_at(AHPark, Dec2000: Double): Boolean;
procedure ASK_FortelescopeOrientation(Latitude:Double);
Procedure CreateAllTimers;
Procedure DisableTimers;
Procedure FreeAllTimers;
function Calibrate(Alpha, Delta: Double): boolean; stdcall;
Function GetMountPosEndPointing(Longitude, Ra_appDest, DE_appDest: Double)  : Integer; stdcall;
function Get_AtPark_Core: WordBool;
function Get_CanPark_Core: WordBool;
function Get_CanSetPark_Core: WordBool;
function Get_Connected_Core: WordBool;
function Get_Declination_Core: Double;
function Get_DestinationSideOfPier_Core(RightAscension, Declination: Double): PierSide;
function Get_FactVitesse_Core: Double;
function Get_IsPulseGuiding_Core: WordBool;
function Get_RightAscension_Core: Double;
function Get_SiderealTime_Core: Double;
function Get_Slewing_Core: WordBool;
function Get_TargetDeclination_Core: Double;
function Get_TargetRightAscension_Core: Double;
function Get_Tracking_Core: WordBool;
procedure AbortSlew_Core;
procedure MoveAxis_Core(Axe: TelescopeAxes; Rate: Double);
procedure Park_Core;
procedure Set_Connected_Core(Value: WordBool);
procedure Set_TargetDeclination_Core(Value: Double);
procedure Set_TargetRightAscension_Core(Value: Double);
procedure SetPark_Core;
function SetFreeSpeed(Speed_rad:double;device:integer): Boolean;
function ReturnVersionDLL_str(Index:Integer): string;
procedure SetupDialog_Core;
procedure SlewToCoordinates_Core(RightAscension, Declination: Double);
procedure SlewToCoordinatesAsync_Core(RightAscension, Declination: Double);
procedure SlewToTarget_Core;
procedure SlewToTargetAsync_Core;
procedure SyncToCoordinates_Core(RightAscension, Declination: Double);
procedure SyncToTarget_Core;
procedure Unpark_Core;
procedure WriteToTrace(Data: string);
procedure EcritLog(s:string);


type
  TTimerBacklash = class(TTimer)
    procedure TimerEvent(Sender: TObject);
  private
    Flag: integer;
    Alpha, Delta: boolean;
    { Private declarations }
  public
    Finished: boolean;
    { Public declarations }
  end;

  TTimerPark = class(TTimer)
    procedure TimerEvent(Sender: TObject);
  private
    { Private declarations }
    Flag: integer;
    AngleHour, Delta: double;
  public
    Finished: boolean;
    { Public declarations }
  end;

  TTimerRetardateur = class(TTimer)
    procedure TimerEvent(Sender: TObject);
  private
    { Private declarations }
    Declanchement: double;
    DabordAlpha, DabordDelta : Boolean ;
    AlphaCroissant, DeltaCroissant : Boolean;
    MoveSteps : integer;
  public
    Finished: boolean;
    { Public declarations }
  end;

  TTimerPulse = class(THiResTimer)
    procedure TimerEvent(Sender: TObject);
  private
    { Private declarations }
  public
    StopOrderAlpha,
    StopOrderDecli: boolean;
    IsPulse: boolean;
    { Public declarations }
  end;



var
  fConnected,fParked,
  fTracking,
  fTargetDecOK, fTargetAscOK: boolean;
  fDeclination,fRightAscension,
  fTargetDeclination, fTargetRightAscension,
  fParkAH,fParkDelta,
  fDeclinationRate,fRightAscensionRate    :double;
  fApertureArea,fApertureDiameter :double;
  FichierLog:string;
  TimerAlphaPulse   : TTimerPulse;
  TimerDecliPulse   : TTimerPulse;
  TimerBacklash     : TTimerBacklash;
  TimerPark         : TTimerPark;
  TimerRetardateur  : TTimerRetardateur;
Const
  Stopping:Integer=0;
  _ERROR_            =-1;
  ErrorCountRAce:Word= 0;


implementation
Uses
      StdVcl,Windows,
      System.Win.Registry,
      System.Win.ComObj,
      ComServ,
      COMM,
      IdGlobal,
      FeuRouge,
      FeuVert,
      scan_mcmt,
      ProcessBox_mcmtII,
      Setup32,
      Etat_Telescope,
      System.SysUtils,
      System.IniFiles,
      System.Classes,
      System.Variants,
      System.Math,
      Vcl.Dialogs,
      Vcl.Controls,
      Vcl.Forms,
      VarGlobal,
      Utils,
      MCMT_Main,
      Simulateur,
      Vcl.graphics;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

procedure EcritLog(s:string);
var f:TextFile;
    Value:int64;
begin
  AssignFile(f,FichierLog);
  Append(f);
//  QueryPerformanceCounter(Value);
//  Write(f,Format('%2.5f, ',[Value/10000000.0]));
  Write(f,Format('%2.3f, ',[frac(now)*86400]));
  WriteLn(f,s);
  CloseFile(f);
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Procedure TTimerPulse.TimerEvent(Sender: TObject);  // Arrive apres X ms
begin
  Self.Enabled := false;
  if not(PulseGuideFirmware) then STOPTelescope(StopOrderAlpha, StopOrderDecli);
  if StopOrderAlpha then
  begin
    LEDE.Grey;
    LEDO.Grey;
  end;
  if StopOrderDecli then
  begin
    LEDN.Grey;
    LEDS.Grey;
  end;
  IsPulse := false;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Procedure TTimerBacklash.TimerEvent(Sender: TObject);
var
  MoveStepsAlpha,
  MoveStepsDelta : integer;
begin
  Try

    if Flag <> 0 then
    begin
      dec(Flag);
      if Flag = 0 then
      begin
        MoveStepsAlpha := 0;
        MoveStepsDelta := 0;

        if Alpha then
          MoveStepsAlpha := BackLash.StepAD;
        if Delta then
          if BackLash.North then
            MoveStepsDelta := -BackLash.StepDEC
          else
            MoveStepsDelta := BackLash.StepDEC;

        TelescopeMove(MoveStepsAlpha, MoveStepsDelta);

        Enabled := false;
      end;
    end
    else
    begin

      if ((IsMCMTSlewing(C_Alpha) = false) and
        (IsMCMTSlewing(C_Delta) = false)) then
      begin
        Flag := BackLash.Pause div 1000;

        if Flag = 0 then
        begin
          MoveStepsAlpha := 0;
          MoveStepsDelta := 0;
          if Alpha then
            MoveStepsAlpha := BackLash.StepAD;
          if Delta then
            if BackLash.North then
              MoveStepsDelta := -BackLash.StepDEC
            else
              MoveStepsDelta := BackLash.StepDEC;

          TelescopeMove(MoveStepsAlpha, MoveStepsDelta);
          Enabled := false;
        end;
      end;
    end;
  Finally
  End;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Procedure TTimerPark.TimerEvent(Sender: TObject);
var
  Alpha_Temp,
  Delta_Temp,
  Accuracy       : Double;

const
  procName='TTimerPark.TimerEvent';

  (* Main thread *)

begin
   // Une fois ce timer demarré pour le park, il n'est jamais stoppé ! (!)
  if ((IsAxisSlewing_Backlash(C_Alpha) = false) and (IsAxisSlewing_Backlash(C_Delta) = false)) then
  begin
    case flag of
      1:
        begin
          Alpha_Temp:=CalculeTSL(Now+SpeedIntMCMT.GMT/24,Lieu.Long)-AngleHour;
          Delta_Temp := Delta;
          if BackLash.Saved_Park then
          begin
            Alpha_Temp := Alpha_Temp + 0.002; // To avoid backlash correction in the last seeker
            if BackLash.North then
            begin
              Delta_Temp := Delta_Temp + 0.002; // To avoid backlash correction in the last seeker
              if Delta_Temp > Pi_d_2 then Delta_Temp := Pi_d_2;
            end
            else
            begin
              Delta_Temp := Delta_Temp - 0.002; // To avoid backlash correction in the last seeker
              if Delta_Temp < -Pi_d_2 then Delta_Temp := -Pi_d_2;
            end;
          end;
          Remet2Pi(Alpha_Temp);
          InitTelescopeSeeker(Alpha_Temp, Delta_Temp, Lieu.Lat, Lieu.Long,Accuracy);
          Flag := 0;
        end;
      0:
        begin
          Alpha_Temp:=CalculeTSL(Now+SpeedIntMCMT.GMT/24,Lieu.Long)-AngleHour;
          Remet2Pi(Alpha_Temp);
          Delta_Temp := Delta;
          Enabled := false;
          InitTelescopeSeeker(Alpha_Temp, Delta_Temp, Lieu.Lat, Lieu.Long,Accuracy);
          while ((IsAxisSlewing_backlash(C_Alpha) = True) or (IsAxisSlewing_backlash(C_Delta) = True)) do WaitMainthread(procName);
          STOP_ALL_Telescope;
          is_Parking        := False;
          Park              := True;
          BackLash.Activated:= BackLash.Saved_Park;
      end;
    end;
  end;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Procedure TTimerRetardateur.TimerEvent(Sender: TObject);
begin
  Try
    CalculePositionMonture;
    (* Renvoie les valeurs actualisées de
      /  — GerMountSetup.LongitudeHorairePointage
      /  — GerMountSetup.AnglePolairePointage (pour les montures allemandes
      /                                        et fer-à-cheval)
      /  — GerMountSetup.AngleHorairePointage (pour les montures à fourche)
    *)

    if DabordAlpha
    { Le mouvement Alpha est déjà déclanché, le mouvement Delta est retardé }
      and ((GerMountSetup.Monture_Allemande
      { test d'attente du déclanchement Delta pour une monture allemande }
      and (DeltaCroissant xor (GerMountSetup.LongitudeHorairePointage <
      Declanchement)) and (GerMountSetup.LongitudeHorairePointage < Pi_d_2 +
      GerMountSetup.Angle_horaire_critique_Ouest) and
      (GerMountSetup.LongitudeHorairePointage > -Pi_d_2 +
      GerMountSetup.Angle_horaire_critique_Est))

      or { test d'attente du déclanchement Delta pour une monture à fourche }
      (not(GerMountSetup.Monture_Allemande) and
      not(GerMountSetup.Monture_FerACheval) and
      (AlphaCroissant xor (GerMountSetup.AngleHorairePointage < Declanchement)))

      or { test d'attente du déclanchement Delta pour une monture fer-à-cheval }
      (GerMountSetup.Monture_FerACheval and
      (AlphaCroissant xor (GerMountSetup.LongitudeHorairePointage <
      Declanchement))))

    then { Déclanchement du mouvement Delta et arrêt du timer }
    begin
      TelescopeMoveAxe(MoveSteps, C_Delta);
      Enabled := false
    end;

    if DabordDelta
    { Le mouvement Delta est déjà déclanché, le mouvement Alpha est retardé
      Cela ne peut se produire que dans une procédure de retournement
      sur ordre d'une monture allemande }
      and (DeltaCroissant xor (GerMountSetup.AnglePolairePointage <
      Declanchement))

    then { Déclanchement du mouvement Alpha et arrêt du timer }
    begin
      TelescopeMoveAxe(MoveSteps, C_Alpha);
      Enabled := false
    end;

  Finally
  End;
end;

//////////////////////////////////////////////////////////////////////////

Procedure CreateAllTimers;
Begin
    TimerAlphaPulse                := TTimerPulse.Create(nil);
    TimerAlphaPulse.Enabled        := False;
    TimerAlphaPulse.Resolution     := 50;
    TimerAlphaPulse.OnTimer        := TimerAlphaPulse.TimerEvent;
    TimerAlphaPulse.StopOrderAlpha := True;  // for the stoptelescope order
    TimerAlphaPulse.StopOrderDecli := True; // for the stoptelescope order
    TimerAlphaPulse.IsPulse        := False;

    TimerDecliPulse                := TTimerPulse.Create(nil);
    TimerDecliPulse.Enabled        := False;
    TimerDecliPulse.Resolution     := 50;
    TimerDecliPulse.OnTimer        := TimerDecliPulse.TimerEvent;
    TimerDecliPulse.StopOrderAlpha := False; // for the stoptelescope order
    TimerDecliPulse.StopOrderDecli := True;  // for the stoptelescope order
    TimerDecliPulse.IsPulse        := False;

    TimerRetardateur               := TTimerRetardateur.Create(nil);
    TimerRetardateur.Enabled       := False;
    TimerRetardateur.OnTimer       := TimerRetardateur.TimerEvent;

    TimerBacklash                  := TTimerBacklash.Create(nil);
    TimerBacklash.Enabled          := False;
    TimerBacklash.OnTimer          := TimerBacklash.TimerEvent;

    TimerPark                      := TTimerPark.Create(nil);
    TimerPark.Enabled              := False;
    TimerPark.OnTimer              := TimerPark.TimerEvent;
End;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Procedure FreeAllTimers;
Begin
 TimerBacklash   .Free;
 TimerDecliPulse .Free;
 TimerAlphaPulse .Free;
 TimerPark       .Free;
 TimerRetardateur.Free;
End;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure WriteToTrace(Data: string);
var Heure:string;
begin
  if TraceEnabled then
    Begin
      Heure:=TimeToStr(Now);
      if Form2.CheckBoxScroll.Checked then
      begin
        Form2.MemoTrace.Lines.Add(Heure+' '+Data);
      end
      else
      begin
        Form2.MemoTrace.Lines.beginupdate;
        Form2.MemoTrace.Lines.Add(Heure+' '+Data);
        Form2.MemoTrace.Lines.endupdate;
      end;

    End;
end;




///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Stops completely the telescope
// If AbleTo_Stop_All is false, leave it as it is.

function STOP_ALL_Telescope: Boolean;
Const
  procName='STOP_ALL_Telescope';
var
  astring : ShortString;
begin
  WriteToTrace('Stop All');
  Result := False;
  while IsAxisSlewing_BackLash(C_Alpha) do WaitMainthread(procName);
  astring := 'P' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0); // Commande Park pour AD
  sendcommand(astring, 0, 0);
  while IsAxisSlewing_BackLash(C_Delta) do WaitMainthread(procName);
  astring := 'R' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0); // Commande vitesse = 0 en DEC;
  sendcommand(astring, 0, 1);
  Result := True;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// A function that tell you if an axis is moving, but only for the point of vue
// MCMT

Function IsMCMTSlewing(Axis: integer): boolean;
Const
  procName='IsMCMTSlewing';

var
  RecBuff : array[0..7] of byte;
  SendBuff: array[0..3] of byte;
  abyte,
  numbyte,
  retry   : byte;
  NbOfBytesWrite,
  NbOfBytesRead : LongWord;
  deviceready   : integer ;
  HPort:THandle;
begin
  if not(SimulatorEnabled) then
  begin
    Result      := False;
    numbyte     := 2;
    SendBuff[0] := AxeZero + Axis;
    SendBuff[1] := 255;
    retry       := 3;
    result      := False;
    // Read a single byte from Interface
    Repeat
      FlushWriteRead(SendBuff, numbyte, NbOfBytesWrite, RecBuff, 1, NbOfBytesRead);
      abyte := RecBuff[0];
      retry := retry - 1;
    until (retry = 0) or (NbOfBytesRead <> 0);
    if (abyte=1) then deviceready := 1
                 else deviceready := 0;
    If (NbOfBytesRead=0) then raise Exception.Create('Erreur lecture état mouvement '+Version+', pas de réponse !');
    Result:=(deviceready=0); // 0 = pas de mouvements
  end
  else
    Result:=(DeviceReadySimulator(Axis)=0);
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function IsAxisSlewing_Backlash(Axis: integer): boolean;
begin
 result := IsMCMTSlewing(Axis) or TimerBacklash.Enabled;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Function GetMountPosEndPointing(Longitude, Ra_appDest, DE_appDest: Double)
  : Integer; stdcall;
Var
  AngleHoraire: Double;

Begin
  Result := 0;
  // 1:Result:=Mount_TUBE_EST_Orientation ;
  // 2:Result:=Mount_TUBE_WEST_Orientation;

  AngleHoraire := AH(Longitude, Ra_appDest, SpeedIntMCMT.GMT);

  If GerMountSetup.Monture_Allemande

  then
  begin
    If (AngleHoraire < +GerMountSetup.Angle_Horaire_Retournement) or
      (AngleHoraire >= Pi + GerMountSetup.Angle_Horaire_Retournement)

    then
      Result := 2 // Mount_TUBE_WEST_Orientation
    else
      Result := 1; // Mount_TUBE_EST_Orientation

  End;

  If GerMountSetup.Monture_FerACheval

  then
  begin
    If (AngleHoraire < +GerMountSetup.Angle_Horaire_Retournement) or
      (AngleHoraire >= -Pi + GerMountSetup.Angle_Horaire_Retournement)

    then
      Result := 2 // Mount_TUBE_WEST_Orientation
    else
      Result := 1; // Mount_TUBE_EST_Orientation

  End;

End;

/// ///////////////////////////////////////////////////////////////////////////
function Calibrate(Alpha, Delta: Double): boolean; stdcall;

var
  AlphaRaw,
  DeltaRaw: longInt;
begin
  Result := ERROR;
  If (IsAxisSlewing_Backlash(C_Alpha) = false) then
  begin
    If GerMountSetup.Monture_Allemande or GerMountSetup.Monture_FerACheval then
    begin

      // Cannot be put like that here because this can be asked during image
      // recentering for instance
      // Put something more intelligent...
      // ASK_FortelescopeOrientation(Nil);

      If TelescopeOuest then
      begin
        Delta := Pi - Delta;
        Alpha := Alpha + Pi;
      end;
    end;

    Remet2Pi(Alpha);
    ReadAlphaDeltaEncoder(AlphaRaw, DeltaRaw);

    SectionSTSTel.Enter;
    Try
      STSTel.AlphaRawPrevious := AlphaRaw;
      STSTel.DeltaRawPrevious := DeltaRaw;

      STSTel.AlphaCodeurInit := T_pi * frac(AlphaRaw / SpeedIntMCMT.Resol_AD);
      STSTel.DeltaCodeurInit := T_pi * frac(DeltaRaw / SpeedIntMCMT.Resol_DEC);
      STSTel.AlphaInit := Alpha;
      STSTel.DeltaInit := Delta;
      if (STSTel.DeltaInit < 0) then
        STSTel.DeltaInit := T_pi + STSTel.DeltaInit;

      STSTel.Alpha := Alpha;
      STSTel.Delta := Delta;

      STSTel.FirstTime := Now;
      STSTel.atime := Now;

    Finally
      SectionSTSTel.Leave;
    end;
    Result := NOERROR;
  end;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure ASK_FortelescopeOrientation(Latitude: Double);
var
  Form_Etat_Telescope: TForm_Etat_Telescope;
  Reg: TRegistry;
  ShowInterFace: boolean;
  Debut_Attente, tempo: longInt;

Const
  procName = 'ASK_FortelescopeOrientation';

begin
  Try
    ShowInterFace := True;

    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;

    If not(Reg.OpenKey('SOFTWARE\MCMT32\', false)) then
      Reg.OpenKey('SOFTWARE' + McmtXX, True);
    Try
      If ShowInterFace then
      begin
        Form_Etat_Telescope := TForm_Etat_Telescope.Create(Nil, Latitude);
        // XE3
        Try
          If TelescopeOuest then
          begin
            Logproc(procName, 'Telescope_Ouest');
            Form_Etat_Telescope.RadiogroupEtatTelescope.ItemIndex := 1;
            if GerMountSetup.Monture_Allemande then
            begin
              Form_Etat_Telescope.Image_Retourne_Allemande.Visible := false;
              Form_Etat_Telescope.Label_Tube_Est_Allemande.Visible := false;
              Form_Etat_Telescope.Image_NonRetourne_Allemande.Visible := True;
              Form_Etat_Telescope.Label_Tube_Ouest_Allemande.Visible := True;
            end
            else
            Begin
              Form_Etat_Telescope.Image_Retourne_FerACheval.Visible := false;
              Form_Etat_Telescope.Label_Tube_Sous_Le_Pole_FerACheval.
                Visible := false;
              Form_Etat_Telescope.Image_NonRetourne_FerACheval.Visible := True;
              Form_Etat_Telescope.Label_Pointage_Normal_FerACheval.
                Visible := True;
            End
          end
          else
          begin
            Logproc(procName, 'Telescope_Est');
            Form_Etat_Telescope.RadiogroupEtatTelescope.ItemIndex := 0;
            if GerMountSetup.Monture_Allemande then
            begin
              Form_Etat_Telescope.Image_Retourne_Allemande.Visible := True;
              Form_Etat_Telescope.Label_Tube_Est_Allemande.Visible := True;
              Form_Etat_Telescope.Image_NonRetourne_Allemande.Visible := false;
              Form_Etat_Telescope.Label_Tube_Ouest_Allemande.Visible := false;
            end
            else
            Begin
              Form_Etat_Telescope.Image_Retourne_FerACheval.Visible := True;
              Form_Etat_Telescope.Label_Tube_Sous_Le_Pole_FerACheval.
                Visible := True;
              Form_Etat_Telescope.Image_NonRetourne_FerACheval.Visible := false;
              Form_Etat_Telescope.Label_Pointage_Normal_FerACheval.
                Visible := false;
            End
          end;

          Form_Etat_Telescope.Top := Form_Etat_Telescope.Top -
            Form_Etat_Telescope.height;
          Form_Etat_Telescope.BringTofront;
          Form_Etat_Telescope.Show;

          Validation_OK := false;
          Debut_Attente := GetTickCount;
          while (not(Validation_OK) and (GetTickCount - Debut_Attente < 1000 *
            GerMountSetup.Delai_Decision)) do
          Begin
            tempo := GetTickCount;
            while GetTickCount - tempo < 100 do
              Application.ProcessMessages;
            Form_Etat_Telescope.label_CompteARebours.Caption :=
              IntToStr(GerMountSetup.Delai_Decision -
              trunc((GetTickCount - Debut_Attente) / 1000));
            Application.ProcessMessages;
          End;

          GerMountSetupSem.Enter;
          If (Form_Etat_Telescope.RadiogroupEtatTelescope.ItemIndex = 1) then
            GerMountSetup.TelescopeZenithOuest := True
          else
            GerMountSetup.TelescopeZenithOuest := false;
          GerMountSetupSem.Leave;

          // Save
          Reg.WriteBool('TelescopeZenithOuest', TelescopeOuest);
        Finally
          Form_Etat_Telescope.Free;
        End;
      end;

//      Reg.WriteInteger('Handle_Caller', Integer(Aowner));
      Reg.CloseKey;
    Finally
      Reg.Free;
    end;

  Except
    GerMountSetup.TelescopeZenithOuest := True;
    Logproc(procName, 'Telescope_Est');
  End;

end;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Procedure DisableTimers;
begin
  Try
  If (TimerAlphaPulse  <> nil) then TimerAlphaPulse.Enabled :=False;
  if (TimerDecliPulse  <> nil) then TimerDecliPulse.Enabled :=False;
  if (TimerBacklash    <> nil) then TimerBacklash.Enabled   :=False;
  if (TimerPark        <> nil) then TimerPark.Enabled       :=False;
  if (TimerRetardateur <> nil) then TimerRetardateur.Enabled:=False;
  Except
  End;
end;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


Function RetrieveDataAlphaDelta: boolean; // NOT IN VCL THREAD
var
  AlphaTemp, DeltaTemp  : Double;
  i                     : Integer;
  astring,receivestring : ShortString;
  SIGNE, MMSB,MSB, LSB, LLSB : Byte;
  tempPEC,temp,
  U                     : Double;
  DP                    : Double;
  DeltaA                : Double;
  DeltaD                : Double;
  Readtemp              : Integer;
  H__, M__, S__         : Double ;
  Index_PecC            : Integer;
  CasePanel_info_pec    : Integer;
  CasePecState2         : Integer;
  CasePecState1         : Integer;
  position_PECD         : Double ;
  delta_time            : Double ;
  AH_Park               : Double ;
  LTelescopeZenithOuest : Boolean;
  L_DeltaRaw            : Longint;
  L_AlphaRaw            : Longint;
  L_AlphaRawPrevious    : Longint;
  L_DeltaRawPrevious    : Longint;
  L_ATime               : Double ;
  L_Alpha               : Double ;
  L_Delta               : Double ;
  L_AlphaInit           : Double ;
  L_AlphaCodeurInit     : Double ;
  L_DeltaInit           : Double ;
  L_DeltaCodeurInit     : Double ;
  S_err                 : String ;
  Vit: array [0..3] of double;
  V:double;
Const
  procName='RetrieveDataAlphaDelta_Internal';

begin
  Try
    Try
      Result:=False;
      // delta_time = variation du temps sidéral depuis l'initialisation des codeurs.
      // En JOURS
      SectionSTSTel.Enter;
      Try
        STSTel.ATime      := Now;
        L_AlphaRawPrevious:= STSTel.AlphaRawPrevious;
        L_DeltaRawPrevious:= STSTel.DeltaRawPrevious;
        L_ATime           := STSTel.ATime;
        L_AlphaInit       := STSTel.AlphaInit;
        L_AlphaCodeurInit := STSTel.AlphaCodeurInit;
        L_DeltaInit       := STSTel.DeltaInit;
        L_DeltaCodeurInit := STSTel.DeltaCodeurInit;
        Delta_time        := (STSTel.ATime - STSTel.FirstTime) * OmegaSid; // Bug corrigé 06 MARS 08, bug de minuit!
      Finally
        SectionSTSTel.Leave;
      End;
      // Delta Time en RADIANS  2Pi = 23h56m04s Temps Local
      // Lecture encodeurs
      // AlphaRaw et DeltaRow : position des codeurs sur quatre octets, en micropas

      If (ReadAlphaDeltaEncoder(L_AlphaRaw,L_DeltaRaw)=_ERROR_) then //MCMT toujours branché?
      begin
        Try
          Result :=True ; // Important sinon mets un message generique
          DisableTimers ;
        Finally
          Raise Exception.create('Le port COM ne répond plus, pas de communication avec MCMT....');
        End;
      end;
      DeltaA:=L_AlphaRaw - L_AlphaRawPrevious;
      DeltaD:=L_DeltaRaw - L_DeltaRawPrevious;
      // Si c'est une différence trop forte
      // avec la dernière fois ==> erreur  (plus d'un dizième de tour, soit 36°)
      If (abs(DeltaA) > (SpeedIntMCMT.Resol_AD  / 10)) or
         (abs(DeltaD) > (SpeedIntMCMT.Resol_DEC / 10)) then
      begin
        If (ErrorCountRAce>5) then
        Begin
          DisableTimers ;
          S_err:=Format('Erreur critique de lecture des codeurs '+Version+', la différence entre 5 lectures consécutives est trop importante '+
                                       ':  RAi=%d,RAf=%d <-> DECi=%d,DECf=%d',
                                       [L_AlphaRawPrevious,L_AlphaRaw,L_DeltaRawPrevious,L_DeltaRaw]);
          Raise Exception.create(S_err)
        end
        else
        Begin
          Inc(ErrorCountRAce);
          Result        := True; // Ok fine BUT
          Exit;                  // Warning so Exit this proc for another trial
        End;
      End;
      ErrorCountRAce   := 0; // Ok reset le compteur
      Try (* Trace d'une erreur vue par René Roy, assez dur a voir...  *)
        // RA
        AlphaTemp := 0;
        AlphaTemp := T_pi * Frac(L_AlphaRaw / SpeedIntMCMT.Resol_AD);
        If not SpeedIntMCMT.Inv_Codeur_AD then
          L_Alpha := T_pi * Frac((L_AlphaInit + AlphaTemp - L_AlphaCodeurInit + delta_time) / T_pi)
        else
          L_Alpha := T_pi * Frac((L_AlphaInit - AlphaTemp + L_AlphaCodeurInit + delta_time) / T_pi);
        While (L_Alpha >= T_pi) do
          L_Alpha := L_Alpha - T_pi; // G_Alpha est alors compris dans [0,T_pi]
        // DEC
        DeltaTemp := 0;
        DeltaTemp := T_pi*Frac(L_DeltaRaw / SpeedIntMCMT.Resol_DEC);
      Except
        On E:Exception do
        begin
          S_err :=Format('Erreur de calcul : L_AlphaRaw=%d, '            +
                                           'SpeedIntMCMT.Resol_AD=%d, ' +
                                           'AlphaTemp=%1.5f, '          +
                                           'L_AlphaInit=%1.5f, '        +
                                           'L_AlphaCodeurInit=%1.5f, '  +
                                           'delta_time=%1.5f, '         +
                                           'L_Alpha=%1.5f, '            +

                                           'L_DeltaRaw=%d, '            +
                                           'SpeedIntMCMT.Resol_DEC=%d, '+
                                           'DeltaTemp=%1.5f, '          +
                                           'Exception=%s',

                          [L_AlphaRaw             ,
                           SpeedIntMCMT.Resol_AD  ,
                           AlphaTemp              ,
                           L_AlphaInit            ,
                           L_AlphaCodeurInit      ,
                           delta_time             ,
                           L_Alpha                ,

                           L_DeltaRaw             ,
                           SpeedIntMCMT.Resol_DEC ,
                           DeltaTemp              ,
                           E.Message              ]);

          raise Exception.Create(S_err);
        end;
      End;
      If SpeedIntMCMT.Inv_Codeur_DEC then
      begin
        L_Delta := L_DeltaInit + DeltaTemp - L_DeltaCodeurInit;
        Logproc(procName,'GDelta1 ' + FloatToStr(L_DeltaInit) + ' ' + FloatToStr(DeltaTemp)+ ' ' + FloatToStr(L_DeltaCodeurInit));
      end
      else
      begin
        L_Delta := -DeltaTemp + L_DeltaInit + L_DeltaCodeurInit;
        Logproc(procName,'GDelta2 ' + FloatToStr(L_DeltaInit) + ' ' + FloatToStr(DeltaTemp)+ ' ' + FloatToStr(L_DeltaCodeurInit));
      end;
      L_Delta := (T_pi) * frac(L_Delta / (T_pi));
      Remet2Pi(L_Delta);
      if (L_Delta >Pi_d_2) and (L_Delta <= 3*Pi_d_2)  then
      begin
        if GerMountSetup.Monture_Allemande or GerMountSetup.Monture_FerACheval
        then
          LTelescopeZenithOuest := True;
        L_Delta := Pi - L_Delta;
        L_Alpha := L_Alpha + Pi;
      end
      else
      begin
        if L_Delta >= (3 * Pi / 2) then L_Delta := L_Delta - T_pi;
        if GerMountSetup.Monture_Allemande or GerMountSetup.Monture_FerACheval then
        begin
          LTelescopeZenithOuest:=false;
          Logproc(procName,'Met à est');
        end;
      end;
      // Sauve l'etat du telescope
      if GerMountSetup.Monture_Allemande or GerMountSetup.Monture_FerACheval then
        WriteBoolToReg('TelescopeZenithOuest',LTelescopeZenithOuest);
      GerMountSetupSem.enter;
      GerMountSetup.TelescopeZenithOuest:=LTelescopeZenithOuest;
      GerMountSetupSem.Leave;
      Remet2Pi(L_Alpha);  // G_Alpha est alors compris dans [0;T_pi]
      FactVitesse:= SpeedIntMCMT.V_Guidage_AD;
      EcritLog(format('FactVitesse1:%5.4f',[FactVitesse]));
      EcritLog(format('fFactVitesse1:%5.4f',[fFactVitesse]));
      //AH_Park     := AH(long, G_Alpha, GMT);
      //GAlpha_Park := G_Alpha;
      //GDelta_Park := G_Delta;
      If Not IsAxisSlewing_BackLash(C_Alpha) then
      begin
       Logproc(procName,'No Slewing...');
       astring       := 'r' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
        receivestring := sendcommand(astring, 11, 0);
        If (receivestring<>'') then
          if (ord(receivestring[4]) <> 0) or (ord(receivestring[3]) <> 0) or
                            (ord(receivestring[2]) <> 0) or (ord(receivestring[1]) <> 0) then
          begin
            PECSection.Enter;
            Try
              Index_PecC     := ord(receivestring[5]);
              ExternalMCMT_PEC.PEC_Step   := ord(receivestring[7]) + 256 * ord(receivestring[6]);
              EcritLog(format('PEC_Step:%d',[ExternalMCMT_PEC.PEC_Step]));
              if not SpeedIntMCMT.Inv_Codeur_AD then
                ExternalMCMT_PEC.PEC_Step := SpeedIntMCMT.MPasParTour_DEC - ExternalMCMT_PEC.PEC_Step;
              fCodeurPEC:=ExternalMCMT_PEC.PEC_Step;
              EcritLog(format('fCodeurPEC:%d',[fCodeurPEC]));
              EcritLog(format('fCodeurPEC_Old:%d',[fCodeurPEC_Old]));

                PECSection.Enter;
                Try
                  if (fCodeurPEC < fCodeurPEC_Old) then
                    temp := fCodeurPEC + SpeedIntMCMT.MPasParTour_AD - fCodeurPEC_Old
                  else
                    temp := fCodeurPEC - fCodeurPEC_Old;
                  temp:= 3600 * (360 / Reduc_AD) * frac(temp / SpeedIntMCMT.MPasParTour_AD);
                  fCodeur_Arcsec := fCodeur_Arcsec + temp;
                  fCodeurPEC_Old           := fCodeurPEC;
                Finally
                  PECSection.Leave;
                End;
              EcritLog(format('SpeedIntMCMT.MPasParTour_AD:%d',[SpeedIntMCMT.MPasParTour_AD]));


            Finally
              PECSection.Leave;
            End;
            readtemp := 2 * (ord(receivestring[9]) + 256 * ord(receivestring[8]));
            if not SpeedIntMCMT.Inv_Codeur_AD then
              readtemp := SpeedIntMCMT.MPasParTour_DEC - readtemp;
          end;
          CasePanel_info_pec := (ord(receivestring[10 ]) and 15);
          CasePecState1      :=  ord(receivestring[10]);
          CasePecState2      :=  ord(receivestring[11]);
          temp := AH(Lieu.long, L_Alpha, SpeedIntMCMT.GMT) * 12 / pi;
          H__ := int(temp);
          M__ := int((abs(temp) - abs(H__)) * 60);
          S__ := 60 * frac((abs(temp) - abs(H__)) * 60);
          if fTrackingDemande<>fTrackingRate then
          begin
            fTrackingRate:=fTrackingDemande;
            if fTrackingRate=0 then
            begin
              if not(MCMT2021) then V := 80000000 / FactVitesse
              else V:= 150000000 / FactVitesse-1;
              MMSB :=HH(round(abs(V)));
              MSB  :=LH(round(abs(V)));
              LSB  :=HL(round(abs(V)));
              LLSB :=LL(round(abs(V)));
              SIGNE := 0;
              if (V>0) then SIGNE := 1;
              astring := 'R' + AnsiChar(MMSB) + AnsiChar(MSB) + AnsiChar(LSB) + AnsiChar(LLSB) + AnsiChar(SIGNE);
              sendcommand(astring, 0, 0);
            end;
          end;

          if ((KING_Activated) or (ExternalMCMT_PEC.Activated)or (fTrackingRate<>0)) and (IsAxisSlewing_BackLash(C_Alpha) = false) then
          begin
            if Now-StampCorrection>0.000009259 then // pas de correction si la derniere moins de 0.8s
            begin
              case fTrackingRate of
                1: FactVitesse:=FactVitesse*0.976331;
                2: FactVitesse:=FactVitesse*0.997274;
              end;
              StampCorrection:=Now;
              if King_Activated then
              begin
                FactVitesse := FactVitesse / getKingSpeedCorrection(AH_Park, L_Delta,Lieu.Lat);
                EcritLog(format('FactVitesse2:%5.4f',[FactVitesse]));
                Logproc(procName,Format('King Update : %1.10f',[FactVitesse]));
              end;
              if ExternalMCMT_PEC.Activated then
              begin
                PECSection.Enter;
                Try
                  position_PECD :=fPeriodeFondamentale * frac(ExternalMCMT_PEC.PEC_Step / SpeedIntMCMT.MPasParTour_DEC);
                  //EcritLog(format('%d',[ExternalMCMT_PEC.PEC_Step]));
                  // derivation de 15.041*t + A0*cos(2Pi*n0/Fondamentale*(X + Phi0))+
                  //                   A1*cos(2Pi*n1/Fondamentale*(X + Phi1))+
                  //                   A2*cos(2Pi*n2/Fondamentale*(X + Phi2))+
                  //                   A3*cos(2Pi*n3/Fondamentale*(X + Phi3))
                  // soit donc:
                  //  15.041
                  //  -A0*2Pi*n0/Fondamentale*sin(2Pi*n0/Fondamentale*(X + Phi0))*15.041
                  //  -A1*2Pi*n1/Fondamentale*sin(2Pi*n1/Fondamentale*(X + Phi1))*15.041
                  //  -A2*2Pi*n2/Fondamentale*sin(2Pi*n2/Fondamentale*(X + Phi2))*15.041
                  //  -A3*2Pi*n3/Fondamentale*sin(2Pi*n3/Fondamentale*(X + Phi3))*15.041
                  //  si DP=2Pi/Fondamentale
                  // soit donc:
                  //  *15.041
                  //  -15.041*DP*(A0*n0*sin(DP*n0(X + Phi0)+
                  //  15.041*A1*n1*sin(DP*n1(X + Phi1)+
                  //  15.041*A2*n2*sin(DP*n2(X + Phi2)+
                  //  15.041*A3*n3*sin(DP*n3(X + Phi2))
                  tempPEC := 0;
                  DP:=T_pi/fPeriodeFondamentale;
                  For i := 0 to MaxPECHarmos do
                  begin
                    if ExternalMCMT_PEC.Amplitude[i]=0 then continue;
                    //U:=DP*(A0*n0*sin(DP*(X + Phi0)+
                    //   A1*n1*sin(DP*n1*(X + Phi1)+
                    //   A2*n2*sin(DP*n2*(X + Phi2)+
                    //   A3*n3*sin(DP*n3*(X + Phi3))   c'est une portion de la vitesse de base 15.041

                    U := DP*ExternalMCMT_PEC.Amplitude[i]*ExternalMCMT_PEC.Ordre[i]*
                          sin(DP*ExternalMCMT_PEC.Ordre[i]*(position_PECD + ExternalMCMT_PEC.Phase[i]));
                    Vit[i]:=U;
                    tempPEC := tempPEC + U;
                  end;
                Finally
                  PECSection.Leave;
                End;
                //EcritLog(format('%2.6f , %2.6f , %2.6f , %2.6f',[Vit[0],Vit[1],Vit[2],Vit[3]]));
                // Sinus derivative is negative !
                // 1 is derivatif of X
                tempPEC := 1 - tempPEC;
                FactVitesse := FactVitesse * tempPEC;
                EcritLog(format('FactVitesse3:%5.4f',[FactVitesse]));
                EcritLog(format('fFactVitesse3:%5.4f',[fFactVitesse]));
              //EcritLog(format('Vitesse resultante:%2.6f',[SpeedIntMCMT.V_Guidage_AD/FactVitesse*15.04]));

              end;

              fFactVitesse:=SpeedIntMCMT.V_Guidage_AD/FactVitesse;
              EcritLog(format('FactVitesse4:%5.4f',[FactVitesse]));
              EcritLog(format('fFactVitesse4:%5.4f',[fFactVitesse]));
              EcritLog(format('SpeedIntMCMT.V_Guidage_AD:%',[SpeedIntMCMT.V_Guidage_AD]));
              if not(MCMT2021) then FactVitesse := 80000000 / FactVitesse
              else FactVitesse := 150000000 / FactVitesse-1;
              MMSB :=HH(round(abs(FactVitesse)));
              MSB  :=LH(round(abs(FactVitesse)));
              LSB  :=HL(round(abs(FactVitesse)));
              LLSB :=LL(round(abs(FactVitesse)));
              SIGNE := 0;
              if (FactVitesse>0) then SIGNE := 1;
              astring := 'R' + AnsiChar(MMSB) + AnsiChar(MSB) + AnsiChar(LSB) + AnsiChar(LLSB) + AnsiChar(SIGNE);
              sendcommand(astring, 0, 0);
            end; // KING_Activated ExternalMCMT_PEC.Activated
          end
          else fFactVitesse:=1;
      end; // RA moves
      SectionSTSTel.Enter;
      STSTel.Delta            := L_Delta;
      STSTel.Alpha            := L_Alpha;
      STSTel.AlphaRaw         := L_AlphaRaw;
      STSTel.DeltaRaw         := L_DeltaRaw;
      STSTel.AlphaPointage    := L_Alpha;
      STSTel.DeltaPointage    := L_Delta;
      STSTel.AlphaRawPrevious := L_AlphaRaw; // Previous data
      STSTel.DeltaRawPrevious := L_DeltaRaw;
      SectionSTSTel.Leave;
      Result        := True; // Ok fine
    Finally
    End;
  Except
    On E:Exception do
    begin
      Raise Exception.create('Erreur '+Version+', lecture périodique des codeurs -> '+E.Message);
    end;
  End;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function TelescopeOuest : boolean;
begin
  GerMountSetupSem.Enter;
  Result:=GerMountSetup.TelescopeZenithOuest;
  GerMountSetupSem.leave;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function ParkTel_at(AHPark, Dec2000: Double): Boolean;
var
  Accuracy  : Double;
  Reg       : TRegistry;
  AlphaPark : Double;

Const
  procName='ParkTel_at';

begin
  is_Parking := True;
  TimerPark.AngleHour := AHPark;
  TimerPark.Delta     := Dec2000;
  BackLash.Saved_Park := BackLash.Activated; // We desactivate backlash, but keep the state in mind
  BackLash.Activated  := False;

  AlphaPark:=CalculeTSL(Now+SpeedIntMCMT.GMT/24,Lieu.Long)-AHPark;
  Result   :=InitTelescopeSeeker(AlphaPark,Dec2000,Lieu.Lat,Lieu.Long,Accuracy);

  TimerPark.Interval := 1000;
  TimerPark.Flag     := 1;
  TimerPark.Enabled  := True;


  Reg         := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;

  if not (Reg.OpenKey('SOFTWARE\MCMT32\', False)) then
    Reg.OpenKey('SOFTWARE\MCMT32\', True);

  Reg.WriteFloat('Park_AH',  AHPark );
  Reg.WriteFloat('Park_Dec', Dec2000);

  Reg.CloseKey;
  Reg.Free;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function MoveOffsetDirectStep(AlphaDSteps, DeltaDSteps: Integer): Boolean;
// NE SUPPORTE Qu'une SEULE vitesse !

Const
  procName='MoveOffsetDirectStep';

var
  NumOfSteps: longint;
  astring   : ShortString;
  MMSB, MSB,
  LSB, LLSB : byte;
begin
  Try

  NumOfSteps := AlphaDSteps;

  if abs(NumOfSteps) > 0 then
  begin
    MMSB := (abs(NumOfSteps) shr 24) and $FF;
    MSB  := (abs(NumOfSteps) shr 16) and $FF;
    LSB  := (abs(NumOfSteps) shr 8 ) and $FF;
    LLSB :=  abs(NumOfSteps) and $FF;
    // Bit de signe
    if NumOfSteps < 0 then MMSB := MMSB or $80;

    while (IsAxisSlewing_BackLash(C_Alpha)) do WaitMainthread(procName);
    astring := 'p' + AnsiChar(MMSB) + AnsiChar(MSB) + AnsiChar(LSB) + AnsiChar(LLSB);
    sendcommand(astring, 0, 0);
  end;


  NumOfSteps := DeltaDSteps;

  if abs(NumOfSteps) > 0 then
  begin
    MMSB := (abs(NumOfSteps) shr 24) and $FF;
    MSB  := (abs(NumOfSteps) shr 16) and $FF;
    LSB  := (abs(NumOfSteps) shr 8)  and $FF;
    LLSB :=  abs(NumOfSteps) and $FF;
    // Bit de signe
    if NumOfSteps < 0 then MMSB := MMSB or $80;

    while (IsAxisSlewing_BackLash(C_Delta)) do WaitMainthread(procName);
    astring := 'p' + AnsiChar(MMSB) + AnsiChar(MSB) + AnsiChar(LSB) + AnsiChar(LLSB);
    sendcommand(astring, 0, 1);
  end;

  finally
  end;

  result := NOERROR;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function InitTelescopeSeeker(var Alpha, Delta, Latitude, Longitude,
  Accuracy: Double): boolean;
var
  MoveStepsAlpha, MoveStepsDelta        : Integer;

  AlphaDiff, DeltaDiff, DeltaDiffLat: Double;
  L_AlphaPointage,L_DeltaPointage       : Double ;
  Rayon_Pointage                        : Double ;

  // Test de retardement du mouvement delta
  // Montures allemandes et Fer à cheval

  Test: boolean;
  Ecart: Double;
  Omega_DEC_sur_Omega_AD: Double;
  LongitudeHoraire, AnglePolaire: Double;
  LongitudeHoraireCritiqueEst, AnglePolaireCritiqueEst: Double;
  LongitudeHoraireCritiqueOuest, AnglePolaireCritiqueOuest: Double;
  LongitudeHoraireLimiteEst_FerACheval: Double;
  LongitudeHoraireLimiteOuest_FerACheval: Double;
  AnglePolaireLimite_FerACheval: Double;
  Debut_Attente: longInt;
  tempo: longInt;
  Delai_Decision: Integer;
  Demande_de_Retournement: boolean;

const
  Code_ASCII_Touche_CTRL = 17;
  procName = 'InitTelescopeSeeker_DLL';
  Clignotement = 500;

Begin

  (* ALWAYS IN MAIN THREAD *)


  // Alpha     : RA Distination coordinates
  // Delta     : DEC Distination coordinates
  // Longitude : observation Longitude place coordinates
  // Latitude  : observation Latitude place coordinates
  // Accuracy  : Desired pointing accuracy

  if (GetAsyncKeyState(Code_ASCII_Touche_CTRL) < 0) and
    GerMountSetup.Retournement_Autorise
  // Test de la touche CTRL pour savoir si un retournement est demandé
  // et si les retournements sur ordre sont autorisés
  then
  begin
    Demande_de_Retournement := True;
    Logproc(procName, 'Demande_de_Retournement = True');
  end
  else
  begin
    Demande_de_Retournement := false;
    Logproc(procName, 'Demande_de_Retournement = False');
  end;

  LogEnterProc_DLL(procName);
  Logproc(procName, 'Alpha = ' + FloatToStr(Alpha) + ' ; Delta = ' +
    FloatToStr(Delta) + ' ; Latitude = ' + FloatToStr(Latitude) +
    ' ; Longitude = ' + FloatToStr(Longitude));

  SectionSTSTel.Enter;
  L_AlphaPointage := STSTel.AlphaPointage;
  L_DeltaPointage := STSTel.DeltaPointage;
  SectionSTSTel.Leave;

  // Par ce test, AlphaPointage et DeltaPointage sont déterminés
  if not RetrieveDataAlphaDelta then
  begin
    Result := false;
    Logproc(procName, 'End Slew with error!');
    Exit;
  end;

  Delai_Decision := GerMountSetup.Delai_Decision;
  GerMountSetup.AngleHoraire := AH(Longitude, Alpha, SpeedIntMCMT.GMT);
  // Angle horaire de la cible

  Logproc(procName, 'AH=' + FloatToStr(Longitude) + ' ' + FloatToStr(Alpha) +
    ' ' + FloatToStr(SpeedIntMCMT.GMT));
  Logproc(procName, 'Angle Horaire =' + FloatToStr(GerMountSetup.AngleHoraire));

  TimerRetardateur.DabordAlpha := false;
  TimerRetardateur.DabordDelta := false;
  TimerRetardateur.Declanchement := 0;
  // Rapport des vitesses
  Omega_DEC_sur_Omega_AD :=
    (SpeedIntMCMT.V_Point_R_DEC / SpeedIntMCMT.Resol_DEC) /
    (SpeedIntMCMT.V_Point_R_AD / SpeedIntMCMT.Resol_AD);

  // pour éviter les obstacles il faut tenir compte des vitesses angulaire
  // alpha et delta éventuellement différentes

  // *********************** Monture allemande ou Monture Fer-à-cheval  ********
  // ***************************************************************************

  if GerMountSetup.Monture_Allemande or GerMountSetup.Monture_FerACheval
  // Monture allemande ou Monture Fer-à-cheval
  then
  begin
    Lieu.Long := Longitude;
    CalculePositionMonture;

    if L_AlphaPointage - Alpha > Pi then
      L_AlphaPointage := L_AlphaPointage - T_pi;
    if L_AlphaPointage - Alpha < -Pi then
      L_AlphaPointage := L_AlphaPointage + T_pi;

    Rayon_Pointage := arccos(sin(Delta) * sin(L_DeltaPointage) + cos(Delta) *
      cos(L_DeltaPointage) * cos(L_AlphaPointage - Alpha));
    if L_AlphaPointage - Alpha > Pi then
      Rayon_Pointage := T_pi - Rayon_Pointage;
    Logproc(procName, 'Rayon de pointage = ' + FloatToStr(Rayon_Pointage));

    if GerMountSetup.Monture_Allemande then

    // *********************** Monture allemande ***************************
    // *********************************************************************

    begin // Monture_Allemande

      LongitudeHoraireCritiqueEst := -Pi_d_2 +
        GerMountSetup.Angle_horaire_critique_Est;
      LongitudeHoraireCritiqueOuest := +Pi_d_2 +
        GerMountSetup.Angle_horaire_critique_Ouest;
      AnglePolaireCritiqueEst := -Pi_d_2 * Sign(Lieu.Lat) +
        GerMountSetup.Declinaison_critique_Est;
      AnglePolaireCritiqueOuest := +Pi_d_2 * Sign(Lieu.Lat) -
        GerMountSetup.Declinaison_critique_Ouest;

      // test de pointage (avec ou sans retournement ?) ***********************
      // Ici on peut savoir si la monture va retourner

      if Demande_de_Retournement = false

      then // s'il ne s'agit pas d'un retournement sur ordre
      begin
        if (Rayon_Pointage > GerMountSetup.Rayon_minimal)

        then // si le retournement est permis
        begin
          // alors le test de retournement se fait par référence à
          // l'angle horaire de retournement au pointage déclaré dans le setup.
          if (GerMountSetup.AngleHoraire <
            GerMountSetup.Angle_Horaire_Retournement)

          then // le tube sera à l'Ouest du pied : non retourné
          begin
            Logproc(procName, 'Pointage dans l''état non retourné');
            LongitudeHoraire := GerMountSetup.AngleHoraire + Pi_d_2;
            if LongitudeHoraire > Pi then
              LongitudeHoraire := LongitudeHoraire - T_pi;
            AnglePolaire := Sign(Lieu.Lat) * Pi_d_2 - Delta;
          end

          else // le tube sera à l'Est du pied : retourné
          begin
            Logproc(procName, 'Pointage dans l''état retourné');
            LongitudeHoraire := GerMountSetup.AngleHoraire - Pi_d_2;
            if LongitudeHoraire < -Pi then
              LongitudeHoraire := LongitudeHoraire + T_pi;
            AnglePolaire := Delta - Sign(Lieu.Lat) * Pi_d_2;
          end
        end

        else // si le retournement n'est pas permis
        begin
          if TelescopeOuest

          then
          // Si le tube est à l'Ouest, non retourné, il doit rester à l'Ouest
          begin
            LongitudeHoraire := GerMountSetup.AngleHoraire + Pi_d_2;
            if LongitudeHoraire > Pi then
              LongitudeHoraire := LongitudeHoraire - T_pi;
            AnglePolaire := Sign(Lieu.Lat) * Pi_d_2 - Delta;
          end

          else
          // Si le tube est à l'Est (retourné), il doit rester à l'Est
          begin
            LongitudeHoraire := GerMountSetup.AngleHoraire - Pi_d_2;
            if LongitudeHoraire < -Pi then
              LongitudeHoraire := LongitudeHoraire + T_pi;
            AnglePolaire := Delta - Sign(Lieu.Lat) * Pi_d_2;
          end
        end;

        // si la cible est en zone critique, alors l'état du télescope
        // (retourné ou non retourné) doit être permuté.
        if ((LongitudeHoraire > LongitudeHoraireCritiqueOuest) and
          (Sign(Lieu.Lat) * AnglePolaire < Sign(Lieu.Lat) *
          AnglePolaireCritiqueOuest))
        // si la cible est en zone critique Ouest
          or ((LongitudeHoraire < LongitudeHoraireCritiqueEst) and
          (Sign(Lieu.Lat) * AnglePolaire > Sign(Lieu.Lat) *
          AnglePolaireCritiqueEst))
        // ou si la cible est en zone critique Est

        then // retournement
        begin
          Logproc(procName, 'Echec du pointage de proximité -> retournement');
          LongitudeHoraire := LongitudeHoraire - Pi;
          if LongitudeHoraire < -Pi then
            LongitudeHoraire := LongitudeHoraire + T_pi;
          AnglePolaire := -AnglePolaire;
          Demande_de_Retournement := True
        end

        else
        begin
          Logproc(procName, 'Pointage de proximité réussi sans retournement');
        end;
      end
      // fin de test de pointage sans retournement sur ordre *************
      // Préparation du retournement sur ordre *******************************

      else // Si l'on a appuyé simultanément sur la touche CTRL
      // et que le Retournement sur ordre est autorisé
      // c'est-à-dire : s'il s'agit d'un ordre de retournement

      begin
        if not(is_Parking)
        // et que l'on ne se trouve pas en procédure de Park
        then
        begin
          Logproc(procName, 'tentative de retournement sur ordre');
          AnglePolaire := -GerMountSetup.AnglePolairePointage;
          if TelescopeOuest

          then
            LongitudeHoraire := GerMountSetup.LongitudeHorairePointage - Pi

          else
            LongitudeHoraire := GerMountSetup.LongitudeHorairePointage + Pi;

          // il est impératif de quitter la section critique,
          // sinon cela produit tôt ou tard un plantage général de prism

          if ((Sign(Lieu.Lat) * AnglePolaire > -Pi_d_2 + Sign(Lieu.Lat) *
            GerMountSetup.Declinaison_critique_Est) and
            (LongitudeHoraire < -Pi_d_2 +
            GerMountSetup.Angle_horaire_critique_Est)) or
            ((Sign(Lieu.Lat) * AnglePolaire < +Pi_d_2 - Sign(Lieu.Lat) *
            GerMountSetup.Declinaison_critique_Ouest) and
            (LongitudeHoraire > +Pi_d_2 +
            GerMountSetup.Angle_horaire_critique_Ouest))

          then // pointage impossible
          begin
            Logproc(procName, 'Feu rouge pour le retournement sur ordre');
            Form_FeuRouge := TForm_FeuRouge.Create(nil);
            Form_FeuRouge.Show;
            Daccord_Renoncer := false;
            Daccord_Perseverer := false;
            Debut_Attente := GetTickCount;
            while (not(Daccord_Renoncer) and not(Daccord_Perseverer) and
              (GetTickCount - Debut_Attente < 1000 * Delai_Decision)) do
            Begin
              tempo := GetTickCount;
              while GetTickCount - tempo < Clignotement do
                Application.ProcessMessages;
              Form_FeuRouge.label_CompteARebours.Caption :=
                IntToStr(Delai_Decision -
                trunc((GetTickCount - Debut_Attente) / 1000));
              Form_FeuRouge.Image_FeuRouge.Visible :=
                not(Form_FeuRouge.Image_FeuRouge.Visible);
              Application.ProcessMessages;
            End;
            if (GetTickCount - Debut_Attente >= 1000 * Delai_Decision) then
              Daccord_Renoncer := True;
            if Daccord_Renoncer then
            begin
              Logproc(procName, 'Retournement sur ordre : sage renoncement');
              Result := True;
              Form_FeuRouge.Free;
              Form_FeuRouge := Nil;
              Exit; { c'est plus sage en effet }
            end;
            Form_FeuRouge.Free;
            Form_FeuRouge := Nil;
            Logproc(procName,
              'Retournement sur ordre : "perseverare diabolicum"');
          end

          else

          begin // retournement sans problème
            Logproc(procName, 'Feu vert pour le retournement sur ordre');
            Form_FeuVert := TForm_FeuVert.Create(nil);
            Form_FeuVert.Show;
            Daccord_Confirmer := false;
            Daccord_Annuler := false;
            Debut_Attente := GetTickCount;
            while (not(Daccord_Confirmer) and not(Daccord_Annuler) and
              (GetTickCount - Debut_Attente < 1000 * Delai_Decision)) do
            Begin
              tempo := GetTickCount;
              while GetTickCount - tempo < Clignotement do
                Application.ProcessMessages;
              Form_FeuVert.label_CompteARebours.Caption :=
                IntToStr(Delai_Decision -
                trunc((GetTickCount - Debut_Attente) / 1000));
              Form_FeuVert.Image_FeuVert.Visible :=
                not(Form_FeuVert.Image_FeuVert.Visible);
              Application.ProcessMessages;
            End;
            if (GetTickCount - Debut_Attente >= 1000 * Delai_Decision) then
              Daccord_Confirmer := True;
            if not(Daccord_Confirmer) then
            begin
              Logproc(procName, 'Feu vert pour le retournement sur ordre');
              Result := True;
              Form_FeuVert.Free;
              Form_FeuVert := Nil;
              Exit;
            end;
            Form_FeuVert.Free;
            Form_FeuVert := Nil;
            Logproc(procName, 'Confirmation du retournement sur ordre');
          end;

        end;

      end;
      // fin de préparation du retournement sur ordre  *******

      AlphaDiff := LongitudeHoraire - GerMountSetup.LongitudeHorairePointage;
      DeltaDiff := AnglePolaire - GerMountSetup.AnglePolairePointage;
      DeltaDiffLat := DeltaDiff * Sign(Lieu.Lat);


      // réglage des timers **************************************************

      // dans certains cas il est impératif de commencer par dégager le
      // télescope pour un mouvement sur un seul axe : soit alpha, soit delta

      // premier test : Dégagement de la zone des positions basses Est #########
      // -----------------------------------------------------------------------
      if abs(AnglePolaireCritiqueEst) < abs(GerMountSetup.AnglePolairePointage)
      then
        Ecart := abs(AnglePolaireCritiqueEst -
          GerMountSetup.AnglePolairePointage) / Omega_DEC_sur_Omega_AD
      else
        Ecart := 0;

      // Si le télescope se trouve dans la zone des positions basses Est,
      // (cela ne peut se produire qu'àprès un retournement sur ordre)
      if (GerMountSetup.LongitudeHorairePointage < LongitudeHoraireCritiqueEst -
        Ecart) and (LongitudeHoraire > LongitudeHoraireCritiqueEst)

      then
      // alors il faut impérativement le dégager de cette position scabreuse
      // en tournant en alpha dans le sens horaire
      // avant de déclancher le mouvement delta,
      // ceci afin d'éviter de traverser la zone critique Est
      begin
        Logproc(procName,
          'Pointage précédé d''une sortie des positions basses Est');
        TimerRetardateur.DabordAlpha := True;
        TimerRetardateur.Declanchement := LongitudeHoraireCritiqueEst - Ecart
      end;

      // Deuxième test : Pénétration dans la zone des positions basses Est #####
      // -----------------------------------------------------------------------
      if abs(AnglePolaireCritiqueEst) < abs(AnglePolaire) //
      then
        Ecart := abs(AnglePolaireCritiqueEst - AnglePolaire) /
          Omega_DEC_sur_Omega_AD
      else
        Ecart := 0;

      // Si la cible se trouve dans la zone des positions basses Est,
      if (GerMountSetup.LongitudeHorairePointage > LongitudeHoraireCritiqueEst)
        and (LongitudeHoraire < LongitudeHoraireCritiqueEst - Ecart)
      // et que le mouvement delta est décroissant (hémisphère sud : croissant)
        and (DeltaDiffLat < 0)

      then
      // alors, il faut limiter le temps de fonctionnement simultané
      // des deux moteurs.
      begin
        Logproc(procName,
          'Pointage pénétrant dans la zone des positions basses Est');

        // Si le télescope se trouve trop près de la zone critique Est
        if GerMountSetup.LongitudeHorairePointage - LongitudeHoraireCritiqueEst
          + Ecart < -DeltaDiffLat / Omega_DEC_sur_Omega_AD

        then
        // alors il faut d'abord se rapprocher de l'équateur par un mouvement
        // préalable en delta, en retardant le déclanchement du moteur alpha
        begin
          TimerRetardateur.DabordDelta := True;
          TimerRetardateur.Declanchement := AnglePolaire + Sign(Lieu.Lat) *
            Omega_DEC_sur_Omega_AD * (GerMountSetup.LongitudeHorairePointage -
            LongitudeHoraireCritiqueEst + Ecart)
        end
        else
        // Sinon, au contraire, le retardement du déclanchement delta
        // permet d'éviter de pointer sous l'horizon
        begin
          TimerRetardateur.DabordAlpha := True;
          TimerRetardateur.Declanchement := LongitudeHoraireCritiqueEst -
            (DeltaDiffLat + Ecart) / Omega_DEC_sur_Omega_AD
        end;
      end;

      // Troisième test : Dégagement de la zone des positions basses Ouest #####
      // -----------------------------------------------------------------------
      if abs(AnglePolaireCritiqueOuest) <
        abs(GerMountSetup.AnglePolairePointage) //
      then
        Ecart := abs(AnglePolaireCritiqueOuest -
          GerMountSetup.AnglePolairePointage) / Omega_DEC_sur_Omega_AD
      else
        Ecart := 0;

      // Si le télescope se trouve dans la zone des positions basses Ouest
      // (cela peut se produire soit àprès un retournement sur ordre,
      // soit tout simplement du fait de la poursuite horaire)
      if (GerMountSetup.LongitudeHorairePointage > LongitudeHoraireCritiqueOuest
        + Ecart) and (LongitudeHoraire < LongitudeHoraireCritiqueOuest)

      then
      // alors il faut impérativement le dégager de cette position scabreuse
      // en tournant en alpha dans le sens direct (anti horaire)
      // avant de déclancher le mouvement delta,
      // ceci afin d'éviter de traverser la zone critique Ouest
      begin
        Logproc(procName,
          'Pointage précédé d''une sortie des positions basses Ouest');
        TimerRetardateur.DabordAlpha := True;
        TimerRetardateur.Declanchement := LongitudeHoraireCritiqueOuest + Ecart
      end;

      // Quatrième test : Pénétration dans la zone des positions basses Ouest ##
      // -----------------------------------------------------------------------
      if abs(AnglePolaireCritiqueOuest) < abs(AnglePolaire) //
      then
        Ecart := abs(AnglePolaireCritiqueOuest - AnglePolaire) /
          Omega_DEC_sur_Omega_AD
      else
        Ecart := 0;

      // Si la cible se trouve dans la zone des positions basses Ouest,
      if (GerMountSetup.LongitudeHorairePointage <
        LongitudeHoraireCritiqueOuest) and
        (LongitudeHoraire > LongitudeHoraireCritiqueOuest + Ecart)
      // et que le mouvement delta est croissant (hémisphère sud : décroissant)
        and (DeltaDiffLat > 0)

      then
      // alors, il faut limiter le temps de fonctionnement simultané
      // des deux moteurs.
      begin
        Logproc(procName,
          'Pointage pénétrant dans la zone des positions basses Ouest');

        // Si le télescope se trouve trop près de la zone critique Ouest
        if (LongitudeHoraireCritiqueOuest -
          GerMountSetup.LongitudeHorairePointage + Ecart < DeltaDiffLat /
          Omega_DEC_sur_Omega_AD)

        then
        // alors il faut d'abord se rapprocher de l'équateur par un mouvement
        // préalable en delta, en retardant le déclanchement du moteur alpha
        begin
          TimerRetardateur.DabordDelta := True;
          TimerRetardateur.Declanchement := AnglePolaire - Sign(Lieu.Lat) *
            Omega_DEC_sur_Omega_AD *
            (LongitudeHoraireCritiqueOuest -
            GerMountSetup.LongitudeHorairePointage + Ecart)
        end

        else
        // Sinon, au contraire, le retardement du déclanchement delta
        // permet d'éviter de pointer sous l'horizon
        begin
          TimerRetardateur.DabordAlpha := True;
          TimerRetardateur.Declanchement := LongitudeHoraireCritiqueOuest -
            (DeltaDiffLat - Ecart) / Omega_DEC_sur_Omega_AD
        end;
      end;

      // Cinquième test : évitement de l'horizon ###############################
      // -----------------------------------------------------------------------
      // Si le télescope se rapproche de l'horizon
      if (TelescopeOuest xor (DeltaDiffLat < 0))
      // et qu'il est possible de retarder le déclanchement delta
        and (abs(AlphaDiff) > abs(DeltaDiff) / Omega_DEC_sur_Omega_AD)

      then
      // alors on commence par le mouvement alpha seul
      // ce qui permet d'éviter le passage éventuel sous l'horizon
      begin
        Logproc(procName,
          'Pointage avec retardement maximal du mouvement en déclinaison');
        TimerRetardateur.DabordAlpha := True;
        TimerRetardateur.Declanchement := LongitudeHoraire - Sign(AlphaDiff) *
          abs(DeltaDiff) / Omega_DEC_sur_Omega_AD;
      end;

      // fin de réglage des timers ********************************************

    end // Monture_Allemande

    else

    // *********************** Monture Fer à cheval **************************
    // ***********************************************************************

    begin // Monture Fer à cheval

      LongitudeHoraireLimiteEst_FerACheval := +Pi_d_2 +
        GerMountSetup.AngleHoraireLimiteEst_FerACheval;
      LongitudeHoraireLimiteOuest_FerACheval := +Pi_d_2 +
        GerMountSetup.AngleHoraireLimiteOuest_FerACheval;
      AnglePolaireLimite_FerACheval := -Pi_d_2 * Sign(Lieu.Lat) +
        GerMountSetup.DeclinaisonLimite_FerACheval;

      // test de pointage (avec ou sans retournement ?) ***********************
      // Ici on peut savoir si la monture va retourner

      if Demande_de_Retournement = false
      // test de la touche CONTRÔLE

      then // s'il ne s'agit pas d'un retournement sur ordre
      begin
        if (Rayon_Pointage > GerMountSetup.Rayon_minimal)

        then // il ne s'agit pas d'un pointage de proximité et donc
        // /    le retournement est permis
        begin
          // alors le test de retournement se fait ou non par référence à
          // l'anticipation de retournement au pointage déclarée dans le setup.
          if (GerMountSetup.AngleHoraire <
            GerMountSetup.Angle_Horaire_Retournement) and
            (GerMountSetup.AngleHoraire > -Pi +
            GerMountSetup.Angle_Horaire_Retournement)

          then // le tube sera pointé dans l'état non retourné
          begin
            Logproc(procName, 'Pointage dans l''état non retourné');
            LongitudeHoraire := GerMountSetup.AngleHoraire + Pi_d_2;
            // -Pi/2 < LongitudeHoraire < +3*Pi/2
            AnglePolaire := Sign(Lieu.Lat) * Pi_d_2 - Delta;
          end

          else // le tube sera pointé dans l'état retourné
          begin
            Logproc(procName, 'Pointage dans l''état retourné');
            LongitudeHoraire := GerMountSetup.AngleHoraire - Pi_d_2;
            // -3*Pi/2 < LongitudeHoraire < +Pi/2
            if LongitudeHoraire < -Pi_d_2 then
              LongitudeHoraire := LongitudeHoraire + T_pi;
            // -Pi/2 < LongitudeHoraire < +3*Pi/2
            AnglePolaire := Delta - Sign(Lieu.Lat) * Pi_d_2;
          end
        end

        else // il s'agit d'un pointage de proximité et donc
        // /    on essaie de pointer sans retournement
        begin
          if TelescopeOuest

          then // Si le tube est non retourné, il doit le rester
          begin
            LongitudeHoraire := GerMountSetup.AngleHoraire + Pi_d_2;
            // -Pi/2 < LongitudeHoraire < +3*Pi/2
            AnglePolaire := Sign(Lieu.Lat) * Pi_d_2 - Delta;
          end

          else // Si le tube est retourné, il doit le rester
          begin
            LongitudeHoraire := GerMountSetup.AngleHoraire - Pi_d_2;
            // -3*Pi/2 < LongitudeHoraire < +Pi/2
            if LongitudeHoraire < -Pi_d_2 then
              LongitudeHoraire := LongitudeHoraire + T_pi;
            // -Pi/2 < LongitudeHoraire < +3*Pi/2
            AnglePolaire := Delta - Sign(Lieu.Lat) * Pi_d_2;
          end;

          // si la cible est en zone interdite, alors l'état du télescope
          // (retourné ou non retourné) doit être permuté.
          if (LongitudeHoraire > LongitudeHoraireLimiteOuest_FerACheval)
          // si la cible est en zone interdite Ouest
            or (LongitudeHoraire < LongitudeHoraireLimiteEst_FerACheval)
          // ou si la cible est en zone interdite Est
            or (Sign(Lieu.Lat) * AnglePolaire < Sign(Lieu.Lat) *
            AnglePolaireLimite_FerACheval)
          // ou trop près du pôle

          then // Alors retournement
          begin
            Logproc(procName, 'Echec du pointage de proximité -> retournement');
            LongitudeHoraire := LongitudeHoraire - Pi;
            if LongitudeHoraire < -Pi_d_2 then
              LongitudeHoraire := LongitudeHoraire + T_pi;
            AnglePolaire := -AnglePolaire;
            Demande_de_Retournement := True
          end

          else
          begin
            Logproc(procName, 'Pointage de proximité réussi sans retournement');
          end;
        end;
      end
      // fin de test de pointage sans retournement sur ordre *************

      else // Si l'on a appuyé simultanément sur la touche CTRL
      // et que le Retournement sur ordre est autorisé
      // c'est-à-dire : s'il s'agit d'un ordre de retournement
      begin
        if not(is_Parking)

        then // et que l'on ne se trouve pas en procédure de Park
        begin
          Logproc(procName, 'tentative de retournement sur ordre');
          AnglePolaire := -GerMountSetup.AnglePolairePointage;
          if GerMountSetup.LongitudeHorairePointage < Pi_d_2 //
          then
            LongitudeHoraire := GerMountSetup.LongitudeHorairePointage + Pi
          else
            LongitudeHoraire := GerMountSetup.LongitudeHorairePointage - Pi;

          (* il est impératif de quitter la section critique,
            sinon cela produit tôt ou tard un plantage général de prism *)

          if (LongitudeHoraire > LongitudeHoraireLimiteOuest_FerACheval)
          // si la cible est en zone interdite Ouest
            or (LongitudeHoraire < LongitudeHoraireLimiteEst_FerACheval)
          // ou si la cible est en zone interdite Est
            or (Sign(Lieu.Lat) * AnglePolaire < Sign(Lieu.Lat) *
            AnglePolaireLimite_FerACheval)
          // ou trop près du pôle

          then
          begin // pointage impossible
            Logproc(procName, 'Feu rouge pour le retournement sur ordre');
            Form_FeuRouge := TForm_FeuRouge.Create(nil);
            Form_FeuRouge.Show;
            Daccord_Renoncer := false;
            Daccord_Perseverer := false;
            Debut_Attente := GetTickCount;
            while (not(Daccord_Renoncer) and not(Daccord_Perseverer) and
              (GetTickCount - Debut_Attente < 1000 * Delai_Decision)) do
            Begin
              tempo := GetTickCount;
              while GetTickCount - tempo < Clignotement do
                Application.ProcessMessages;
              Form_FeuRouge.label_CompteARebours.Caption :=
                IntToStr(Delai_Decision -
                trunc((GetTickCount - Debut_Attente) / 1000));
              Form_FeuRouge.Image_FeuRouge.Visible :=
                not(Form_FeuRouge.Image_FeuRouge.Visible);
              Application.ProcessMessages;
            End;
            if (GetTickCount - Debut_Attente >= 1000 * Delai_Decision) then
              Daccord_Renoncer := True;
            if Daccord_Renoncer then
            begin
              Logproc(procName, 'Retournement sur ordre : sage renoncement');
              Result := True;
              Form_FeuRouge.Free;
              Form_FeuRouge := Nil;
              Exit;
              { c'est plus sage en effet }
            end;
            Form_FeuRouge.Free;
            Form_FeuRouge := Nil;
            Logproc(procName,
              'Retournement sur ordre : "perseverare diabolicum"');

          end

          else

          begin // retournement sans problème
            Logproc(procName, 'Feu vert pour le retournement sur ordre');
            Form_FeuVert := TForm_FeuVert.Create(nil);
            Form_FeuVert.Show;
            Daccord_Confirmer := false;
            Daccord_Annuler := false;
            Debut_Attente := GetTickCount;
            while (not(Daccord_Confirmer) and not(Daccord_Annuler) and
              (GetTickCount - Debut_Attente < 1000 * Delai_Decision)) do
            Begin
              tempo := GetTickCount;
              while GetTickCount - tempo < Clignotement do
                Application.ProcessMessages;
              Form_FeuVert.label_CompteARebours.Caption :=
                IntToStr(Delai_Decision -
                trunc((GetTickCount - Debut_Attente) / 1000));
              Form_FeuVert.Image_FeuVert.Visible :=
                not(Form_FeuVert.Image_FeuVert.Visible);
              Application.ProcessMessages;
            End;
            if (GetTickCount - Debut_Attente >= 1000 * Delai_Decision) then
              Daccord_Confirmer := True;
            if not(Daccord_Confirmer) then
            begin
              Logproc(procName, 'Annulation du retournement sur ordre');
              Result := True;
              Form_FeuVert.Free;
              Form_FeuVert := Nil;
              Exit;
            end;
            Form_FeuVert.Free;
            Form_FeuVert := Nil;
            Logproc(procName, 'Confirmation du retournement sur ordre');
          end;

        end

      end;
      // fin de préparation du retournement sur ordre  *******

      if Sign(Lieu.Lat) * AnglePolaire < Sign(Lieu.Lat) *
        AnglePolaireLimite_FerACheval

      then // Si, après retournement, on est trop loin du pôle
      begin // pointage impossible
        Logproc(procName, 'Feu rouge : trop bas sous le pôle');
        Form_FeuRouge := TForm_FeuRouge.Create(nil);
        Form_FeuRouge.Show;
        Daccord_Renoncer := false;
        Daccord_Perseverer := false;
        Debut_Attente := GetTickCount;
        while (not(Daccord_Renoncer) and not(Daccord_Perseverer) and
          (GetTickCount - Debut_Attente < 1000 * Delai_Decision)) do
        Begin
          tempo := GetTickCount;
          while GetTickCount - tempo < Clignotement do
            Application.ProcessMessages;
          Form_FeuRouge.label_CompteARebours.Caption :=
            IntToStr(Delai_Decision -
            trunc((GetTickCount - Debut_Attente) / 1000));
          Form_FeuRouge.Image_FeuRouge.Visible :=
            not(Form_FeuRouge.Image_FeuRouge.Visible);
          Application.ProcessMessages;
        End;
        if (GetTickCount - Debut_Attente >= 1000 * Delai_Decision) then
          Daccord_Renoncer := True;
        if Daccord_Renoncer then
        begin
          Logproc(procName,
            'Pointage trop bas sous le pôle : sage renoncement');
          Result := True;
          Form_FeuRouge.Free;
          Form_FeuRouge := Nil;
          Exit;
          { c'est plus sage en effet }
        end;
        Logproc(procName,
          'Pointage trop bas sous le pôle : "perseverarer diabolicum"');
        Form_FeuRouge.Free;
        Form_FeuRouge := Nil;
      end;

      // Test préalable : passage retourné de l'extrême Est à l'extrême Ouest ##
      // -----------------------------------------------------------------------
      CalculePositionMonture;
      // Si la position courante et la position cible sont de part et d'autre
      // du méridien,
      if ((GerMountSetup.LongitudeHorairePointage > Pi_d_2)
        xor (LongitudeHoraire > Pi_d_2))
      // et que la position courante est plus basse
      // que la distance entre l'horizon et le Pôle,
        and (GerMountSetup.AnglePolairePointage * Sign(Lieu.Lat) <
        -Lieu.Lat * Sign(Lieu.Lat))
      // et qu'il en est de même pour la position cible,
        and (AnglePolaire * Sign(Lieu.Lat) < -Lieu.Lat *
        Sign(Lieu.Lat))

      then
      (* alors on commence par remonter le tube jusqu'à la distance
        entre l'horizon et le Pôle.
        Sinon le tube riquerait de flirter avec l'horizon, voire de pointer
        sous l'horizon. *)

      begin
        Logproc(procName, 'Pointage de l''extrême Ouest à l''extrême Est');
        MoveStepsDelta :=
          -round(SpeedIntMCMT.Resol_DEC * (GerMountSetup.AnglePolairePointage +
          Lieu.Lat) / T_pi);
        TelescopeMoveAxe(MoveStepsDelta, C_Delta);
        while IsMCMTSlewing(C_Delta) do
          WaitMainthread(procName);;
        CalculePositionMonture;
      end;

      AlphaDiff := LongitudeHoraire - GerMountSetup.LongitudeHorairePointage;

      if AlphaDiff > Pi then
        AlphaDiff := AlphaDiff - T_pi;

      if AlphaDiff < -Pi then
        AlphaDiff := AlphaDiff + T_pi;

      if Demande_de_Retournement //
      // test indispensable,
      // sinon le retournement dans le sens anti horaire tourne à l'envers
      then
      begin
        if LongitudeHoraire < Pi_d_2 //
        then
          AlphaDiff := -Pi
        else
          AlphaDiff := +Pi
      end;

      DeltaDiff := AnglePolaire - GerMountSetup.AnglePolairePointage;
      DeltaDiffLat := DeltaDiff * Sign(Lieu.Lat);

      // réglage des timers **************************************************

      // dans certains cas il est impératif de commencer par dégager le
      // télescope pour un mouvement sur l'axe alpha.

      Ecart := abs(DeltaDiff) / Omega_DEC_sur_Omega_AD;
      // Si l'écart, toujours positif, est suffisant pour le faire
      if Ecart < abs(AlphaDiff)

      then
      begin

        // Deuxième test : évitement de l'horizon télescope retourné ###########
        // ---------------------------------------------------------------------
        // Si l'angle polaire de la cible est négatif (hémisphère sud : positif)
        if (Sign(Lieu.Lat) * AnglePolaire < 0)
        // et dans un mouvement décroissant (hémisphère sud : croissant),
          and (DeltaDiffLat < 0)
        (* il faut déclancher le mouvement alpha d'abord
          afin d'éviter de pointer sous l'horizon *)

        then
        begin
          Logproc(procName, 'Pointage retourné se rapprochant de l''horizon');
          TimerRetardateur.DabordAlpha := True;
          if AlphaDiff > 0 //
          then
            TimerRetardateur.Declanchement := LongitudeHoraire - Ecart
          else
            TimerRetardateur.Declanchement := LongitudeHoraire + Ecart
        end;

        // troisième test : évitement de l'horizon télescope non retourné ######
        // ---------------------------------------------------------------------
        // L'angle polaire en cours étant positif (hémisphère sud <0),
        if (Sign(Lieu.Lat) * GerMountSetup.AnglePolairePointage > 0)
        // va-t-il croître ? (hémisphère sud : décroître)
          and (DeltaDiffLat > 0)

        then
        (* alors il faut déclancher le mouvement alpha d'abord
          afin d'éviter de pointer sous l'horizon *)

        begin
          Logproc(procName,
            'Pointage non retourné se rapprochant de l''horizon');
          TimerRetardateur.DabordAlpha := True;
          if LongitudeHoraire > GerMountSetup.LongitudeHorairePointage //
          then
            TimerRetardateur.Declanchement := LongitudeHoraire - Ecart
          else
            TimerRetardateur.Declanchement := LongitudeHoraire + Ecart
        end;
      end; // fin de réglage des timers ***************************************

    end // Monture Fer à cheval

  end // Monture Allemande ou Monture Fer-à-cheval
  // *********************** Monture à fourche *********************************
  // ***************************************************************************
  else

  begin // Monture à fourche

    if ((GerMountSetup.Declinaison_Polaire_Limite<0) and (Delta < GerMountSetup.Declinaison_Polaire_Limite)) or
       ((GerMountSetup.Declinaison_Polaire_Limite>0) and (Delta > GerMountSetup.Declinaison_Polaire_Limite))
    then
    begin // pointage impossible
    showmessage('Le régla de la déclinaison a-t-il été fait???');
      Form_FeuRouge := TForm_FeuRouge.Create(nil);
      Form_FeuRouge.Show;
      Daccord_Renoncer := false;
      Daccord_Perseverer := false;
      Debut_Attente := GetTickCount;
      while (not(Daccord_Renoncer) and not(Daccord_Perseverer) and
        (GetTickCount - Debut_Attente < 1000 * Delai_Decision)) do
      Begin
        tempo := GetTickCount;
        while GetTickCount - tempo < Clignotement do
          Application.ProcessMessages;
        Form_FeuRouge.label_CompteARebours.Caption :=
          IntToStr(Delai_Decision -
          trunc((GetTickCount - Debut_Attente) / 1000));
        Form_FeuRouge.Image_FeuRouge.Visible :=
          not(Form_FeuRouge.Image_FeuRouge.Visible);
        Application.ProcessMessages;
      End;
      if (GetTickCount - Debut_Attente >= 1000 * Delai_Decision) then
        Daccord_Renoncer := True;
      if Daccord_Renoncer then
      begin
        Result := True;
        Form_FeuRouge.Free;
        Form_FeuRouge := Nil;
        Exit;
        { c'est plus sage en effet }
      end;
      Form_FeuRouge.Free;
      Form_FeuRouge := Nil;
    end;

    AnglePolaire := Delta - Pi_d_2;
    DeltaDiff := Delta - L_DeltaPointage;

    if GerMountSetup.Passage_Interdit

    then (* l'algorithme est tel que le télescope ne peut pas faire des tours
      complets autour de l'axe horaire. *)
    begin
      if (GerMountSetup.AngleHorairePointagePrecedent > 0) and
        (AH(Longitude, L_AlphaPointage, SpeedIntMCMT.GMT) < 0)

      then
        GerMountSetup.AngleHorairePointage := AH(Longitude, L_AlphaPointage,
          SpeedIntMCMT.GMT) + T_pi

      else
        GerMountSetup.AngleHorairePointage := AH(Longitude, L_AlphaPointage,
          SpeedIntMCMT.GMT);

      AlphaDiff := GerMountSetup.AngleHoraire -
        GerMountSetup.AngleHorairePointage;
    end

    else (* Algorithme plus rapide autorisant le télescope à tourner librement
      autour de l'axe alpha, ce qui peut être un inconvénient. *)
    begin
      AlphaDiff := L_AlphaPointage;
      if Alpha - Pi > L_AlphaPointage then
        AlphaDiff := AlphaDiff + T_pi
      else if L_AlphaPointage - Pi > Alpha then
        Alpha := Alpha + T_pi;
      AlphaDiff := AlphaDiff - Alpha;
    end;

    (* test: se rapproche-t-on de l'horizon ?
      et peut-on retarder le déclanchement du mouvement delta ?
      si oui, il faudra le faire *)

    if (DeltaDiff < 0) and (abs(AlphaDiff) > abs(DeltaDiff) /
      Omega_DEC_sur_Omega_AD)

    then
    begin
      TimerRetardateur.DabordAlpha := True;
      if (AlphaDiff > 0)

      then
        TimerRetardateur.Declanchement := GerMountSetup.AngleHoraire + DeltaDiff
          / Omega_DEC_sur_Omega_AD
      else
        TimerRetardateur.Declanchement := GerMountSetup.AngleHoraire - DeltaDiff
          / Omega_DEC_sur_Omega_AD;
    end;
  end; // Monture à fourche


  // Steps to MOVE for slew

  MoveStepsDelta := round(SpeedIntMCMT.Resol_DEC * DeltaDiff / (T_pi));
  MoveStepsAlpha := round(SpeedIntMCMT.Resol_AD * AlphaDiff / (T_pi));
  Logproc(procName, 'Movesteps ' + IntToStr(MoveStepsAlpha) + ' ' +
    FloatToStr(MoveStepsDelta));

  // rattrapage de jeu ********************************************************
  // **************************************************************************

  TimerBacklash.Alpha := false;
  TimerBacklash.Delta := false;

  Try
    if BackLash.Activated then
    begin
      If (MoveStepsAlpha < 0) then
      begin
        TimerBacklash.Alpha := True;
        dec(MoveStepsAlpha, BackLash.StepAD);
      end;

      Case BackLash.Delta_Mode of
        0:
          ; // Backlash Delta déactivé

        1:
          begin // Correction lors d'un déplacement vers le Nord
            if ((MoveStepsDelta > 0) and
              (L_DeltaPointage < (90 - BackLash.Value / 60) * Pi / 180)) then
            begin
              TimerBacklash.Delta := True;
              Inc(MoveStepsDelta, BackLash.StepDEC);
              BackLash.North := True;
            end;
          end;

        2:
          begin // Correction lors d'un déplacement vers le Sud
            if ((MoveStepsDelta < 0) and
              (L_DeltaPointage > (-90 + BackLash.Value / 60) * Pi / 180)) then
            begin
              TimerBacklash.Delta := True;
              dec(MoveStepsDelta, BackLash.StepDEC);
              BackLash.North := false;
            end;
          end;

        3:
          begin // Correction lors d'un déplacement vers le Zénith
            Test := (tan(Latitude) < tan(Delta) *
              cos(GerMountSetup.AngleHoraire)) xor (AnglePolaire < 0);
            if (MoveStepsDelta > 0) and Test then
            begin
              TimerBacklash.Delta := True;
              Inc(MoveStepsDelta, BackLash.StepDEC);
              BackLash.North := True;
            end;
            if (MoveStepsDelta < 0) and not(Test) then
            begin
              TimerBacklash.Delta := True;
              dec(MoveStepsDelta, BackLash.StepDEC);
              BackLash.North := false;
            end;
          end;

        4:
          begin // Correction lors d'un déplacement vers l'Horizon
            Test := (tan(Latitude) < tan(Delta) *
              cos(GerMountSetup.AngleHoraire)) xor (AnglePolaire < 0);
            if (MoveStepsDelta > 0) and not(Test) then
            begin
              TimerBacklash.Delta := True;
              Inc(MoveStepsDelta, BackLash.StepDEC);
              BackLash.North := True;
            end;
            if (MoveStepsDelta < 0) and Test then
            begin
              TimerBacklash.Delta := True;
              dec(MoveStepsDelta, BackLash.StepDEC);
              BackLash.North := false;
            end;
          end;
      end; { case }
    end; // Backslash activated

    // programmation des timers ***********************************************
    // ************************************************************************

    if TimerRetardateur.DabordDelta or TimerRetardateur.DabordAlpha then
    begin
      TimerRetardateur.Interval := 1000;
      TimerRetardateur.AlphaCroissant := (AlphaDiff > 0);
      TimerRetardateur.DeltaCroissant := (Sign(Lieu.Lat) * DeltaDiff > 0);
      if TimerRetardateur.DabordDelta
      then { Déclanchement mouvement Delta, Alpha en attente }
      begin
        TelescopeMoveAxe(MoveStepsDelta, C_Delta);
        TimerRetardateur.MoveSteps := MoveStepsAlpha;
        TimerRetardateur.Enabled := True;
      end
      else { Déclanchement mouvement Alpha, Delta en attente }
      begin
        TelescopeMoveAxe(MoveStepsAlpha, C_Alpha);
        TimerRetardateur.MoveSteps := MoveStepsDelta;
        TimerRetardateur.Enabled := True;
      end;
    end
    else { Déclanchement simultané Alpha et Delta }
      TelescopeMove(MoveStepsAlpha, MoveStepsDelta);
  Finally
  End;


  if TimerBacklash.Alpha or TimerBacklash.Delta then
  begin
    TimerBacklash.Interval := 1000;
    TimerBacklash.Flag := 0;
    TimerBacklash.Enabled := True;
    Logproc(procName, 'Backslash enabled');
  end;

  STSTel.AlphaOldPoint := Alpha; // always in this proc.
  STSTel.DeltaOldPoint := Delta;

  GerMountSetup.AngleHorairePointagePrecedent := GerMountSetup.AngleHoraire;
  GerMountSetup.DatePointagePrecedent := Now;

  if GerMountSetup.Monture_Allemande or GerMountSetup.Monture_FerACheval then
  begin
    GerMountSetupSem.Enter;
    GerMountSetup.TelescopeZenithOuest :=
      (AnglePolaire * Sign(Lieu.Lat) > 0);
    // Hémisphère sud
    GerMountSetupSem.Leave;
    WriteBoolToReg('TelescopeZenithOuest', TelescopeOuest);
  end;

  // Must be send back
  Accuracy := DegToRad(1 / 30);
  Result := True;

  Logproc(procName, 'End Slewing');
  LogEndProc_DLL(procName);

end;
/// ///////////////////////////////////////////////////////////////////////////

(*
  Détermine les angles courants de la monture
  DeltaPointage            -Pi_d_2 < Delta < Pi_d_2
  AnglePolairePointage       -Pi < Theta < Pi
  AlphaPointage                0 < Alpha < T_pi
  AngleHorairePointage       -Pi <  AH   < Pi
  LongitudeHorairePointage   -Pi <  LH   < Pi
*)

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Procedure CalculePositionMonture;
Const
  procName='CalculePositionMonture';

  (* Main thread only *)

Var
  L_DeltaPointage : Double;
  L_AlphaPointage : Double;

begin

  RetrieveDataAlphaDelta; // get position from hardware

  SectionSTSTel.Enter;
  L_AlphaPointage:=STSTel.AlphaPointage;
  L_DeltaPointage:=STSTel.DeltaPointage;
  SectionSTSTel.Leave;

  GerMountSetup.AngleHorairePointage := AH(Lieu.Long, L_AlphaPointage,
    SpeedIntMCMT.GMT);
  Logproc(procName, 'AngleHorairePointage = ' +
    FloatToStr(GerMountSetup.AngleHorairePointage));


  {-Pi < AngleHorairePointage < +Pi}
  if TelescopeOuest
  then   // Télescope non retourné
  begin
    GerMountSetup.LongitudeHorairePointage :=
      GerMountSetup.AngleHorairePointage + Pi_d_2;
    // -Pi/2 < LongitudeHorairePointage < +3*Pi/2 pour les montures Fer à cheval
    if (GerMountSetup.LongitudeHorairePointage > Pi) and GerMountSetup.Monture_Allemande then
      GerMountSetup.LongitudeHorairePointage :=GerMountSetup.LongitudeHorairePointage - T_pi;
    // -Pi < LongitudeHorairePointage < +Pi  pour les montures allemandes
    GerMountSetup.AnglePolairePointage := Sign(Lieu.Lat) * Pi_d_2 -
      L_DeltaPointage;
  end
  else  // Télescope retourné
  begin
    GerMountSetup.LongitudeHorairePointage:=GerMountSetup.AngleHorairePointage - Pi_d_2;
    // -3*Pi/2 < LongitudeHorairePointage < +Pi/2  à ce stade
    if GerMountSetup.LongitudeHorairePointage < -Pi then
      GerMountSetup.LongitudeHorairePointage:=GerMountSetup.LongitudeHorairePointage + T_pi;
    // -Pi < LongitudeHorairePointage < +Pi  pour les montures allemandes
    if ((GerMountSetup.LongitudeHorairePointage < -Pi_d_2) and
      GerMountSetup.Monture_FerACheval) then
      GerMountSetup.LongitudeHorairePointage:=GerMountSetup.LongitudeHorairePointage + T_pi;
    // -Pi/2 < LongitudeHorairePointage < +3*Pi/2 pour les montures Fer à cheval
    GerMountSetup.AnglePolairePointage:=L_DeltaPointage-Sign(Lieu.Lat) * Pi_d_2;
  end;
  Logproc(procName,'CalculePositionMonture->LongitudeHorairePointage=' + FloatToStr(GerMountSetup.LongitudeHorairePointage));
  Logproc(procName,'CalculePositionMonture->AnglePolairePointage    =' + FloatToStr(GerMountSetup.AnglePolairePointage));
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// If AbleTo_WidthStand_SpeedChanges is false, leave it as it is.
// Otherwise allows the telescope to come back to sideral speed
// If PEC correction is activated, here you should use this function to desactivate it
// as so as the moon and solar speeds.

function ReturnToSideralSpeed: Boolean;
var
  astring   : shortstring;
Const
  ProcName='ReturnToSideralSpeed';
begin
  Try
    while (IsAxisSlewing_BackLash(C_Alpha)) do WaitMainthread(ProcName);
    astring := 'N' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0); // Commande No Park
    sendcommand(astring, 0, 0);
    while (IsAxisSlewing_BackLash(C_Alpha)) do WaitMainthread(ProcName);
    astring := 'S' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0); // Vitesse Siderale en AD
    sendcommand(astring, 0, 0);
    while (IsAxisSlewing_BackLash(C_Delta)) do WaitMainthread(ProcName);
    astring := 'S' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
    sendcommand(astring, 0, 1);
    SpeedIntMCMT.V_Guidage_AD := SpeedIntMCMT.V_Guidage_AD_SID;
  Finally
  End;
  result := True;
end;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////// ///////// ///////// ///////// ///////// ///////// ///////// /
//////// ///////// ///////// ///////// ///////// ///////// ///////// /
// POINTAGE AUTO
//////// ///////// ///////// ///////// ///////// ///////// ///////// /
//////// ///////// ///////// ///////// ///////// ///////// ///////// /

procedure TelescopeMoveAxe(MoveSteps, Axe: integer);
var
  MMSB, MSB, LSB, LLSB: byte;
  astring             : shortstring;
Const
  procName='TelescopeMoveAxe';
begin
  LogEnterProc(procName);
  LogProc(procName,Format('Axe=%d Step=%d',[Axe,MoveSteps]));
  if MoveSteps=0 then exit;
  If (abs(MoveSteps) > 0) then
  begin
    MMSB := (abs(MoveSteps) shr 24) and $7F;
    MSB  := (abs(MoveSteps) shr 16) and $FF;
    LSB  := (abs(MoveSteps) shr 8)  and $FF;
    LLSB :=  abs(MoveSteps) and $FF;
    If MoveSteps < 0 then MMSB := MMSB or $80;
    While IsMCMTSlewing(Axe) do WaitMainthread(procName);
    astring := 'p' + AnsiChar(MMSB) + AnsiChar(MSB) + AnsiChar(LSB) + AnsiChar(LLSB);
    sendcommand(astring, 0, Axe);
  end;
  LogEndProc(procName);
end;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Function TelescopeMove(MoveStepsAlpha, MoveStepsDelta: integer): Boolean;
begin
  TelescopeMoveAxe(MoveStepsDelta, C_Delta);
  TelescopeMoveAxe(MoveStepsAlpha, C_Alpha);
  result := True;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Stops the telescope (Alpha;delta : axis) and put it back in tracking mode

function STOPTelescope(Alpha, Delta: Boolean): Boolean;
// Stoppe le télescope depuis les instructions envoyées par la raquette du télescope
// une fois la commande stop faite, il faut un certain temps que la rampe descende pour que ca rende la main
// Ca rends la raquette pas bien reactive...
var
  astring : shortstring ;
  LSpeeds : Tspeeds     ;
Const
  procName='STOPTelescope';
begin
  InterlockedIncrement(Stopping);
  SpeedsSection.Enter;
  LSpeeds:=Speeds;
  SpeedsSection.Leave;
  TimerBacklash.Enabled    := False;
  TimerRetardateur.Enabled := False;
  if Alpha then
    if Delta then LogEnterProc(procName+ ' Alpha et Delta')
    else LogEnterProc(procName+ ' Alpha')
  else LogEnterProc(procName+ ' Delta');
  Try
    If Alpha then // Si l'arrêt en Alpha a été demandé ...
    begin
      case LSpeeds.SpeedAlpha of // With respect to the sideral speed (ie = 1x);
      SMax:
        begin
          if IsAxisSlewing_BackLash(C_Alpha) then
          begin
            StopSlewing(C_Alpha);
            while IsAxisSlewing_BackLash(C_Alpha) do      // Attends la fin de la rampe
              WaitMainthread(procName);
              LEDE.Grey;
              LEDO.Grey;
          end;
        end;

      SMedium:
        begin
          if IsAxisSlewing_BackLash(C_Alpha) then
          begin
            StopSlewing(C_Alpha);
            while IsAxisSlewing_BackLash(C_Alpha) do  // Attends la fin de la rampe
              WaitMainthread(procName);
              LEDE.Grey;
              LEDO.Grey;
          end;
        end;

      SSideral:
        begin
          //while IsAxisSlewing_OC(hcom,C_Alpha) do WaitMainthread(procName);
          astring := 'S' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
          sendcommand(astring, 0, 0);
          LEDE.Grey;
          LEDO.Grey;
        end;

      SNone: ;
      end;
    end;
    If Delta then // Si l'arrêt en Delta a été demandé
    begin
      case LSpeeds.SpeedDelta of // With respect to the sideral speed (ie = 1x);
      SMax:
        begin
          If IsAxisSlewing_BackLash(C_Delta) then
          begin
            StopSlewing(C_Delta);
            while IsAxisSlewing_BackLash(C_Delta) do  // Attends la fin de la rampe
              WaitMainthread(procName);
            LEDN.Grey;
            LEDS.Grey;
          end;
        end;

      SMedium:
        begin
          If IsAxisSlewing_BackLash(C_Delta) then
          begin
            StopSlewing(C_Delta);
            while IsAxisSlewing_BackLash(C_Delta) do  // Attends la fin de la rampe
              WaitMainthread(procName);
            LEDN.Grey;
            LEDS.Grey;
          end;
        end;

      SSideral:
        begin
          //while IsAxisSlewing_BackLash(Hcom,C_Delta) do WaitMainthread(procName);
          astring := 'S' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
          sendcommand(astring, 0, 1);
          LEDN.Grey;
          LEDS.Grey;
        end;

      SNone: ;
      end;
    end;
  Finally
    InterlockedDecrement(Stopping);
    LogEndProc(procName);
  End;
  Result := True;
end;

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

function Get_AtPark_Core: WordBool;
Const
  procName='Get_AtPark_Core';
Var
  STrace:string;
begin
  LogEnterProc(procName);
  result := fParked;
  LogEndProc(procName);
  if fParked then STrace:='AtPark=true' else STrace:='AtPark=false';
  WriteToTrace(STrace);
end;

function Get_CanPark_Core: WordBool;
Const
  procName='Get_CanPark_Core';
begin
  LogEnterProc(procName);
  result := true;
  LogEndProc(procName);
  WriteToTrace('CanPark=true');
end;

function Get_CanSetPark_Core: WordBool;
Const
  procName='Get_CanSetPark_Core';
begin
  LogEnterProc(procName);
  result := true;
  LogEndProc(procName);
  WriteToTrace('CanSetPark=true');
end;

function Get_Connected_Core: WordBool;
Const
  procName='Get_Connected_Core';
Var
  STrace:string;
begin
  LogEnterProc(procName);
  result :=fConnected;
  LogEndProc(procName);
  if fConnected then STrace:='Connected=true' else STrace:='Connected=false';
  WriteToTrace(STrace);
end;

function Get_Declination_Core: Double;
Const
  procName='Get_Declination_Core';
begin
  LogEnterProc(procName);
  if RetrieveDataAlphaDelta then
  begin
    fDeclination:=STSTel.Delta/PI* 180;
    result := fDeclination;
    WriteToTrace('Declination-->'+FloatToStr(result));
  end
  else
  begin
    WriteToTrace('Declination-->Error');
    raise EoleSysError.Create('Can''t get declination', $80040401, 0);
  end;
  LogEndProc(procName+' '+FloatToStr(result));
end;

function Get_DestinationSideOfPier_Core(RightAscension, Declination: Double): PierSide;
Var AngleHoraire,Ra_Dest:Double;
begin
  Ra_Dest := RightAscension / 12 * PI;
  Result:=pierUnknown;
  AngleHoraire := AH(Lieu.Long, Ra_Dest, SpeedIntMCMT.GMT);

  If GerMountSetup.Monture_Allemande then
  begin
    If (AngleHoraire < +GerMountSetup.Angle_Horaire_Retournement) or
      (AngleHoraire >= Pi + GerMountSetup.Angle_Horaire_Retournement)
    then
      Result := PierWest // Mount_TUBE_WEST_Orientation
    else
      Result := PierEast; // Mount_TUBE_EST_Orientation

  End;

  If GerMountSetup.Monture_FerACheval

  then
  begin
    If (AngleHoraire < +GerMountSetup.Angle_Horaire_Retournement) or
      (AngleHoraire >= -Pi + GerMountSetup.Angle_Horaire_Retournement)

    then
      Result := PierWest // Mount_TUBE_WEST_Orientation
    else
      Result := PierEast; // Mount_TUBE_EST_Orientation

  End;
end;

function Get_FactVitesse_Core: Double;
Const
  procName='Get_FactVitesse_Core';
begin
  LogEnterProc(procName);
  result := fFactVitesse;
  WriteToTrace('Facteur Vitesse-->'+FloatToStr(result));
  LogEndProc(procName+' '+FloatToStr(result));
end;

function Get_IsPulseGuiding_Core: WordBool;
Const
  procName='Get_IsPulseGuiding_Core';
Var
  STrace:string;
begin
  LogEnterProc(procName);
  result := (TimerAlphaPulse.IsPulse or TimerDecliPulse.IsPulse);
  LogEndProc(procName);
  if result then STrace:='IsPulseGuiding=true' else STrace:='IsPulseGuiding=false';
  WriteToTrace(STrace);
end;

function Get_RightAscension_Core: Double;
Const
  procName='Get_RightAscension_Core';
begin
  LogEnterProc(procName);
  if RetrieveDataAlphaDelta then
  begin
    fRightAscension:=STSTel.Alpha/PI*12;
    result := fRightAscension;
    WriteToTrace('RightAscension-->'+FloatToStr(result));
  end
  else
  begin
    WriteToTrace('RightAscension-->Error');
    raise EoleSysError.Create('Can''t get right ascension', $80040401, 0);
  end;
  LogEndProc(procName);
end;

function Get_SiderealTime_Core: Double;
Const
  procName='Get_SiderealTime_Core';
begin
  LogEnterProc(procName);
  result := CalculeTSL(Now+SpeedIntMCMT.GMT/24,Lieu.Long)*12/Pi;
  WriteToTrace('SiderealTime-->'+FloatToStr(result));
  LogEndProc(procName);
end;

function Get_Slewing_Core: WordBool;
Const
  procName='Get_Slewing_Core';
Var
  STrace:string;
begin
  LogEnterProc(procName);
  if (IsAxisSlewing_backlash(C_Alpha) = True) or (IsAxisSlewing_backlash(C_Delta) = True) then result:=true else result:=false;
  if result then
  begin
//    showmessage('Slewing=true');
    STrace:='Slewing=true';
  end
  else
  begin
//    showmessage('Slewing=false');
    STrace:='Slewing=false';
  end;
  WriteToTrace(STrace);
  LogEndProc(procName);
end;

function Get_TargetDeclination_Core: Double;
Const
  procName='Get_TargetDeclination_Core';
begin
  LogEnterProc(procName);
  if fTargetDecOK then
  begin
    result := fTargetDeclination;
    WriteToTrace('TargetDeclination-->'+FloatToStr(result));
  end
  else
  begin
    WriteToTrace('TargetDeclination-->Error');
    raise EoleSysError.Create('Target declination not available', $80040401, 0);
  end;
  LogEndProc(procName);
end;

function Get_TargetRightAscension_Core: Double;
Const
  procName='Get_TargetRightAscension_Core';
begin
  LogEnterProc(procName);
  if fTargetAscOK then
  begin
    result := fTargetRightAscension;
    WriteToTrace('TargetRightAscension-->'+FloatToStr(result));
  end
  else
  begin
    WriteToTrace('TargetRightAscension-->Error');
    raise EoleSysError.Create('Target right ascension not available', $80040401, 0);
  end;
  LogEndProc(procName);
end;

function Get_Tracking_Core: WordBool;
Const
  procName='Get_Tracking_Core';
Var
  STrace:string;
begin
  LogEnterProc(procName);
  result := fTracking;
  if result then STrace:='Tracking=true' else STrace:='Tracking=false';
  WriteToTrace(STrace);
  LogEndProc(procName);
end;

procedure AbortSlew_Core;
Const
  procName='AbortSlew_Core';
begin
  LogEnterProc(procName);
  TimerBacklash.Enabled    := false;
  TimerRetardateur.Enabled := false;
  Try
  StopSlewing(C_Alpha);
  StopSlewing(C_Delta);
  Finally
  End;
  WriteToTrace('AbortSlew');
  LogEndProc(procName);
end;

procedure MoveAxis_Core(Axe: TelescopeAxes; Rate: Double);
Const
  procName='MoveAxis_Core';
var
  StopAlpha, StopDelta: boolean;
  astring: shortstring ;
  LSpeeds: Tspeeds     ;
  OutC,Axis   : Integer     ;
  Ordre:AnsiChar;
  STrace:string;

  function Pas2DegAD(Pas:double):double;
  begin
    result:=Pas/SpeedIntMCMT.Resol_AD*360;
  end;

  function Pas2DegDEC(Pas:double):double;
  begin
    result:=Pas/SpeedIntMCMT.Resol_DEC*360;
  end;

  function AxeVitesse(Axe:integer;Vitesse:AnsiChar):boolean;
  begin
    try
      while IsAxisSlewing_BackLash(Axe) do WaitMainthread(procName);
      astring := Vitesse + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
      sendcommand(astring, 0,Axe);
      result:=true;
    except
      result:=false;
    end;
  end;

begin
  LogEnterProc(procName);
  if fParked then
  begin
    WriteToTrace('MoveAxis error telescope parked');
    raise EoleSysError.Create('Telescope is parked', $80040401, 0);
  end
  else
  If (InterlockedCompareExchange(Stopping,1,1)=1) then   // Do not enter because stopping is pending
  begin
    Exit;
  end;
  SpeedsSection.Enter;
  LSpeeds:=Speeds;
  SpeedsSection.Leave;
  //  Monture allemande ***********************************************
  //  Do not handle for mount correction
  If GerMountSetup.Monture_Allemande and TelescopeOuest and (Axe=axisPrimary) then
    Rate:=-Rate;
  // ***************************
  StopAlpha := false;
  StopDelta := false;
  if Axe=C_Alpha then StopAlpha := true;
  if Axe=C_Delta then StopDelta := true;
  if Rate = 0 then //case of stop!!
  begin
    if not (StopTelescope(StopAlpha, StopDelta)) then
    begin
      WriteToTrace('MoveAxis error Stop impossible');
      raise EoleSysError.Create('Stop Axis impossible', $80040401, 0);
    end;
  end
  else
  begin
    if Axe= axisPrimary then
    begin
      STrace:='MoveAxis RightAscension';
      Axis:=C_Alpha;
      StopAlpha:=true;  // in case of stop!
      if Rate < 0 then  //OUEST
      begin
        if Rate<>0 then LEDO.Green;
        if Abs(Abs(Rate)-VEnumMin[Axe,2])<0.1 then
        begin
          Ordre:='X';
          LSpeeds.SpeedAlpha := SMax;
        end
        else if Abs(Abs(Rate)-VEnumMin[Axe,1])<0.01 then
        begin
          Ordre:='G';
          LSpeeds.SpeedAlpha := SMedium;
        end
        else
        begin
          Ordre:='D';
          LSpeeds.SpeedAlpha := SSideral;
        end;
      end
      else  //EST
      begin
        if Rate<>0 then LEDE.Green;
        if Abs(Abs(Rate)-VEnumMin[Axe,2])<0.1 then
        begin
          Ordre:='W';
          LSpeeds.SpeedAlpha := SMax;
        end
        else if Abs(Abs(Rate)-VEnumMin[Axe,1])<0.01 then
        begin
          Ordre:='F';
          LSpeeds.SpeedAlpha := SMedium;
        end
        else
        begin
          Ordre:='Q';
          LSpeeds.SpeedAlpha := SSideral;
        end;
      end;
    end
    else
    begin
      STrace:='MoveAxis Declination';
      Axis:=C_Delta;
      StopDelta:=true;  // in case of stop!
      if Rate < 0 then  //SUD
      begin
        if Rate<>0 then LEDS.Green;
        if Abs(Abs(Rate)-VEnumMin[Axe,2])<0.1 then
        begin
          Ordre:='W';
          LSpeeds.SpeedDelta := SMax;
        end
        else if Abs(Abs(Rate)-VEnumMin[Axe,1])<0.01 then
        begin
          Ordre:='F';
          LSpeeds.SpeedDelta := SMedium;
        end
        else
        begin
          Ordre:='Q';
          LSpeeds.SpeedDelta := SSideral;
        end;
      end
      else  //NORD
      begin
        if Rate<>0 then LEDN.Green;
        if Abs(Abs(Rate)-VEnumMin[Axe,2])<0.1 then
        begin
          Ordre:='X';
          LSpeeds.SpeedDelta := SMax;
        end
        else if Abs(Abs(Rate)-VEnumMin[Axe,1])<0.01 then
        begin
          Ordre:='G';
          LSpeeds.SpeedDelta := SMedium;
        end
        else
        begin
          Ordre:='D';
          LSpeeds.SpeedDelta := SSideral;
        end;
      end;
    end;
    if not (AxeVitesse(Axis,Ordre)) then
    begin
      WriteToTrace('MoveAxis error move impossible');
      raise EoleSysError.Create('Move Axis impossible', $80040401, 0);
    end;
  end;
  WriteToTrace(STrace+' '+FloatToStr(Rate)+'°/s');
  SpeedsSection.Enter;
  Speeds:=LSpeeds;
  SpeedsSection.Leave;
  LogEndProc(procName);
end;

procedure Park_Core;
Const
  procName='Park_Core';
var
  AH_Temp,Delta_Temp:double;
begin
  LogEnterProc(procName);
  WriteToTrace('Park');
  if (not (fParked)) then
  begin
    if not (fTracking) then
    begin
      ReturnToSideralSpeed;
      fTracking := true;
    end;
    AH_Temp:=fParkAH*Pi/12;
    Delta_Temp:=fParkDelta*Pi/180;
    if not(ParkTel_At(AH_Temp,Delta_Temp)) then
    begin
      WriteToTrace('Park error');
      raise EoleSysError.Create('Park failed', $80040400, 0);
    end;
    fParked := true;
    Form2.BitBtnSideral.Enabled:=false;
    Form2.LabelSideral.Color:=clRed;
  end;
  WriteToTrace('Park');
  LogEndProc(procName);
end;

procedure Set_Connected_Core(Value: WordBool);
Const
  procName='Set_Connected_Core';
var
  astring,
  receivestring      : ShortString;
  FileIni            : TIniFile;
  Park_AH,
  Park_Dec,
  valueDouble        : Double;
  AutoComPort,
  found,
  ok,
  ValueBool          : Boolean;
  retour,
  i,
  ValueInt           : Integer;
  Mj_ra, Mn_ra, Mi_ra,
  Mj_dc, Mn_dc, Mi_dc: Byte;
  ValueLong          : longint;
  TimeZone           : TTimeZoneInformation;
  Reg                : TRegistry;
  NumCOMp            : Byte;
  KeyHandle          : HKEY;
  TmpPorts           : TStringList;
  Form_scan_mcmt     : TForm_scan_mcmt;
  ProcessingBox      : TProcessingBox;
  STrace             : String;
  SFolder : pItemIDList;
  SpecialPath : Array[0..MAX_PATH] Of Char;
  f: TextFile;
          {

  found              : Boolean;
  Mj_dc, Mn_dc, Mi_dc: Byte;
  }


begin
  LogEnterProc(procName);
  if Value then STrace:='Connected<--true' else STrace:='Connected<--false';
  WriteToTrace(STrace);
  if ((Value = true) and (fConnected = false)) then
  begin
    try
      Park_AH                  :=0;
      Park_Dec                 :=0;
      FormatSettings.Decimalseparator         := '.';
      AutoComPort              :=True;
      Retour := GetTimeZoneInformation(TimeZone);
      case retour of
        TIME_ZONE_ID_UNKNOWN : SpeedIntMCMT.GMT := TimeZone.Bias div 60;
        TIME_ZONE_ID_STANDARD: SpeedIntMCMT.GMT := (TimeZone.Bias + TimeZone.StandardBias) div 60;
        TIME_ZONE_ID_DAYLIGHT: SpeedIntMCMT.GMT := (TimeZone.Bias + TimeZone.DaylightBias) div 60;
      else                   Raise Exception.create('Erreur Fatale : Librairie '+Version+' "GetTimeZoneInformation" a échoué !');
      end;
      SHGetFolderLocation(Form2.Handle,CSIDL_PERSONAL, 0, SHGFP_TYPE_CURRENT, SFolder);
      SHGetPathFromIDList(SFolder, SpecialPath);
      FichierLog:=StrPas(SpecialPath)+'\MCMT32Debug.log';
      //on vérifie l'existence du fichier et en cas de besoin on le crée
      if Not(FileExists(FichierLog)) then
      begin
        AssignFile(f,FichierLog);
        ReWrite(f);
        CloseFile(f);
      end;
      FileIni     := TIniFile.Create(return_MCMT_StoreIniFilePath);
      Reg         := TRegistry.Create;
      Try
        Reg.RootKey := HKEY_CURRENT_USER;
        if not (Reg.OpenKey('SOFTWARE\MCMT32\', False)) then Reg.OpenKey('SOFTWARE\MCMT32\', true);
        // Principe :
        // Si le fichier INI n'existe pas, charge les parametres depuis la base de registres
        LogEnabled:=False;
        if Reg.ValueExists('LogEnabled') then
        LogEnabled:= Reg.ReadBool('LogEnabled');
        SimulatorEnabled:=False;
        if Reg.ValueExists('SimulatorEnabled') then
        SimulatorEnabled:= Reg.ReadBool('SimulatorEnabled');
        TraceEnabled:=False;
        if Reg.ValueExists('TraceEnabled') then
        TraceEnabled:= Reg.ReadBool('TraceEnabled');
        if Reg.ValueExists('MCMT2021') then
          MCMT2021 := Reg.ReadBool('MCMT2021')
        else
        begin
          MCMT2021 := FileIni.ReadBool('Parameters', 'MCMT2021', False);
          Reg.WriteBool('MCMT2021', MCMT2021);
        end;
        if not(MCMT2021) then version:='MCMT32' else version:='MCMT2021';

        If Reg.ValueExists('Port') then
        begin
          NumCOMp     := Reg.ReadInteger('Port');
          Try
            AutoComPort := Reg.ReadBool   ('FindAutoPort');
          Except
            AutoComPort := True;
          End;
        end
        else
        begin
          NumCOMp:= FileIni.ReadInteger('Configuration', 'Port', 1);
          Reg.WriteInteger('Port', NumCOMp);
        end;
        If Reg.ValueExists('TimeOutMs_ConnectionsWrite') then
        begin
          TimeOutMs_ConnectionsWrite := Reg.ReadInteger('TimeOutMs_ConnectionsWrite');
          If TimeOutMs_ConnectionsWrite<100  then TimeOutMs_ConnectionsWrite:=100 ;
          If TimeOutMs_ConnectionsWrite>5000 then TimeOutMs_ConnectionsWrite:=5000;
        end;
        If Reg.ValueExists('TimeOutMs_ConnectionsRead') then
        begin
          TimeOutMs_ConnectionsRead := Reg.ReadInteger('TimeOutMs_ConnectionsRead');
          If TimeOutMs_ConnectionsRead<100  then TimeOutMs_ConnectionsRead:=100 ;
          If TimeOutMs_ConnectionsRead>5000 then TimeOutMs_ConnectionsRead:=5000;
        end;
        If Reg.ValueExists('PurgeCommMethod') then
          PurgeCommMethod := Reg.ReadBool('PurgeCommMethod');
        If PurgeCommMethod then
          Logproc(procName, 'PurgeComm enabled, fileflushbuffer disabled !')
        else
          Logproc(procName, 'PurgeComm disabled, fileflushbuffer enabled !');
        if Reg.ValueExists('LastDelta') then
          STSTel.Delta := Reg.ReadFloat('LastDelta')
        else
        begin
          STSTel.Delta := strtofloat(FileIni.ReadString('Configuration', 'LastDelta', '0'));
          Reg.WriteFloat('LastDelta', STSTel.Delta);
        end;
        if Reg.ValueExists('LastAlpha') then
          STSTel.Alpha := Reg.ReadFloat('LastAlpha')
        else
        begin
          STSTel.Alpha := strtofloat(FileIni.ReadString('Configuration', 'LastAlpha', '0'));
          Reg.WriteFloat('LastAlpha', STSTel.Alpha);
        end;
        if Reg.ValueExists('DIR_AD') then
          SpeedIntMCMT.Inv_Codeur_AD := Reg.ReadBool('DIR_AD')
        else
        begin
          SpeedIntMCMT.Inv_Codeur_AD := FileIni.ReadBool('Parameters', 'DIR_AD', False);
          Reg.WriteBool('DIR_AD', SpeedIntMCMT.Inv_Codeur_AD);
        end;
        if Reg.ValueExists('DIR_DEC') then
          SpeedIntMCMT.Inv_Codeur_DEC := Reg.ReadBool('DIR_DEC')
        else
        begin
          SpeedIntMCMT.Inv_Codeur_DEC := FileIni.ReadBool('Parameters', 'DIR_DEC', False);
          Reg.WriteBool('DIR_DEC', SpeedIntMCMT.Inv_Codeur_DEC);
        end;
        if Reg.ValueExists('Resol_AD') then
          SpeedIntMCMT.Resol_AD := Reg.ReadInteger('Resol_AD')
        else
        begin
          SpeedIntMCMT.Resol_AD := FileIni.ReadInteger('Parameters', 'Resol_AD', 4608000);
          Reg.WriteInteger('Resol_AD',SpeedIntMCMT.Resol_AD);
        end;
        if (SpeedIntMCMT.Resol_AD=0) then raise Exception.create('Fatal : La résolution en Alpha est nulle ! Verifier dans le panneau de configuration...');

        if Reg.ValueExists('Microstep_AD') then
          SpeedIntMCMT.Microstep_AD := Reg.ReadInteger('Microstep_AD')
        else
        begin
          SpeedIntMCMT.Microstep_AD := FileIni.ReadInteger('Parameters', 'Microstep_AD', 128);
          Reg.WriteInteger('Microstep_AD', SpeedIntMCMT.Microstep_AD);
        end;

        if Reg.ValueExists('Step_AD') then
          SpeedIntMCMT.Step_AD := Reg.ReadInteger('Step_AD')
        else
        begin
          SpeedIntMCMT.Step_AD := FileIni.ReadInteger('Parameters', 'Step_AD', 200);
          Reg.WriteInteger('Step_AD', SpeedIntMCMT.Step_AD);
        end;

        if Reg.ValueExists('ReducAlpha') then
          SpeedIntMCMT.Reduc_AD:=Reg.ReadFloat('ReducAlpha')
        else
        begin
          SpeedIntMCMT.Reduc_AD := FileIni.ReadFloat('Parameters', 'ReducAlpha', 360);
          Reg.WriteFloat('ReducAlpha',SpeedIntMCMT.Reduc_AD);
        end;

        SpeedIntMCMT.MPasParTour_AD:=SpeedIntMCMT.Microstep_AD*SpeedIntMCMT.Step_AD;

        if Reg.ValueExists('Resol_DEC') then
          SpeedIntMCMT.Resol_DEC := Reg.ReadInteger('Resol_DEC')
        else
        begin
          SpeedIntMCMT.Resol_DEC := FileIni.ReadInteger('Parameters', 'Resol_DEC', 4608000);
          Reg.WriteInteger('Resol_DEC', SpeedIntMCMT.Resol_DEC);
        end;
        if (SpeedIntMCMT.Resol_DEC=0) then raise Exception.create('Fatal : La résolution en Delta est nulle ! Verifier dans le panneau de configuration...');

        if Reg.ValueExists('Microstep_DEC') then
          SpeedIntMCMT.Microstep_DEC := Reg.ReadInteger('Microstep_DEC')
        else
        begin
          SpeedIntMCMT.Microstep_DEC := FileIni.ReadInteger('Parameters', 'Microstep_DEC', 128);
          Reg.WriteInteger('Microstep_DEC', SpeedIntMCMT.Microstep_DEC);
        end;

        if Reg.ValueExists('Step_DEC') then
          SpeedIntMCMT.Step_DEC := Reg.ReadInteger('Step_DEC')
        else
        begin
          SpeedIntMCMT.Step_DEC := FileIni.ReadInteger('Parameters', 'Step_DEC', 200);
          Reg.WriteInteger('Step_DEC', SpeedIntMCMT.Step_DEC);
        end;

        SpeedIntMCMT.MPasParTour_DEC:=SpeedIntMCMT.Microstep_DEC*SpeedIntMCMT.Step_DEC;

        if Reg.ValueExists('V_Guidage_AD') then
          SpeedIntMCMT.V_Guidage_AD := Reg.ReadFloat('V_Guidage_AD')
        else
        begin
          SpeedIntMCMT.V_Guidage_AD := StrToFloat(FileIni.ReadString('Parameters', 'V_Guidage_AD', '1'));
          Reg.WriteFloat('V_Guidage_AD', SpeedIntMCMT.V_Guidage_AD);
        end;
        fPeriodeFondamentale:=Reg.ReadFloat('V_Guidage_AD');
        if fPeriodeFondamentale<>0 then
          fPeriodeFondamentale:=SpeedIntMCMT.MPasParTour_DEC/fPeriodeFondamentale*15.04
        else fPeriodeFondamentale:=1;
        SpeedIntMCMT.V_Guidage_AD_SID := SpeedIntMCMT.V_Guidage_AD;
        if Reg.ValueExists('V_Guidage_DEC') then
          SpeedIntMCMT.V_Guidage_DEC := Reg.ReadFloat('V_Guidage_DEC')
        else
        begin
          SpeedIntMCMT.V_Guidage_DEC := StrToFloat(FileIni.ReadString('Parameters', 'V_Guidage_DEC', '1'));
          Reg.WriteFloat('V_Guidage_DEC', SpeedIntMCMT.V_Guidage_DEC);
        end;
        if Reg.ValueExists('V_Corr_P_AD') then
          SpeedIntMCMT.V_Corr_P_AD := Reg.ReadFloat('V_Corr_P_AD')
        else
        begin
          SpeedIntMCMT.V_Corr_P_AD := StrToFloat(FileIni.ReadString('Parameters', 'V_Corr_P_AD', '1'));
          Reg.WriteFloat('V_Corr_P_AD', SpeedIntMCMT.V_Corr_P_AD);
        end;
        if Reg.ValueExists('V_Corr_P_DEC') then
          SpeedIntMCMT.V_Corr_P_DEC := Reg.ReadFloat('V_Corr_P_DEC')
        else
        begin
          SpeedIntMCMT.V_Corr_P_DEC := strtofloat(FileIni.ReadString('Parameters', 'V_Corr_P_DEC', '1'));
          Reg.WriteFloat('V_Corr_P_DEC', SpeedIntMCMT.V_Corr_P_DEC);
        end;
        if Reg.ValueExists('V_Corr_M_AD') then
          SpeedIntMCMT.V_Corr_M_AD := Reg.ReadFloat('V_Corr_M_AD')
        else
        begin
          SpeedIntMCMT.V_Corr_M_AD := strtofloat(FileIni.ReadString('Parameters', 'V_Corr_M_AD', '1'));
          Reg.WriteFloat('V_Corr_M_AD', SpeedIntMCMT.V_Corr_M_AD);
        end;
        if Reg.ValueExists('V_Corr_M_DEC') then
          SpeedIntMCMT.V_Corr_M_DEC := Reg.ReadFloat('V_Corr_M_DEC')
        else
        begin
          SpeedIntMCMT.V_Corr_M_DEC := strtofloat(FileIni.ReadString('Parameters', 'V_Corr_M_DEC', '1'));
          Reg.WriteFloat('V_Corr_M_DEC', SpeedIntMCMT.V_Corr_M_DEC);
        end;
        if Reg.ValueExists('V_Point_L_AD') then
          SpeedIntMCMT.V_Point_L_AD := Reg.ReadFloat('V_Point_L_AD')
        else
        begin
          SpeedIntMCMT.V_Point_L_AD := strtofloat(FileIni.ReadString('Parameters', 'V_Point_L_AD', '1'));
          Reg.WriteFloat('V_Point_L_AD', SpeedIntMCMT.V_Point_L_AD);
        end;
        if Reg.ValueExists('V_Point_L_DEC') then
          SpeedIntMCMT.V_Point_L_DEC := Reg.ReadFloat('V_Point_L_DEC')
        else
        begin
          SpeedIntMCMT.V_Point_L_DEC := strtofloat(FileIni.ReadString('Parameters', 'V_Point_L_DEC', '1'));
          Reg.WriteFloat('V_Point_L_DEC', SpeedIntMCMT.V_Point_L_DEC);
        end;
        if Reg.ValueExists('V_Point_R_AD') then
          SpeedIntMCMT.V_Point_R_AD := Reg.ReadFloat('V_Point_R_AD')
        else
        begin
          SpeedIntMCMT.V_Point_R_AD := strtofloat(FileIni.ReadString('Parameters', 'V_Point_R_AD', '1'));
          Reg.WriteFloat('V_Point_R_AD', SpeedIntMCMT.V_Point_R_AD);
        end;
        if Reg.ValueExists('V_Point_R_DEC') then
          SpeedIntMCMT.V_Point_R_DEC := Reg.ReadFloat('V_Point_R_DEC')
        else
        begin
          SpeedIntMCMT.V_Point_R_DEC := strtofloat(FileIni.ReadString('Parameters', 'V_Point_R_DEC', '1'));
          Reg.WriteFloat('V_Point_R_DEC', SpeedIntMCMT.V_Point_R_DEC);
        end;
        if Reg.ValueExists('Accel_AD') then
          SpeedIntMCMT.Accel_AD := Reg.ReadInteger('Accel_AD')
        else
        begin
          SpeedIntMCMT.Accel_AD := strtoint(FileIni.ReadString('Parameters', 'Accel_AD', '0'));
          Reg.WriteInteger('Accel_AD', SpeedIntMCMT.Accel_AD);
        end;
        if Reg.ValueExists('Accel_DEC') then
          SpeedIntMCMT.Accel_DEC := Reg.ReadInteger('Accel_DEC')
        else
        begin
          SpeedIntMCMT.Accel_DEC := strtoint(FileIni.ReadString('Parameters', 'Accel_DEC', '0'));
          Reg.WriteInteger('Accel_DEC', SpeedIntMCMT.Accel_DEC);
        end;
        if Reg.ValueExists('Backlash_Activated') then
          Backlash.Activated := Reg.ReadBool('Backlash_Activated')
        else
        begin
          Backlash.Activated := FileIni.ReadBool('Parameters', 'Backlash_Activated', false);
          Reg.WriteBool('Backlash_Activated', Backlash.Activated);
        end;
        if Reg.ValueExists('Backlash') then
          Backlash.Value := Reg.ReadFloat('Backlash')
        else
        begin
          Backlash.Value := strtofloat(FileIni.ReadString('Parameters', 'Backlash', '20'));
          Reg.WriteFloat('Backlash', Backlash.Value);
        end;
        if Reg.ValueExists('Backlash_Delta_Mode')
         then Backlash.Delta_Mode := Reg.ReadInteger('Backlash_Delta_Mode')
        else
        begin
          Backlash.Delta_Mode := FileIni.ReadInteger('Parameters', 'Backlash_Delta_Mode', 0);
         Reg.WriteInteger('Backlash_Delta_Mode',Backlash.Delta_Mode);
        end;
        if Reg.ValueExists('Backlash_Pause') then
          Backlash.Pause := Reg.ReadInteger('Backlash_Pause')
        else
        begin
          Backlash.Pause := FileIni.ReadInteger('Parameters', 'Backlash_Pause', 0) * 1000;
          Reg.WriteInteger('Backlash_Pause', Backlash.Pause);
        end;
        if Reg.ValueExists('Park_AH') then
          Park_AH := Reg.ReadFloat('Park_AH')
        else
        begin
          Park_AH := FileIni.Readfloat('ParkMode', 'AH', 0);
          Reg.WriteFloat('Park_AH', Park_AH);
        end;
        Form2.SpinEditParkAHh.Value:=Trunc(RadToDeg(Park_AH)/15);
        Form2.SpinEditParkAHm.Value:=Round(Abs(Frac(RadToDeg(Park_AH)/15)*60));
        if Reg.ValueExists('Park_Dec') then
          Park_Dec := Reg.ReadFloat('Park_Dec')
        else
        begin
          Park_Dec := FileIni.Readfloat('ParkMode', 'DEC', 0);
          Reg.WriteFloat('Park_Dec', Park_Dec);
        end;
        Form2.SpinEditParkDECd.Value:=Trunc(RadToDeg(Park_Dec));
        Form2.SpinEditParkDECm.Value:=Round(Abs(Frac(RadToDeg(Park_Dec))*60));
       // PARAMETRES DE POINTAGE  **********************************************

      try
        GerMountSetup.Delai_Decision := Reg.ReadInteger('Delai_Decision');
      except
        GerMountSetup.Delai_Decision := FileIni.ReadInteger('Pointage',
          'Delai_Decision', 0);
        Reg.WriteInteger('Delai_Decision', GerMountSetup.Delai_Decision);
      end;

      if Reg.ValueExists('Declinaison_Polaire_Limite') then
        GerMountSetup.Declinaison_Polaire_Limite :=
          Reg.ReadFloat('Declinaison_Polaire_Limite')
      else
      begin
        GerMountSetup.Declinaison_Polaire_Limite :=
          FileIni.ReadFloat('Pointage', 'Declinaison_Polaire_Limite', 90);
        Reg.WriteFloat('Declinaison_Polaire_Limite',
          GerMountSetup.Declinaison_Polaire_Limite);
      end;


        if Reg.ValueExists('Passage_Interdit')
          then GerMountSetup.Passage_Interdit := Reg.ReadBool('Passage_Interdit')
        else
        begin
          GerMountSetup.Passage_Interdit := FileIni.ReadBool('Pointage','Passage_Interdit',false);
          Reg.WriteBool('Passage_Interdit',GerMountSetup.Passage_Interdit);
        end;
        if Reg.ValueExists('Monture_Allemande')
          then GerMountSetup.Monture_Allemande := Reg.ReadBool('Monture_Allemande')
        else
        begin
          GerMountSetup.Monture_Allemande := FileIni.ReadBool('Pointage','Monture_Allemande',false);
          Reg.WriteBool('Monture_Allemande',GerMountSetup.Monture_Allemande);
        end;
        if Reg.ValueExists('Angle_horaire_critique_Est')
          then GerMountSetup.Angle_horaire_critique_Est := Reg.ReadFloat('Angle_horaire_critique_Est')
        else
          begin
            GerMountSetup.Angle_horaire_critique_Est := FileIni.Readfloat('Pointage', 'Angle_horaire_critique_Est', 0);
            Reg.WriteFloat('Angle_horaire_critique_Est',GerMountSetup.Angle_horaire_critique_Est);
          end;

        if Reg.ValueExists('Angle_horaire_critique_Ouest')
          then GerMountSetup.Angle_horaire_critique_Ouest := Reg.ReadFloat('Angle_horaire_critique_Ouest')
          else
            begin
              GerMountSetup.Angle_horaire_critique_Ouest := FileIni.Readfloat('Pointage', 'Angle_horaire_critique_Ouest', 0);
              Reg.WriteFloat('Angle_horaire_critique_Ouest',GerMountSetup.Angle_horaire_critique_Ouest);
            end;

        if Reg.ValueExists('Angle_horaire_Retournement')
          then GerMountSetup.Angle_horaire_Retournement := Reg.ReadFloat('Angle_horaire_Retournement')
          else
            begin
              GerMountSetup.Angle_horaire_Retournement := FileIni.Readfloat('Pointage', 'Angle_horaire_Retournement', 0);
              Reg.WriteFloat('Angle_horaire_Retournement',GerMountSetup.Angle_horaire_Retournement);
            end;

        if Reg.ValueExists('Rayon_minimal')
          then GerMountSetup.Rayon_minimal := Reg.ReadFloat('Rayon_minimal')
          else
            begin
              GerMountSetup.Rayon_minimal := FileIni.Readfloat('Pointage', 'Rayon_minimal', 0);
              Reg.WriteFloat('Rayon_minimal',GerMountSetup.Rayon_minimal);
            end;

        if Reg.ValueExists('Retournement_Autorise')
          then GerMountSetup.Retournement_Autorise := Reg.ReadBool('Retournement_Autorise')
          else
            begin
              GerMountSetup.Retournement_Autorise :=
                         FileIni.ReadBool('Pointage','Retournement_Autorise',false);
              Reg.WriteBool('Retournement_Autorise',GerMountSetup.Retournement_Autorise);
            end;

        if Reg.ValueExists('Declinaison_Critique_Est')
          then GerMountSetup.Declinaison_Critique_Est :=
                       Reg.ReadFloat('Declinaison_Critique_Est')
          else
            begin
              GerMountSetup.Declinaison_Critique_Est :=
                FileIni.Readfloat('Pointage', 'Declinaison_Critique_Est', 0);
              Reg.WriteFloat('Declinaison_Critique_Est',GerMountSetup.Declinaison_Critique_Est);
            end;

        if Reg.ValueExists('Declinaison_Critique_Ouest')
          then GerMountSetup.Declinaison_Critique_Ouest :=
                 Reg.ReadFloat('Declinaison_Critique_Ouest')
          else
            begin
              GerMountSetup.Declinaison_Critique_Ouest :=
                FileIni.Readfloat('Pointage', 'Declinaison_Critique_Ouest', 0);
              Reg.WriteFloat('Declinaison_Critique_Ouest', GerMountSetup.Declinaison_Critique_Ouest);
            end;

        if Reg.ValueExists('TelescopeZenithOuest')              // Télescope non retourné
          then GerMountSetup.TelescopeZenithOuest := Reg.ReadBool('TelescopeZenithOuest')
          else GerMountSetup.TelescopeZenithOuest := False;
      if Reg.ValueExists('Monture_FerACheval') then
        GerMountSetup.Monture_FerACheval := Reg.ReadBool('Monture_FerACheval')
      else
      begin
        GerMountSetup.Monture_FerACheval := FileIni.ReadBool('Pointage',
          'Monture_FerACheval', False);
        Reg.WriteBool('Monture_FerACheval', GerMountSetup.Monture_FerACheval);
      end;

      if Reg.ValueExists('Angle_horaire_limite_Est_FerACheval') then
        GerMountSetup.AngleHoraireLimiteEst_FerACheval :=
          Reg.ReadFloat('Angle_horaire_limite_Est_FerACheval')
      else
      begin
        GerMountSetup.AngleHoraireLimiteEst_FerACheval :=
          FileIni.ReadFloat('Pointage',
          'Angle_horaire_limite_Est_FerACheval', 0);
        Reg.WriteFloat('Angle_horaire_limite_Est_FerACheval',
          GerMountSetup.AngleHoraireLimiteEst_FerACheval);
      end;

      if Reg.ValueExists('Angle_horaire_limite_Ouest_FerACheval') then
        GerMountSetup.AngleHoraireLimiteOuest_FerACheval :=
          Reg.ReadFloat('Angle_horaire_limite_Ouest_FerACheval')
      else
      begin
        GerMountSetup.AngleHoraireLimiteOuest_FerACheval :=
          FileIni.ReadFloat('Pointage',
          'Angle_horaire_limite_Ouest_FerACheval', 0);
        Reg.WriteFloat('Angle_horaire_limite_Ouest_FerACheval',
          GerMountSetup.AngleHoraireLimiteOuest_FerACheval);
      end;

      if Reg.ValueExists('Declinaison_Limite_FerACheval') then
        GerMountSetup.DeclinaisonLimite_FerACheval :=
          Reg.ReadFloat('Declinaison_Limite_FerACheval')
      else
      begin
        GerMountSetup.DeclinaisonLimite_FerACheval :=
          FileIni.ReadFloat('Pointage', 'Declinaison_Limite_FerACheval', 0);
        Reg.WriteFloat('Declinaison_Limite_FerACheval',
          GerMountSetup.DeclinaisonLimite_FerACheval);
      end;

        if Reg.ValueExists('Longitude')
          then Lieu.Long:=Reg.ReadFloat('Longitude')
          else Lieu.Long:=0;
        if Reg.ValueExists('Latitude')
          then Lieu.Lat:=Reg.ReadFloat('Latitude')
          else Lieu.Lat:=0;
        if Reg.ValueExists('Altitude')
          then Lieu.Alt:=Reg.ReadFloat('Altitude')
          else Lieu.Alt:=0;
        Backlash.Saved_Park := Backlash.Activated;
        Backlash.StepAD     := round(SpeedIntMCMT.Resol_AD  * Backlash.Value / 60 / 360);
        Backlash.StepDEC    := round(SpeedIntMCMT.Resol_DEC * Backlash.Value / 60 / 360);

        if Reg.ValueExists('King_Activated') then
        begin
          King_Activated:=Reg.ReadBool('King_Activated');
        end
        else
        begin
          King_Activated:= FileIni.ReadBool('Parameters','King',false);
          Reg.WriteBool('King_Activated',King_Activated);
        end;

        if Reg.ValueExists('External_PEC')then
        begin
          ExternalMCMT_PEC.Activated:=Reg.ReadBool('External_PEC');
        end
        else
        begin
          ExternalMCMT_PEC.Activated:=FileIni.ReadBool('Parameters','External_PEC',false);
          Reg.WriteBool('External_PEC',ExternalMCMT_PEC.Activated);
        end;
//        if Reg.ValueExists('Periode0') then
//          ExternalMCMT_PEC.Periode[0]:=Reg.ReadFloat('Periode0')
//        else
//        begin
//          ExternalMCMT_PEC.Periode[0]:=FileIni.ReadFloat('Parameters','Periode0',0);
//          Reg.WriteFloat('Periode0',ExternalMCMT_PEC.Periode[0]);
//        end;
        if Reg.ValueExists('Ordre0') then
          ExternalMCMT_PEC.Ordre[0]:=Reg.ReadInteger('Ordre0')
        else
        begin
          ExternalMCMT_PEC.Ordre[0]:=FileIni.ReadInteger('Parameters','Ordre0',1);
          Reg.WriteInteger('Ordre0',ExternalMCMT_PEC.Ordre[0]);
        end;
        if Reg.ValueExists('Ordre1') then
          ExternalMCMT_PEC.Ordre[1]:=Reg.ReadInteger('Ordre1')
        else
        begin
          ExternalMCMT_PEC.Ordre[1]:=FileIni.ReadInteger('Parameters','Ordre1',2);
          Reg.WriteInteger('Ordre1',ExternalMCMT_PEC.Ordre[1]);
        end;
        if Reg.ValueExists('Ordre2') then
          ExternalMCMT_PEC.Ordre[2]:=Reg.ReadInteger('Ordre2')
        else
        begin
          ExternalMCMT_PEC.Ordre[2]:=FileIni.ReadInteger('Parameters','Ordre2',3);
          Reg.WriteInteger('Ordre2',ExternalMCMT_PEC.Ordre[2]);
        end;
        if Reg.ValueExists('Ordre3') then
          ExternalMCMT_PEC.Ordre[3]:=Reg.ReadInteger('Ordre3')
        else
        begin
          ExternalMCMT_PEC.Ordre[3]:=FileIni.ReadInteger('Parameters','Ordre3',4);
          Reg.WriteInteger('Ordre3',ExternalMCMT_PEC.Ordre[3]);
        end;
        if Reg.ValueExists('Periode1') then
          ExternalMCMT_PEC.Periode[1]:=Reg.ReadFloat('Periode1')
        else
        begin
          ExternalMCMT_PEC.Periode[1]:=FileIni.ReadFloat('Parameters','Periode1',0);
          Reg.WriteFloat('Periode1',ExternalMCMT_PEC.Periode[1]);
        end;
        if Reg.ValueExists('Periode2') then
          ExternalMCMT_PEC.Periode[2]:=Reg.ReadFloat('Periode2')
        else
        begin
          ExternalMCMT_PEC.Periode[2]:=FileIni.ReadFloat('Parameters','Periode2',0);
          Reg.WriteFloat('Periode2',ExternalMCMT_PEC.Periode[2]);
        end;
        if Reg.ValueExists('Periode3') then
          ExternalMCMT_PEC.Periode[3]:=Reg.ReadFloat('Periode3')
        else
        begin
          ExternalMCMT_PEC.Periode[3]:=FileIni.ReadFloat('Parameters','Periode3',0);
          Reg.WriteFloat('Periode3',ExternalMCMT_PEC.Periode[3]);
        end;
        if Reg.ValueExists('Phase0') then
          ExternalMCMT_PEC.Phase[0]:=Reg.ReadFloat('Phase0')
        else
        begin
          ExternalMCMT_PEC.Phase[0]:=FileIni.ReadFloat('Parameters','Phase0',0);
          Reg.WriteFloat('Phase0',ExternalMCMT_PEC.Phase[0]);
        end;
        if Reg.ValueExists('Phase1') then
          ExternalMCMT_PEC.Phase[1]:=Reg.ReadFloat('Phase1')
        else
        begin
          ExternalMCMT_PEC.Phase[1]:=FileIni.ReadFloat('Parameters','Phase1',0);
          Reg.WriteFloat('Phase1',ExternalMCMT_PEC.Phase[1]);
        end;
        if Reg.ValueExists('Phase2') then
          ExternalMCMT_PEC.Phase[2]:=Reg.ReadFloat('Phase2')
        else
        begin
          ExternalMCMT_PEC.Phase[2]:=FileIni.ReadFloat('Parameters','Phase2',0);
          Reg.WriteFloat('Phase2',ExternalMCMT_PEC.Phase[2]);
        end;
        if Reg.ValueExists('Phase3') then
          ExternalMCMT_PEC.Phase[3]:=Reg.ReadFloat('Phase3')
        else
        begin
          ExternalMCMT_PEC.Phase[3]:=FileIni.ReadFloat('Parameters','Phase3',0);
          Reg.WriteFloat('Phase3',ExternalMCMT_PEC.Phase[3]);
        end;
        if Reg.ValueExists('Amplitude0') then
          ExternalMCMT_PEC.Amplitude[0]:=Reg.ReadFloat('Amplitude0')
        else
        begin
          ExternalMCMT_PEC.Amplitude[0]:=FileIni.ReadFloat('Parameters','Amplitude0',0);
          Reg.WriteFloat('Amplitude0',ExternalMCMT_PEC.Amplitude[0]);
        end;
        if Reg.ValueExists('Amplitude1') then
          ExternalMCMT_PEC.Amplitude[1]:=Reg.ReadFloat('Amplitude1')
        else
        begin
          ExternalMCMT_PEC.Amplitude[1]:=FileIni.ReadFloat('Parameters','Amplitude1',0);
          Reg.WriteFloat('Amplitude1',ExternalMCMT_PEC.Amplitude[1]);
        end;
        if Reg.ValueExists('Amplitude2') then
          ExternalMCMT_PEC.Amplitude[2]:=Reg.ReadFloat('Amplitude2')
        else
        begin
          ExternalMCMT_PEC.Amplitude[2]:=FileIni.ReadFloat('Parameters','Amplitude2',0);
          Reg.WriteFloat('Amplitude2',ExternalMCMT_PEC.Amplitude[2]);
        end;
        if Reg.ValueExists('Amplitude3') then
          ExternalMCMT_PEC.Amplitude[3]:=Reg.ReadFloat('Amplitude3')
        else
        begin
          ExternalMCMT_PEC.Amplitude[3]:=FileIni.ReadFloat('Parameters','Amplitude3',0);
          Reg.WriteFloat('Amplitude3',ExternalMCMT_PEC.Amplitude[3]);
        end;
        Reg.CloseKey;
      Finally
        Reg.Free;
        FileIni.free;
      end;

      If AutoComPort and not(SimulatorEnabled) then
      Begin
        TmpPorts := TStringList.Create;
        Try
          EnumComPorts(TmpPorts);
          if (TmpPorts.Count>0) then
          begin
            For i:= 0 to TmpPorts.Count- 1 do
              Try
                Form_scan_mcmt:=TForm_scan_mcmt.create(Nil,TmpPorts); //XE3
              Except
                // AOwner error
                raise Exception.Create('Erreur interne DLL d''interface sur AOwner !');
              End;
            Form_scan_mcmt._Show_;
            Found         :=Form_scan_mcmt.Found_MCMT;
            NumCOMp       :=Form_scan_mcmt.NumCom;
            Form_scan_mcmt.Free;
          end
          else
          begin
            Found:=False;
            ShowMessage('Aucun port série n''a été detecté automatiquement sur cette machine !');
          end;
        Finally
          TmpPorts.Free;
        End;
      end  // AutoSearch
      else
      Begin
        // Essaie qd meme le port COM
        Found         := GetVersionAxes(NumCOMp, 0, Mj_ra, Mn_ra, Mi_ra);
      End;

      If not Found then
      begin
        MCMT2021:=not(MCMT2021);
        If AutoComPort and not(SimulatorEnabled) then
        Begin
          TmpPorts := TStringList.Create;
          Try
            EnumComPorts(TmpPorts);
            if (TmpPorts.Count>0) then
            begin
              For i:= 0 to TmpPorts.Count- 1 do
                Try
                  Form_scan_mcmt:=TForm_scan_mcmt.create(Nil,TmpPorts); //XE3
                Except
                // AOwner error
                  raise Exception.Create('Erreur interne DLL d''interface sur AOwner !');
                End;
              Form_scan_mcmt._Show_;
              Found         :=Form_scan_mcmt.Found_MCMT;
              NumCOMp       :=Form_scan_mcmt.NumCom;
              Form_scan_mcmt.Free;
            end
            else
            begin
              Found:=False;
              ShowMessage('Aucun port série n''a été detecté automatiquement sur cette machine !');
            end;
          Finally
            TmpPorts.Free;
          End;
        end  // AutoSearch
        else
        Begin
          // Essaie qd meme le port COM
          Found         := GetVersionAxes(NumCOMp, 0, Mj_ra, Mn_ra, Mi_ra);
        End;
      end;

      If not Found then
      begin
        If AutoComPort then
        Begin
          If Not User_Has_Stopped_COM_Scans then
            ShowMessage('Le programme n''a pas pu détecter '+Version+' sur les ports COMs détectés sur cette machine !')
          else
            ShowMessage('La détection '+Version+' a été stoppée par l''utilisateur !');
        End
        else
          ShowMessage(Format('Le programme n''a pas pu détecter '+Version+' sur le port COM %d fixé par l''utilisateur!',[NumCOMp]));
        fConnected:=false;
      end
      else
      begin
        // COM found  YES !
        // version du Soft
        ProcessingBox:=TProcessingBox.create(Nil,'Lecture version firmware et init '+Version+' ....'); //XE3
        ProcessingBox.Show;
        ProcessingBox.Refresh;
        GetVersionAxes(NumCOMp, 0, Mj_ra, Mn_ra, Mi_ra);
        GetVersionAxes(NumCOMp, 1, Mj_dc, Mn_dc, Mi_dc);
        if MCMT2021 then
          if ((Mi_ra>9) and (Mi_dc>9)) then PulseGuideFirmware:=true
          else PulseGuideFirmware:=false  // a partir de la version 20, pulseguide par firmware
        else
          if ((Mi_ra>19) and (Mi_dc>19)) then PulseGuideFirmware:=true
          else PulseGuideFirmware:=false;  // a partir de la version 20, pulseguide par firmware

        ProcessingBox.Free;
        if not VersionOk(Mj_ra, Mn_ra, Mi_ra, Mj_dc, Mn_dc, Mi_dc) then
        begin
          fConnected:=false;
          ShowMessage   ('Erreur Fatale, La version firmware de '+Version+' n''est pas la bonne pour cette DLL, mettre à jour le firmware de MCMT !');
          Exit; // Exec finally sections
        end;
        Is_Parking := False;
        // Console creation
        Open_Cod_Eng(NumCOMp,ok); // ouvre le port COM ->> Reste OUVERT par la suite
        if Ok then
        begin
          Reg:= TRegistry.Create ;
          Try
            Reg.RootKey := HKEY_CURRENT_USER;
            if not (Reg.OpenKey('SOFTWARE\MCMT32\', False)) then Reg.OpenKey('SOFTWARE\MCMT32\', true);
            // Regarde si ce qui a été lu dans la base de registres ou le fichier INI est pareil que
            // l'EEPROM de MCMT -> ALPHA
            astring := 'K' + Ansichar(0) + Ansichar(0) + Ansichar(0) + Ansichar(0);
            receivestring := sendcommand(astring, 48, 0);
            If (receivestring<>'') then   // Ce sont la les données VITALES
            begin
              If (ord(receivestring[4]) <> 0) or (ord(receivestring[3]) <> 0) or (ord(receivestring[2]) <> 0)
                                or (ord(receivestring[1]) <> 0)then
              begin
            // Lecture de V_Guidage_AD dans l'EEPROM
              ValueLong :=
                ((ord(receivestring[V_Guidage_EEPROM + 4]) * 256 +
                ord(receivestring[V_Guidage_EEPROM + 3])) * 256 +
                ord(receivestring[V_Guidage_EEPROM + 2])) * 256 +
                ord(receivestring[V_Guidage_EEPROM + 1]);
              If ValueLong <> 0 then
              begin
                if not(MCMT2021) then valueDouble := 80000000 / ValueLong
                else valueDouble := 150000000 / (ValueLong+1);
                if (valueDouble<>SpeedIntMCMT.V_Guidage_AD) then
                begin
                  SpeedIntMCMT.V_Guidage_AD:=valueDouble;
                  Reg.WriteFloat('V_Guidage_AD', SpeedIntMCMT.V_Guidage_AD);
                end;
                Logproc(procName, Format('V_Guidage_AD=%1.3f / %1.3f',
                  [SpeedIntMCMT.V_Guidage_AD, valueDouble]));
              end;
            // Lecture de V_Corr_P_AD dans l'EEPROM
              ValueLong :=
                ((ord(receivestring[V_Corr_P_EEPROM + 4]) * 256 +
                ord(receivestring[V_Corr_P_EEPROM + 3])) * 256 +
                ord(receivestring[V_Corr_P_EEPROM + 2])) * 256 +
                ord(receivestring[V_Corr_P_EEPROM + 1]);
              If ValueLong <> 0 then
              begin
                if not(MCMT2021) then valueDouble := 80000000 / ValueLong
                else valueDouble := 150000000 / (ValueLong+1);
                if (valueDouble<>SpeedIntMCMT.V_Corr_P_AD) then
                begin
                  SpeedIntMCMT.V_Corr_P_AD:=valueDouble;
                  Reg.WriteFloat('V_Corr_P_AD',SpeedIntMCMT.V_Corr_P_AD);
                end;
                Logproc(procName, Format('V_Corr_P_AD=%1.3f / %1.3f',
                  [SpeedIntMCMT.V_Corr_P_AD, valueDouble]));
              end;

            // Lecture de V_Corr_M_AD dans l'EEPROM
              ValueLong :=
                ((ord(receivestring[V_Corr_M_EEPROM + 4]) * 256 +
                ord(receivestring[V_Corr_M_EEPROM + 3])) * 256 +
                ord(receivestring[V_Corr_M_EEPROM + 2])) * 256 +
                ord(receivestring[V_Corr_M_EEPROM + 1]);
              If ValueLong <> 0 then
              begin
                if not(MCMT2021) then valueDouble := 80000000 / ValueLong
                else valueDouble := 150000000 / (ValueLong+1);
                if (valueDouble<>SpeedIntMCMT.V_Corr_M_AD) then
                begin
                  SpeedIntMCMT.V_Corr_M_AD:=valueDouble;
                  Reg.WriteFloat('V_Corr_M_AD',SpeedIntMCMT.V_Corr_M_AD);
                end;
                Logproc(procName, Format('V_Corr_M_AD=%1.3f / %1.3f',
                  [SpeedIntMCMT.V_Corr_M_AD, valueDouble]));
              end;
              // Lecture de V_Point_L_AD dans l'EEPROM

              ValueLong :=
                ((ord(receivestring[V_Point_L_EEPROM + 4]) * 256 +
                ord(receivestring[V_Point_L_EEPROM + 3])) * 256 +
                ord(receivestring[V_Point_L_EEPROM + 2])) * 256 +
                ord(receivestring[V_Point_L_EEPROM + 1]);
              If ValueLong <> 0 then
              begin
                if not(MCMT2021) then valueDouble := 80000000 / ValueLong
                else valueDouble := 150000000 / (ValueLong+1);
                if (valueDouble <> SpeedIntMCMT.V_Point_L_AD) then
                begin
                  SpeedIntMCMT.V_Point_L_AD := valueDouble;
                  Reg.WriteFloat('V_Point_L_AD', SpeedIntMCMT.V_Point_L_AD);
                end;
                Logproc(procName, Format('V_Point_L_AD=%1.3f / %1.3f',
                  [SpeedIntMCMT.V_Point_L_AD, valueDouble]));
              end;

              // Lecture de V_Point_R_AD dans l'EEPROM
              ValueLong :=
                ((ord(receivestring[V_Point_R_EEPROM + 4]) * 256 +
                ord(receivestring[V_Point_R_EEPROM + 3])) * 256 +
                ord(receivestring[V_Point_R_EEPROM + 2])) * 256 +
                ord(receivestring[V_Point_R_EEPROM + 1]);
              If ValueLong <> 0 then
              begin
                if not(MCMT2021) then valueDouble := 80000000 / ValueLong
                else valueDouble := 150000000 / (ValueLong+1);
                if (SpeedIntMCMT.V_Point_R_AD <> valueDouble) then
                begin
                  SpeedIntMCMT.V_Point_R_AD := valueDouble;
                  Reg.WriteFloat('V_Point_R_AD', SpeedIntMCMT.V_Point_R_AD);
                end;
                Logproc(procName, Format('V_Point_R_AD=%1.3f / %1.3f',
                  [SpeedIntMCMT.V_Point_R_AD, valueDouble]));
              end;

              // Lecture de Accel_AD dans l'EEPROM

              ValueInt := ord(receivestring[Accel_EEPROM + 1]);
              If (ValueInt <> SpeedIntMCMT.Accel_AD) then
              begin
                SpeedIntMCMT.Accel_AD := ValueInt;
                Reg.WriteInteger('Accel_AD', SpeedIntMCMT.Accel_AD);
              end;
              Logproc(procName, Format('Accel_AD= %d / %d',
                [SpeedIntMCMT.Accel_AD, ValueInt]));

              // Lecture de DIR_AD dans l'EEPROM
              ValueBool := (ord(receivestring[Dir_EEPROM + 1]) = 1);
              if (ValueBool <> SpeedIntMCMT.Inv_Codeur_AD) then
              begin
                SpeedIntMCMT.Inv_Codeur_AD := ValueBool;
                Reg.WriteBool('DIR_AD', SpeedIntMCMT.Inv_Codeur_AD);
              end;
              Logproc(procName, 'DIR_AD = ' +
                booltostr(SpeedIntMCMT.Inv_Codeur_AD) + ' / ' +
                booltostr(ValueBool));

              // Lecture de Resol_AD dans l'EEPROM
              ValueLong := SpeedIntMCMT.MPasParTour_AD * (ord(receivestring[Reduc_Trunc_EEPROM + 1])
                * 256 + ord(receivestring[Reduc_Trunc_EEPROM + 2]));
              ValueInt := ord(receivestring[Reduc_Frac_EEPROM + 1]) * 256 +
                ord(receivestring[Reduc_Frac_EEPROM + 2]);
              Resol_AD := ValueLong + ValueInt;
              Reduc_AD := Resol_AD / SpeedIntMCMT.MPasParTour_AD;
              SpeedIntMCMT.Resol_AD := ValueLong + ValueInt;
              Logproc(procName, Format('Resol_AD = %d / Reduc_AD = %g',
              [SpeedIntMCMT.Resol_AD, Reduc_AD]));
            end; //If (receivestring<>'')

            if not(Reg.ValueExists('Tracking')) then
            begin
              Reg.WriteBool('Tracking',true);
              fTracking := true;
            end
            else
            begin
              if Reg.ReadBool('Tracking') then
              begin
                fTracking := true;
              end
              else
              begin
                fTracking := false;
              end;
            end;

            // l'EEPROM de MCMT -> DELTA
            Receivestring := sendcommand(astring, 48, 1);
            if (receivestring<>'') then   // Ce sont la les données VITALES
            begin
              // Lecture de V_Guidage_DEC dans l'EEPROM
              ValueLong :=
                ((ord(receivestring[V_Guidage_EEPROM + 4]) * 256 +
                ord(receivestring[V_Guidage_EEPROM + 3])) * 256 +
                ord(receivestring[V_Guidage_EEPROM + 2])) * 256 +
                ord(receivestring[V_Guidage_EEPROM + 1]);
              If ValueLong <> 0 then
              begin
                if not(MCMT2021) then valueDouble := 80000000 / ValueLong
                else valueDouble := 150000000 / (ValueLong+1);
                if (valueDouble <> SpeedIntMCMT.V_Guidage_DEC) then
                begin
                  SpeedIntMCMT.V_Guidage_DEC := valueDouble;
                  Reg.WriteFloat('V_Guidage_DEC', SpeedIntMCMT.V_Guidage_DEC);
                end;
                Logproc(procName, Format('V_Guidage_DEC=%1.3f / %1.3f',
                  [SpeedIntMCMT.V_Guidage_DEC, valueDouble]));
              end;

            // Lecture de V_Corr_P_DEC dans l'EEPROM
              ValueLong :=
                ((ord(receivestring[V_Corr_P_EEPROM + 4]) * 256 +
                ord(receivestring[V_Corr_P_EEPROM + 3])) * 256 +
                ord(receivestring[V_Corr_P_EEPROM + 2])) * 256 +
                ord(receivestring[V_Corr_P_EEPROM + 1]);
              If ValueLong <> 0 then
              begin
                if not(MCMT2021) then valueDouble := 80000000 / ValueLong
                else valueDouble := 150000000 / (ValueLong+1);
                if (valueDouble <> SpeedIntMCMT.V_Corr_P_DEC) then
                begin
                  SpeedIntMCMT.V_Corr_P_DEC := valueDouble;
                  Reg.WriteFloat('V_Corr_P_DEC', SpeedIntMCMT.V_Corr_P_DEC);
                end;
                Logproc(procName, Format('V_Corr_P_DEC=%1.3f / %1.3f',
                  [SpeedIntMCMT.V_Corr_P_DEC, valueDouble]));
              end;

            // Lecture de V_Corr_M_DEC dans l'EEPROM
              ValueLong :=
                ((ord(receivestring[V_Corr_M_EEPROM + 4]) * 256 +
                ord(receivestring[V_Corr_M_EEPROM + 3])) * 256 +
                ord(receivestring[V_Corr_M_EEPROM + 2])) * 256 +
                ord(receivestring[V_Corr_M_EEPROM + 1]);
              If ValueLong <> 0 then
              begin
                if not(MCMT2021) then valueDouble := 80000000 / ValueLong
                else valueDouble := 150000000 / (ValueLong+1);
                if (valueDouble <> SpeedIntMCMT.V_Corr_M_DEC) then
                begin
                  SpeedIntMCMT.V_Corr_M_DEC := valueDouble;
                  Reg.WriteFloat('V_Corr_M_DEC', SpeedIntMCMT.V_Corr_M_DEC);
                end;
                Logproc(procName, Format('V_Corr_M_DEC=%1.3f / %1.3f',
                  [SpeedIntMCMT.V_Corr_M_DEC, valueDouble]));
              end;

            // Lecture de V_Point_L_DEC dans l'EEPROM
              ValueLong :=
                ((ord(receivestring[V_Point_L_EEPROM + 4]) * 256 +
                ord(receivestring[V_Point_L_EEPROM + 3])) * 256 +
                ord(receivestring[V_Point_L_EEPROM + 2])) * 256 +
                ord(receivestring[V_Point_L_EEPROM + 1]);
              If ValueLong <> 0 then
              begin
                if not(MCMT2021) then valueDouble := 80000000 / ValueLong
                else valueDouble := 150000000 / (ValueLong+1);
                if (valueDouble <> SpeedIntMCMT.V_Point_L_DEC) then
                begin
                  SpeedIntMCMT.V_Point_L_DEC := valueDouble;
                  Reg.WriteFloat('V_Point_L_DEC', SpeedIntMCMT.V_Point_L_DEC);
                end;
                Logproc(procName, Format('V_Point_L_DEC=%1.3f / %1.3f',
                  [SpeedIntMCMT.V_Point_L_DEC, valueDouble]));
              end;

            // Lecture de V_Point_R_DEC dans l'EEPROM
              ValueLong :=
                ((ord(receivestring[V_Point_R_EEPROM + 4]) * 256 +
                ord(receivestring[V_Point_R_EEPROM + 3])) * 256 +
                ord(receivestring[V_Point_R_EEPROM + 2])) * 256 +
                ord(receivestring[V_Point_R_EEPROM + 1]);
              If ValueLong <> 0 then
              begin
                if not(MCMT2021) then valueDouble := 80000000 / ValueLong
                else valueDouble := 150000000 / (ValueLong+1);
                if (SpeedIntMCMT.V_Point_R_DEC <> valueDouble) then
                begin
                  SpeedIntMCMT.V_Point_R_DEC := valueDouble;
                  Reg.WriteFloat('V_Point_R_DEC', SpeedIntMCMT.V_Point_R_DEC);
                end;
                Logproc(procName, Format('V_Point_R_DEC=%1.3f / %1.3f',
                  [SpeedIntMCMT.V_Point_R_DEC, valueDouble]));
              end;

              ValueInt:= ord(receivestring[VM_Acce+1]);
              If (ValueInt<>SpeedIntMCMT.Accel_DEC) then
              begin
                SpeedIntMCMT.Accel_DEC:=ValueInt;
                Reg.WriteInteger('Accel_DEC', SpeedIntMCMT.Accel_DEC);
              end;

            // Lecture de Accel_DEC dans l'EEPROM
              ValueInt := ord(receivestring[Accel_EEPROM + 1]);
              If (ValueInt <> SpeedIntMCMT.Accel_DEC) then
              begin
                SpeedIntMCMT.Accel_DEC := ValueInt;
                Reg.WriteInteger('Accel_DEC', SpeedIntMCMT.Accel_DEC);
              end;
              Logproc(procName, Format('Accel_DEC= %d / %d',
                [SpeedIntMCMT.Accel_DEC, ValueInt]));

            // Lecture de Resol_DEC dans l'EEPROM
              ValueLong := SpeedIntMCMT.MPasParTour_DEC * (ord(receivestring[Reduc_Trunc_EEPROM + 1])
                * 256 + ord(receivestring[Reduc_Trunc_EEPROM + 2]));
              ValueInt := ord(receivestring[Reduc_Frac_EEPROM + 1]) * 256 +
                ord(receivestring[Reduc_Frac_EEPROM + 2]);
              Resol_DEC := ValueLong + ValueInt;
              Reduc_DEC := Resol_DEC / SpeedIntMCMT.Microstep_DEC;
              (* if ValueInt = 0 //
                then
                SpeedIntMCMT.Cable_DEC := False
                else
                SpeedIntMCMT.Cable_DEC := True; *)
              SpeedIntMCMT.Resol_DEC := ValueLong + ValueInt;
              Logproc(procName, Format('Resol_DEC = %d / Reduc_DEC = %g',
                [SpeedIntMCMT.Resol_DEC, Reduc_DEC]));
            end;     //if (receivestring<>'')
            Reg.CloseKey;
            end;
          Finally
            Reg.Free;
          end;

          // Est ce que le telescope est parké ?
          // OU le fait que le telescope est en mode STOP
          astring       := 'r' + Ansichar(0) + Ansichar(0) + Ansichar(0) + Ansichar(0);
          receivestring := sendcommand(astring, 11, 0);
          if (ord(receivestring[11]) = 1) then fParked := true else fParked := false;
          Form2.ButtonParkUnpark.Enabled:=true;
          if fParked then
          begin
            Form2.BitBtnSideral.Glyph:=Form2.BitBtnArret.Glyph;
            Form2.LabelSideral.Color:=clRed;
            Form2.BitBtnSideral.Enabled:=false;
            STSTel.Alpha := CalculeTSL(Now+SpeedIntMCMT.GMT/24,Lieu.Long) - Park_AH;
            STSTel.Delta := Park_Dec;
            Form2.ButtonParkUnpark.Caption:='Unpark';
            If GerMountSetup.Monture_Allemande or GerMountSetup.Monture_FerACheval then
            begin
              If GerMountSetup.Monture_Allemande then
                ProcessingBox := TProcessingBox.create(Nil,
                  'Telescope parké : orientation tube ' +
                  'monture Allemande connue...');
              If GerMountSetup.Monture_FerACheval then
                ProcessingBox := TProcessingBox.create(Nil,
                  'Telescope parké : orientation tube ' +
                  'monture Fer à Cheval connue...');
              ProcessingBox.Width := 520;
            end
            else
              ProcessingBox:=TProcessingBox.create(Nil,'Telescope parké...');  //XE3
            ProcessingBox.Show;
            ProcessingBox.Refresh;
            Sleep(2000);
            ProcessingBox.Free;
          end
          else
          begin
            Form2.BitBtnSideral.Enabled:=true;
            Form2.BitBtnSideral.Glyph:=Form2.BitBtnMarche.Glyph;
            Form2.LabelSideral.Color:=clGreen;
            // Dans le cas d'une monture allemande
            // ou d'une monture fer à cheval, il faut savoir, lors de
            // l'initialisation des codeurs, si le télescope est retourné ou non.
            // Lorsque l'on sort d'un "park", l'état (retourné ou non)
            // du télescope est inscrit dans la base de registre, il n'est donc
            // pas nécessaire de poser la question.

            If (GerMountSetup.Monture_Allemande or
              GerMountSetup.Monture_FerACheval)
            then
            begin
              // De quel coté sommes nous ????
              ASK_FortelescopeOrientation(Lieu.Lat);
              // <- Toujours demander a l'INIT
            end; // German Mount
          end; // Park Active
          /////////////////////////////////
         TimeCheck                      := 1000; // 1s
          ExternalMCMT_PEC.FCorrectionPeriodeMs       := TimeCheck;
          // Cree les 5 TIMERS
          CreateAllTimers;
          Try
            // Initialisation de Delta et Alpha avec dernières valeurs enregistrées
            // Lit La valeur des encodeurs, fatal si ca ne repond pas...
            If not Calibrate(STSTel.Alpha,STSTel.Delta) then
               Raise Exception.create(Version+' initialisation -> Erreur fatale, Calibrate a échoué !');
          Except
            FreeAllTimers;
            Raise;
          End;
          fConnected:=True;
        end;  // if Ok //Le COM a pu etre OUVERT
      end; // Com found
      Form2.TimerCoord.Enabled:=true;
    Except
      On E:Exception do
      Begin
        raise Exception.create('Erreur d''initialisation de '+Version+' -> '+E.Message);
      End;
    end;
  end;
  if ((Value = false) and (fConnected = true)) then
  begin
    Form2.TimerCoord.Enabled:=false;
    DisableTimers;
    CloseCom;
    FreeAllTimers;
    fConnected:=false;
    Form2.ButtonParkUnpark.Enabled:=true;
    Try
      Reg:= TRegistry.Create;
      Try
        Reg.RootKey := HKEY_CURRENT_USER;
        // Principe :

        if not (Reg.OpenKey('SOFTWARE\MCMT32\', False)) then Reg.OpenKey('SOFTWARE\MCMT32\', True);
        SectionSTSTel.Enter;
        Try
          Reg.WriteFloat('LastAlpha', STSTel.Alpha);
          Reg.WriteFloat('LastDelta', STSTel.Delta);
        Finally
          SectionSTSTel.Leave;
        End;
        Reg.WriteBool ('TelescopeZenithOuest',TelescopeOuest);
        Reg.CloseKey;
      Finally
        Reg.Free;
      End;
      FileIni:= TIniFile.Create(return_MCMT_StoreIniFilePath);
      SectionSTSTel.Enter;
      Try
        with FileIni do
        begin
          WriteString('Configuration', 'LastDelta', floattostr(STSTel.Delta));
          WriteString('Configuration', 'LastAlpha', floattostr(STSTel.Alpha));
        end;
      Finally
        SectionSTSTel.Leave;
        FileIni.free;
      End;
    Except
    End;
  end;
  LogEndProc(procName);
end;

procedure Set_TargetDeclination_Core(Value: Double);
Const
  procName='Set_TargetDeclination_Core';
begin
  LogEnterProc(procName);
  if (Value > 90) or (Value < -90) then
  begin
    raise EoleSysError.Create('Declination out of [-90,90]', $80040401, 0);
  end
  else
  begin
    fTargetDeclination := Value;
    fTargetDecOK := true;
  end;
  LogEndProc(procName+' '+FloatToStr(Value));
  WriteToTrace('TargetDeclination<-- '+FloatToStr(Value));
end;

procedure Set_TargetRightAscension_Core(Value: Double);
Const
  procName='Set_TargetRightAscension_Core';
begin
  LogEnterProc(procName);
  if (Value > 24) or (Value < 0) then
  begin
    raise EoleSysError.Create('Right ascension out of [0,24]', $80040401, 0);
  end
  else
  begin
    fTargetRightAscension := Value;
    fTargetAscOK := true;
  end;
  LogEndProc(procName+' '+FloatToStr(Value));
  WriteToTrace('TargetRightAscension<-- '+FloatToStr(Value));
end;

procedure SetPark_Core;
Const
  procName='SetPark_Core';
var
  Alpha: double;
begin
  LogEnterProc(procName);
  if fConnected then
  begin
    Alpha := Get_RightAscension_Core;
    fParkAH :=Get_SiderealTime_Core- Alpha;
    fParkDelta := Get_Declination_Core;
  end;
  LogEndProc(procName);
  WriteToTrace('SetPark');
end;

function SetFreeSpeed(Speed_rad:double;device:integer): Boolean;
var
  astring : ShortString;
  SIGNE,MMSB,MSB,LSB,LLSB: byte;
  Resolution:integer;
  Speed_trs,aval:double;
Const
  Procname='SetFreeSpeed';

begin
  if device=C_Alpha then
  begin
    Resolution:=SpeedIntMCMT.Resol_AD;
  end
  else
  begin
    Resolution:=SpeedIntMCMT.Resol_DEC;
  end;
  Try
    if Speed_rad <> 0 then
    begin
      Speed_trs:=Speed_rad/T_pi*Resolution;
      if not(MCMT2021) then aval:=80000000 / Speed_trs
      else aval:=150000000 / Speed_trs-1;
      MMSB :=HH(round(abs(aval)));
      MSB  :=LH(round(abs(aval)));
      LSB  :=HL(round(abs(aval)));
      LLSB :=LL(round(abs(aval)));
      SIGNE := 0;
      if (aval>0) then SIGNE := 1;
      astring := 'R' + AnsiChar(MMSB) + AnsiChar(MSB) + AnsiChar(LSB) + AnsiChar(LLSB) + AnsiChar(SIGNE);
      while (IsAxisSlewing_BackLash(device)) do WaitMainthread(procName);
      sendcommand(astring, 0, device);
    end;
  Finally
  End;
  result := True;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function ReturnVersionDLL_str(Index: Integer): string;
Const
  VersionInfo: array [1 .. 8] of string = ('FileDescription', 'CompanyName',
    'FileVersion', 'InternalName', 'LegalCopyRight', 'OriginalFileName',
    'ProductName', 'ProductVersion');

  Version_Inconnue = 'Version inconnue !';
var

  Handle: DWord;
  Info: Pointer;
  InfoData: Pointer;
  InfoSize: LongInt;
  DataLen: UInt;
  LangPtr: Pointer;
  InfoType: string;

begin
  Result := Version_Inconnue;

  Try
    InfoSize := GetFileVersionInfoSize
      (Pchar(McmtXX + '_ASCOM.exe'), Handle);

    If (InfoSize > 0) then
    begin
      GetMem(Info, InfoSize);
      Try
        If GetFileVersionInfo(Pchar(McmtXX + '_ASCOM.exe'), Handle,
          InfoSize, Info) then
        begin
          InfoType := VersionInfo[index];

          if VerQueryValue(Info, '\VarFileInfo\Translation', LangPtr, DataLen)
          then
            InfoType := Format('\StringFileInfo\%0.4x%0.4x\%s'#0,
              [LoWord(LongInt(LangPtr^)), HiWord(LongInt(LangPtr^)), InfoType]);
          if VerQueryValue(Info, @InfoType[1], InfoData, DataLen) then
            Result := strPas(Pchar(InfoData)); // Based on FileVersion
        end;

      Finally
        FreeMem(Info, InfoSize);
      End;

    end;

  except
    Result := Version_Inconnue;
  end;
end;

procedure SetupDialog_Core;
Const
  procName='SetupDialog_Core';
var

  SetupTelescope  : TSetupTelescope;
  Form_Etat_Telescope : TForm_Etat_Telescope;
  Form_scan_mcmt  : TForm_scan_mcmt;
  DeviceIni       : TIniFile;
  Reg             : TRegistry;

  S               : string;
  found           : boolean;
  c,i             : Integer;
  TmpPorts        : TStringList;

  T               : string;

  Mj_ra,
  Mn_ra, Mi_ra    : Byte;
  Mj_dc, Mn_dc,
  Mi_dc           : Byte;

  COM_OK          : Boolean;
  LongSetup,
  LatSetup,
  AltSetup        : Double;
  AutoFindCOM     : Boolean;
  ProcessingBox   : TProcessingBox;
  Latitude        : Double;
  NumCOM          : Byte;
Const
  FileVersionProduct=3;

  Function ReadlatfromRegistry:Double;
  Var
    Reg             : TRegistry;
  Begin
    Result:=Pi/4;  // + 45N
    Reg         := TRegistry.Create;
    Try
    Reg.RootKey := HKEY_CURRENT_USER;
    If Reg.OpenKey('SOFTWARE\MCMT32\', False) then
    Begin
      If Reg.ValueExists('Latitude') then
        Result:=Reg.ReadFloat('Latitude');
      Reg.Closekey;
    End;
    Finally
      Reg.Free;
    End;
  End;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

begin
  LogEnterProc(procName);
  WriteToTrace('SetupDialog');
  COM_OK           := False;
  AutoFindCOM      := True;

  FormatSettings.decimalseparator := '.';

  Latitude         := ReadlatfromRegistry;

  SetupTelescope   := TSetupTelescope.create(Nil,Latitude); // XE3
  Form_Etat_Telescope := TForm_Etat_Telescope.create(Nil,Latitude); // par analogie ???


//  SetupTelescope.TabSheetASCOM_PEC_KING.TabVisible:=true; // Do not show (only for ASCOM)

  SetupTelescope.caption :=SetupTelescope.caption+ReturnVersionDLL_str(FileVersionProduct);

  DeviceIni   := TIniFile.Create(return_MCMT_StoreIniFilePath);
  Reg         := TRegistry.Create;
  Try
  Reg.RootKey := HKEY_CURRENT_USER;
  if not (Reg.OpenKey('SOFTWARE\MCMT32\', False)) then Reg.OpenKey('SOFTWARE\MCMT32\', true);
  NumCOM:=1;

  if Reg.ValueExists('MCMT2021') then
    MCMT2021 := Reg.ReadBool('MCMT2021')
   else
   begin
     MCMT2021 := DeviceIni.ReadBool('Parameters', 'MCMT2021', False);
     Reg.WriteBool('MCMT2021', MCMT2021);
  end;

  if Reg.ValueExists('Port') then
  begin
    NumCOM      := Reg.ReadInteger('Port');
    Try
    AutoFindCOM := Reg.ReadBool   ('FindAutoPort');
    Except
    AutoFindCOM := True;
    End;
  end
  else
  begin
    NumCOM := DeviceIni.ReadInteger('Configuration', 'Port', 1);
    Reg.WriteInteger('Port', NumCOM);
  end;

  if Reg.ValueExists('SimulatorEnabled') then
    SimulatorEnabled:= Reg.ReadBool('SimulatorEnabled')
  else
    SimulatorEnabled:=false;
  Reg.CloseKey;
  Finally
  Reg.Free;
  DeviceIni.free;
  End;

  TmpPorts := TStringList.Create;
  EnumComPorts(TmpPorts);
  if not(MCMT2021) then SetupTelescope.caption := 'MCMT32 configuration, version : '+
    ReturnVersionDLL_str(FileVersionProduct)
  else SetupTelescope.caption := 'MCMT2021 configuration, version : '+
    ReturnVersionDLL_str(FileVersionProduct);

  Try

  if (TmpPorts.Count>0) then
   for I := 0 to TmpPorts.Count - 1 do
    SetupTelescope.ComboBoxNumCOM.Items.Add(TmpPorts[i]);

  SetupTelescope.ComboBoxNumCOM.Visible         :=AutoFindCOM;
  SetupTelescope.NbreEditPortSerieForced.Visible:=Not AutoFindCOM;
  SetupTelescope.NbreEditPortSerieForced.Text   :=Inttostr(NumCOM);
//  AutoFindCom:=true;
  if AutoFindCOM and (TmpPorts.Count>0) then
  Begin
      Form_scan_mcmt:=TForm_scan_mcmt.create(Nil,TmpPorts); //XE3
      Form_scan_mcmt._Show_;
      Found:= Form_scan_mcmt.Found_MCMT;
      NumCOM:=Form_scan_mcmt.NumCom;
      Form_scan_mcmt.Free;
      if not(Found) then
      begin
        MCMT2021:= not(MCMT2021);
        if AutoFindCOM and (TmpPorts.Count>0) then
        Begin
          Form_scan_mcmt:=TForm_scan_mcmt.create(Nil,TmpPorts); //XE3
          Form_scan_mcmt._Show_;
          Found:= Form_scan_mcmt.Found_MCMT;
          NumCOM:=Form_scan_mcmt.NumCom;
          Form_scan_mcmt.Free;
        End
        Else
          Found:=True;
      end;
  end;

  ///////////////////

{  if found then
  begin
    if MCMT2021 then showmessage('MCMT2021') else showmessage('MCMT32');

  end
  else showmessage('rien'); }

  If not Found then // toujours pas trouvé?
  begin
    If AutoFindCOM then
    Begin

      If (TmpPorts.Count>0) then
      begin
          S := '';
          // create message String, COM related !
          c := 0;
          while (c < TmpPorts.Count) do
          begin
            T := TmpPorts[c];
            if (S<>'') then
              S := S + ', COM ' + T
            else
              S := 'COM ' + T;
            inc(c);
          end;

          if User_Has_Stopped_COM_Scans then
           S:='L''utilisateur a abandonné la rechercher des ports COM sur ' + S + ' ! Voulez-vous poursuivre quand même ?'
          else
           S:='Le programme n''a pas pu détecter '+Version+' sur ' + S + ' ! Voulez-vous poursuivre quand même ?'

      end
      else
      S:='Aucun port COM n''a été détecté automatiquement sur ce PC, Voulez-vous poursuivre quand même et le rentrer manuellement ?';


      If MessageDlg(S,mtConfirmation,[mbYes, mbNo], 0) = mrYes then
      begin
        SetupTelescope.ComboBoxNumCOM.ItemIndex := 0;
      end
      else
      begin
        SetupTelescope.Free; //Destroy...
        Exit; // calls finally
      end;

    End;
  end;

  ////////////////
  SetupTelescope.GroupBox_AD.caption := 'Axe ALPHA, Firmware inconnu';
  SetupTelescope.GroupBox_DEC.caption := 'Axe DELTA, Firmware inconnu';
  if GetVersionAxes(NumCom, C_Alpha, Mj_ra, Mn_ra, Mi_ra) //
  then
    SetupTelescope.GroupBox_AD.caption := 'Axe ALPHA, Firmware ' +
      Inttostr(Mj_ra) + '.' + Inttostr(Mn_ra) + '.' + Inttostr(Mi_ra);
  if GetVersionAxes(NumCom, C_Delta, Mj_dc, Mn_dc, Mi_dc) //
  then
    SetupTelescope.GroupBox_DEC.caption := 'Axe DELTA, Firmware ' +
      Inttostr(Mj_dc) + '.' + Inttostr(Mn_dc) + '.' + Inttostr(Mi_dc);

  If Not AutoFindCOM then
  begin
    ProcessingBox:=TProcessingBox.create(Nil,'Lecture version firmware....');  //XE3
    ProcessingBox.Show;
    ProcessingBox.Refresh;
    if GetVersionAxes(NumCOM, 0, Mj_ra, Mn_ra, Mi_ra) then
    begin
     COM_OK := True ;
     Found  := False;
     ProcessingBox.Free;
    end
    else
    begin
      ShowMessage(Format('Connexion à '+Version+' impossible sur ce port COM %d !',[NumCOM]));
      COM_OK := False;
      Found  := False;
      ProcessingBox.Free;
    end;
  end;


  if Found then
  Begin
     ProcessingBox:=TProcessingBox.create(Nil,'Lecture version firmware et init '+Version+'....');  //XE3
     ProcessingBox.Show;
     ProcessingBox.Refresh;
     If not GetVersionAxes(NumCOM, 0, Mj_ra, Mn_ra, Mi_ra) or
        not GetVersionAxes(NumCOM, 1, Mj_dc, Mn_dc, Mi_dc) or
        not VersionOk(Mj_ra, Mn_ra, Mi_ra, Mj_dc, Mn_dc, Mi_dc) then
     begin
      ProcessingBox.Free;
      ShowMessage('AVERTISSEMENT : La version firmware de '+Version+' n''est pas la bonne pour ce plugin, mettre à jour le firmware de '+Version+' sous peine d''obtenir un fonctionnement ératique !');
     end
     else
     ProcessingBox.Free;
  end;

  Finally
  TmpPorts.Free;
  end;

  Reg         := TRegistry.Create;
  DeviceIni   := TIniFile.Create(return_MCMT_StoreIniFilePath);

  Try
  Reg.RootKey := HKEY_CURRENT_USER;
  if not (Reg.OpenKey('SOFTWARE\MCMT32\', False)) then Reg.OpenKey('SOFTWARE\MCMT32\', true);

  with DeviceIni do // Regarde dans le .INI
  begin

    If AutoFindCOM then
    Begin
      if not Found then
      begin
        SetupTelescope.ComboBoxNumCOM.Enabled := True; // On peut le rentrer a la main
        COM_OK := False; //  Sinon il va tenter de lire les valeurs de MCMT !!
      end
      else
      begin
        SetupTelescope.ComboBoxNumCOM.text    := inttostr(NumCOM);
        SetupTelescope.ComboBoxNumCOM.Enabled := False;
      end;
    End;

    If Reg.ValueExists('LastDelta') then
      STSTel.Delta := Reg.ReadFloat('LastDelta')
    else
    begin
      STSTel.Delta := strtofloat(ReadString('Configuration', 'LastDelta', '0'));
      Reg.WriteFloat('LastDelta', STSTel.Delta);
    end;

    if Reg.ValueExists('LastAlpha') then
      STSTel.Alpha := Reg.ReadFloat('LastAlpha')
    else
    begin
      STSTel.Alpha := strtofloat(ReadString('Configuration', 'LastAlpha', '0'));
      Reg.WriteFloat('LastAlpha', STSTel.Alpha);
    end;

    if Reg.ValueExists('DIR_AD') then
      SetupTelescope.CheckBox_DIR_AD.Checked := Reg.ReadBool('DIR_AD')
    else
    begin
      SetupTelescope.CheckBox_DIR_AD.Checked := ReadBool('Parameters', 'DIR_AD', False);
      Reg.WriteBool('DIR_AD', SetupTelescope.CheckBox_DIR_AD.Checked);
    end;

    if Reg.ValueExists('DIR_DEC') then
      SetupTelescope.CheckBox_DIR_DEC.Checked := Reg.ReadBool('DIR_DEC')
    else
    begin
      SetupTelescope.CheckBox_DIR_DEC.checked := ReadBool('Parameters', 'DIR_DEC', False);
      Reg.WriteBool('DIR_DEC', SetupTelescope.CheckBox_DIR_DEC.Checked);
    end;

{    if Reg.ValueExists('PEC_AD') then
      SetupTelescope.CheckBox_PEC.Checked := Reg.ReadBool('PEC_AD')
    else
    begin
      SetupTelescope.CheckBox_PEC.checked := ReadBool('Parameters', 'PEC_AD', False);
      Reg.WriteBool('PEC_AD', SetupTelescope.CheckBox_PEC.Checked);
    end;}
    SetupTelescope.CheckBoxMCMT2021.Checked:=MCMT2021;

    If Reg.ValueExists('TimeOutMs_ConnectionsWrite') then
    begin
     SetupTelescope.NumberEditWriteTimeOutms.Text := Inttostr(Reg.ReadInteger('TimeOutMs_ConnectionsWrite'));
    end
    else
     SetupTelescope.NumberEditWriteTimeOutms.text:=Inttostr(TimeOutMs_ConnectionsWrite);

    If Reg.ValueExists('TimeOutMs_ConnectionsRead') then
    begin
       SetupTelescope.NumberEditReadTimeoutMs.Text  := Inttostr(Reg.ReadInteger('TimeOutMs_ConnectionsRead'));
    end
    else
      SetupTelescope.NumberEditReadTimeoutMs.Text :=Inttostr(TimeOutMs_ConnectionsRead);

    If Reg.ValueExists('PurgeCommMethod') then
     SetupTelescope.CheckBoxPurgCOMM.Checked:= Reg.ReadBool('PurgeCommMethod')
    else
     SetupTelescope.CheckBoxPurgCOMM.Checked:= False;

    if Reg.ValueExists('LogEnabled') then
    begin
      LogEnabled:= Reg.ReadBool('LogEnabled');
    end
    else
      LogEnabled:=False;

    if Reg.ValueExists('SimulatorEnabled') then
    begin
      SimulatorEnabled:= Reg.ReadBool('SimulatorEnabled');
    end
    else
      SimulatorEnabled:=False;

    if Reg.ValueExists('TraceEnabled') then
    begin
      TraceEnabled:= Reg.ReadBool('TraceEnabled');
    end
    else
      TraceEnabled:=False;

    SetupTelescope.CheckBoxLogFile.Checked:=LogEnabled;
    SetupTelescope.CheckBoxTrace.Checked:=TraceEnabled;
    if Reg.ValueExists('FreeSpeed') then
      FreeSpeed:=Reg.ReadBool('FreeSpeed')
    else
      FreeSpeed:=False;
    SetupTelescope.CheckBoxFreeSpeed.OnClick:=nil;
    SetupTelescope.CheckBoxFreeSpeed.Checked:=FreeSpeed;
    SetupTelescope.CheckBoxFreeSpeed.OnClick:=SetupTelescope.CheckBoxFreeSpeedClick;
    SetupTelescope.CheckBoxSimulator.Checked:=SimulatorEnabled;
    if FreeSpeed then
    begin
      SetupTelescope.Edit_V_Guidage_AD.Enabled:=false;
      SetupTelescope.Edit_V_Corr_P_AD.Enabled:=false;
      SetupTelescope.Edit_V_Corr_M_AD.Enabled:=false;
      SetupTelescope.Edit_V_Point_L_AD.Enabled:=false;
      SetupTelescope.Edit_V_Guidage_DEC.Enabled:=false;
      SetupTelescope.Edit_V_Corr_P_DEC.Enabled:=false;
      SetupTelescope.Edit_V_Corr_M_DEC.Enabled:=false;
      SetupTelescope.Edit_V_Point_L_DEC.Enabled:=false;
      SetupTelescope.Panel_V_Guidage_AD.Font.Color:=clBlack;
      SetupTelescope.Pane_V_Corr_P_AD.Font.Color:=clBlack;
      SetupTelescope.Panel_V_Corr_M_AD.Font.Color:=clBlack;
      SetupTelescope.Pane_V_Point_L_AD.Font.Color:=clBlack;
      SetupTelescope.Panel_V_Point_R_AD.Caption:='Vit. Rapide';
      SetupTelescope.Panel_V_Guidage_DEC.Font.Color:=clBlack;
      SetupTelescope.Panel_V_Corr_P_DEC.Font.Color:=clBlack;
      SetupTelescope.Panel_V_Corr_M_DEC.Font.Color:=clBlack;
      SetupTelescope.Panel_V_Point_L_DEC.Font.Color:=clBlack;
      SetupTelescope.Panel_V_Point_R_DEC.Caption:='Vit. Rapide';
      SetupTelescope.Panel_V_Guidage_AD.Font.Color:=clInactiveCaption;
      SetupTelescope.Pane_V_Corr_P_AD.Font.Color:=clInactiveCaption;
      SetupTelescope.Panel_V_Corr_M_AD.Font.Color:=clInactiveCaption;
      SetupTelescope.Pane_V_Point_L_AD.Font.Color:=clInactiveCaption;
      SetupTelescope.Panel_V_Point_R_AD.Caption:='Vit. MAX';
      SetupTelescope.Panel_V_Guidage_DEC.Font.Color:=clInactiveCaption;
      SetupTelescope.Panel_V_Corr_P_DEC.Font.Color:=clInactiveCaption;
      SetupTelescope.Panel_V_Corr_M_DEC.Font.Color:=clInactiveCaption;
      SetupTelescope.Panel_V_Point_L_DEC.Font.Color:=clInactiveCaption;
      SetupTelescope.Panel_V_Point_R_DEC.Caption:='Vit. MAX';
    end
    else
    begin
      SetupTelescope.Edit_V_Guidage_AD.Enabled:=true;
      SetupTelescope.Edit_V_Corr_P_AD.Enabled:=true;
      SetupTelescope.Edit_V_Corr_M_AD.Enabled:=true;
      SetupTelescope.Edit_V_Point_L_AD.Enabled:=true;
      SetupTelescope.Edit_V_Guidage_DEC.Enabled:=true;
      SetupTelescope.Edit_V_Corr_P_DEC.Enabled:=true;
      SetupTelescope.Edit_V_Corr_M_DEC.Enabled:=true;
      SetupTelescope.Edit_V_Point_L_DEC.Enabled:=true;
      SetupTelescope.Panel_V_Guidage_AD.Font.Color:=clBlack;
      SetupTelescope.Pane_V_Corr_P_AD.Font.Color:=clBlack;
      SetupTelescope.Panel_V_Corr_M_AD.Font.Color:=clBlack;
      SetupTelescope.Pane_V_Point_L_AD.Font.Color:=clBlack;
      SetupTelescope.Panel_V_Point_R_AD.Caption:='Vit. Rapide';
      SetupTelescope.Panel_V_Guidage_DEC.Font.Color:=clBlack;
      SetupTelescope.Panel_V_Corr_P_DEC.Font.Color:=clBlack;
      SetupTelescope.Panel_V_Corr_M_DEC.Font.Color:=clBlack;
      SetupTelescope.Panel_V_Point_L_DEC.Font.Color:=clBlack;
      SetupTelescope.Panel_V_Point_R_DEC.Caption:='Vit. Rapide';
    end;

    if Reg.ValueExists('Raq_Can') then
    if Reg.ReadBool('Raq_Can')
         then SetupTelescope.RadioGroup_Raq_Can.ItemIndex:=1
         else SetupTelescope.RadioGroup_Raq_Can.ItemIndex:=0
    else
    begin
      if ReadBool('Parameters', 'Raq_Can', False)
            then SetupTelescope.RadioGroup_Raq_Can.ItemIndex:=1
            else SetupTelescope.RadioGroup_Raq_Can.ItemIndex:=0;
         Reg.WriteBool('Raq_Can',(SetupTelescope.RadioGroup_Raq_Can.ItemIndex=1));
    end;

    SpeedIntMCMT.Inv_Codeur_AD  := SetupTelescope.CheckBox_DIR_AD.Checked;
    SpeedIntMCMT.Inv_Codeur_DEC := SetupTelescope.CheckBox_DIR_DEC.checked;

      // Paramètres Axe alpha ************************************************
      // *********************************************************************
    InitPossible:=false;
    if Reg.ValueExists('Microstep_AD') then
    begin
      SpeedIntMCMT.Microstep_AD := Reg.ReadInteger('Microstep_AD');
      if SpeedIntMCMT.Microstep_AD=0 then
      begin
        SpeedIntMCMT.Microstep_AD:=128;
        Reg.WriteInteger('Microstep_AD', SpeedIntMCMT.Microstep_AD);
      end;
    end
    else
    begin
      SpeedIntMCMT.Microstep_AD := ReadInteger('Parameters', 'Microstep_AD', 128);
      Reg.WriteInteger('Microstep_AD', SpeedIntMCMT.Microstep_AD);
    end;
    SetupTelescope.Edit_MPasParPas_AD.text := inttostr(SpeedIntMCMT.Microstep_AD);

    if Reg.ValueExists('Step_AD') then
    begin
      SpeedIntMCMT.Step_AD := Reg.ReadInteger('Step_AD');
      if SpeedIntMCMT.Step_AD=0 then
      begin
        SpeedIntMCMT.Step_AD:=200;
        Reg.WriteInteger('Step_AD', SpeedIntMCMT.Step_AD);
      end;
    end
    else
    begin
      SpeedIntMCMT.Step_AD := ReadInteger('Parameters', 'Step_AD', 200);
      Reg.WriteInteger('Step_AD', SpeedIntMCMT.Step_AD);
    end;
    SetupTelescope.Edit_PasParTour_AD.text := inttostr(SpeedIntMCMT.Step_AD);

    SpeedIntMCMT.MPasParTour_AD:=SpeedIntMCMT.Microstep_AD*SpeedIntMCMT.Step_AD;

    if Reg.ValueExists('ReducAlpha') then
    begin
      SpeedIntMCMT.Reduc_AD:=Reg.ReadFloat('ReducAlpha');
      if SpeedIntMCMT.Reduc_AD=0 then
      begin
        SpeedIntMCMT.Reduc_AD:=360;
        Reg.WriteInteger('Step_AD', SpeedIntMCMT.Step_AD);
      end;
    end
    else
    begin
      SpeedIntMCMT.Reduc_AD := ReadFloat('Parameters', 'ReducAlpha', 360);
      Reg.WriteFloat('ReducAlpha',SpeedIntMCMT.Reduc_AD);
    end;

    SpeedIntMCMT.Resol_AD:=trunc(SpeedIntMCMT.Microstep_AD*SpeedIntMCMT.Reduc_AD*SpeedIntMCMT.Step_AD);
    SetupTelescope.Edit_Resol_AD.Text := Inttostr(SpeedIntMCMT.Resol_AD);
    InitPossible:=true;

    if frac(SpeedIntMCMT.Resol_AD / SpeedIntMCMT.Step_AD/SpeedIntMCMT.Microstep_AD) = 0 //
    then
      SetupTelescope.Edit_Reduc_AD.Text :=
        Inttostr(Trunc(SpeedIntMCMT.Resol_AD /SpeedIntMCMT.Step_AD/SpeedIntMCMT.Microstep_AD))
    else
      SetupTelescope.Edit_Reduc_AD.Text :=
        floattostrf(SpeedIntMCMT.Resol_AD /SpeedIntMCMT.Step_AD/SpeedIntMCMT.Microstep_AD, ffFixed, 8, 4);

    if Reg.ValueExists('V_Guidage_AD') then
      SetupTelescope.Edit_V_Guidage_AD.text := Format('%1.3f',[Reg.ReadFloat('V_Guidage_AD')])
    else
    begin
      SetupTelescope.Edit_V_Guidage_AD.text := ReadString('Parameters', 'V_Guidage_AD', '1');
      Reg.WriteFloat('V_Guidage_AD', StrToFloat(SetupTelescope.Edit_V_Guidage_AD.text));
    end;
    fPeriodeFondamentale:=Reg.ReadFloat('V_Guidage_AD');
    if fPeriodeFondamentale<>0 then
      fPeriodeFondamentale:=SpeedIntMCMT.MPasParTour_AD/fPeriodeFondamentale*15.04
    else fPeriodeFondamentale:=1;
    SetupTelescope.LabelPeriodeFondamentale.Caption := Format('Période fondamentale: %6.1f "d''arc',[fPeriodeFondamentale]);
    if Reg.ValueExists('V_Corr_P_AD') then
      SetupTelescope.Edit_V_Corr_P_AD.text := Format('%1.2f',[Reg.ReadFloat('V_Corr_P_AD')])
    else
    begin
      SetupTelescope.Edit_V_Corr_P_AD.text := ReadString('Parameters', 'V_Corr_P_AD', '1');
      Reg.WriteFloat('V_Corr_P_AD', StrToFloat(SetupTelescope.Edit_V_Corr_P_AD.text));
    end;

    if Reg.ValueExists('V_Corr_M_AD') then
      SetupTelescope.Edit_V_Corr_M_AD.text := Format('%1.2f',[Reg.ReadFloat('V_Corr_M_AD')])
    else
    begin
      SetupTelescope.Edit_V_Corr_M_AD.text := ReadString('Parameters', 'V_Corr_M_AD', '1');
      Reg.WriteFloat('V_Corr_M_AD', StrToFloat(SetupTelescope.Edit_V_Corr_M_AD.text));
    end;

    if Reg.ValueExists('V_Point_L_AD') then
      SetupTelescope.Edit_V_Point_L_AD.text := Format('%1.2f',[Reg.ReadFloat('V_Point_L_AD')])
    else
    begin
      SetupTelescope.Edit_V_Point_L_AD.text := ReadString('Parameters', 'V_Point_L_AD', '1');
      Reg.WriteFloat('V_Point_L_AD', StrToFloat(SetupTelescope.Edit_V_Point_L_AD.text));
    end;

    if Reg.ValueExists('V_Point_R_AD') then
      SetupTelescope.Edit_V_Point_R_AD.text := Format('%1.2f',[Reg.ReadFloat('V_Point_R_AD')])
    else
    begin
      SetupTelescope.Edit_V_Point_R_AD.text := ReadString('Parameters', 'V_Point_R_AD', '1');
      Reg.WriteFloat('V_Point_R_AD', StrToFloat(SetupTelescope.Edit_V_Point_R_AD.text));
    end;

    if Reg.ValueExists('Accel_AD') then
    begin
      SetupTelescope.ComboBox_Accel_AD.ItemIndex := Reg.ReadInteger('Accel_AD');
    end
    else
    begin
      SetupTelescope.ComboBox_Accel_AD.ItemIndex := strtoint(ReadString('Parameters', 'Accel_AD', '0'));
      Reg.WriteInteger('Accel_AD', SetupTelescope.ComboBox_Accel_AD.ItemIndex);
    end;

      // Paramètres Axe delta ************************************************
      // *********************************************************************
    InitPossible:=false;
    if Reg.ValueExists('Microstep_DEC') then
    begin
      SpeedIntMCMT.Microstep_DEC := Reg.ReadInteger('Microstep_DEC');
      if SpeedIntMCMT.Microstep_DEC=0 then
      begin
        SpeedIntMCMT.Microstep_DEC:=128;
        Reg.WriteInteger('Microstep_DEC', SpeedIntMCMT.Microstep_DEC);
      end;
    end
    else
    begin
      SpeedIntMCMT.Microstep_DEC := ReadInteger('Parameters', 'Microstep_DEC', 128);
      Reg.WriteInteger('Microstep_DEC', SpeedIntMCMT.Microstep_DEC);
    end;
    SetupTelescope.Edit_MPasParPas_DEC.text := inttostr(SpeedIntMCMT.Microstep_DEC);

    if Reg.ValueExists('Step_DEC') then
    begin
      SpeedIntMCMT.Step_DEC := Reg.ReadInteger('Step_DEC');
      if SpeedIntMCMT.Step_DEC=0 then
      begin
        SpeedIntMCMT.Step_DEC:=200;
        Reg.WriteInteger('Step_DEC', SpeedIntMCMT.Step_DEC);
      end;
    end
    else
    begin
      SpeedIntMCMT.Step_DEC := ReadInteger('Parameters', 'Step_DEC', 200);
      Reg.WriteInteger('Step_DEC', SpeedIntMCMT.Step_DEC);
    end;
    SetupTelescope.Edit_PasParTour_DEC.text := inttostr(SpeedIntMCMT.Step_DEC);

    SpeedIntMCMT.MPasParTour_DEC:=SpeedIntMCMT.Microstep_DEC*SpeedIntMCMT.Step_DEC;

    if Reg.ValueExists('ReducDelta') then
    begin
      SpeedIntMCMT.Reduc_DEC:=Reg.ReadFloat('ReducDelta');
      if SpeedIntMCMT.Reduc_DEC=0 then
      begin
        SpeedIntMCMT.Reduc_DEC:=360;
        Reg.WriteInteger('Step_DEC', SpeedIntMCMT.Step_DEC);
      end;
    end
    else
    begin
      SpeedIntMCMT.Reduc_DEC := ReadFloat('Parameters', 'ReducDelta', 360);
      Reg.WriteFloat('ReducDelta',SpeedIntMCMT.Reduc_DEC);
    end;

    InitPossible:=true;

    SpeedIntMCMT.Resol_DEC:=trunc(SpeedIntMCMT.Microstep_DEC*SpeedIntMCMT.Reduc_DEC*SpeedIntMCMT.Step_DEC);
    SetupTelescope.Edit_Resol_DEC.Text := Inttostr(SpeedIntMCMT.Resol_DEC);

    if frac(SpeedIntMCMT.Resol_DEC / SpeedIntMCMT.Step_DEC/SpeedIntMCMT.Microstep_DEC) = 0 //
    then
      SetupTelescope.Edit_Reduc_DEC.Text :=
        Inttostr(Trunc(SpeedIntMCMT.Resol_DEC /SpeedIntMCMT.Step_DEC/SpeedIntMCMT.Microstep_DEC))
    else
      SetupTelescope.Edit_Reduc_DEC.Text :=
        floattostrf(SpeedIntMCMT.Resol_DEC /SpeedIntMCMT.Step_DEC/SpeedIntMCMT.Microstep_DEC, ffFixed, 8, 4);

    if Reg.ValueExists('V_Guidage_DEC') then
      SetupTelescope.Edit_V_Guidage_DEC.text := Format('%1.2f',[Reg.ReadFloat('V_Guidage_DEC')])
    else
    begin
      SetupTelescope.Edit_V_Guidage_DEC.text := ReadString('Parameters', 'V_Guidage_DEC', '1');
      Reg.WriteFloat('V_Guidage_DEC', StrToFloat(SetupTelescope.Edit_V_Guidage_DEC.text));
    end;

    if Reg.ValueExists('V_Corr_P_DEC') then
      SetupTelescope.Edit_V_Corr_P_DEC.text := Format('%1.2f',[Reg.ReadFloat('V_Corr_P_DEC')])
    else
    begin
      SetupTelescope.Edit_V_Corr_P_DEC.text := ReadString('Parameters', 'V_Corr_P_DEC', '1');
      Reg.WriteFloat('V_Corr_P_DEC', StrToFloat(SetupTelescope.Edit_V_Corr_P_DEC.text));
    end;

    if Reg.ValueExists('V_Corr_M_DEC') then
      SetupTelescope.Edit_V_Corr_M_DEC.text := Format('%1.2f',[Reg.ReadFloat('V_Corr_M_DEC')])
    else
    begin
      SetupTelescope.Edit_V_Corr_M_DEC.text := ReadString('Parameters', 'V_Corr_M_DEC', '1');
      Reg.WriteFloat('V_Corr_M_DEC', StrToFloat(SetupTelescope.Edit_V_Corr_M_DEC.text));
    end;

    if Reg.ValueExists('V_Point_L_DEC') then
      SetupTelescope.Edit_V_Point_L_DEC.text := Format('%1.2f',[Reg.ReadFloat('V_Point_L_DEC')])
    else
    begin
      SetupTelescope.Edit_V_Point_L_DEC.text := ReadString('Parameters', 'V_Point_L_DEC', '1');
      Reg.WriteFloat('V_Point_L_DEC', StrToFloat(SetupTelescope.Edit_V_Point_L_DEC.text));
    end;

    if Reg.ValueExists('V_Point_R_DEC') then
      SetupTelescope.Edit_V_Point_R_DEC.text := Format('%1.2f',[Reg.ReadFloat('V_Point_R_DEC')])
    else
    begin
      SetupTelescope.Edit_V_Point_R_DEC.text := ReadString('Parameters', 'V_Point_R_DEC', '1');
      Reg.WriteFloat('V_Point_R_DEC', StrToFloat(SetupTelescope.Edit_V_Point_R_DEC.text));
    end;

    if Reg.ValueExists('Accel_DEC') then
      SetupTelescope.ComboBox_Accel_DEC.ItemIndex := Reg.ReadInteger('Accel_DEC')
    else
    begin
      SetupTelescope.ComboBox_Accel_DEC.ItemIndex := strtoint(ReadString('Parameters', 'Accel_DEC', '0'));
      Reg.WriteInteger('Accel_DEC', SetupTelescope.ComboBox_Accel_DEC.ItemIndex);
    end;

    if Reg.ValueExists('Backlash_Activated') then Backlash.Activated:= Reg.ReadBool('Backlash_Activated')
    else
    begin
      Backlash.Activated:=ReadBool('Parameters', 'Backlash_Activated', false);
      Reg.WriteBool('Backlash_Activated', Backlash.Activated);
    end;
    SetupTelescope.CheckBoxActivateBacklash.Checked           := Backlash.Activated;
    SetupTelescope.GroupBox_Parametres_Correction_Jeux.Visible:= Backlash.Activated;


    if Reg.ValueExists('Backlash') then
      SetupTelescope.NbreEditBacklash.Text := FloatToStr(Reg.ReadFloat('Backlash'))
    else
    begin
      SetupTelescope.NbreEditBacklash.Text := ReadString('Parameters', 'Backlash', '20');
      Reg.WriteFloat('Backlash', StrToFloat(SetupTelescope.NbreEditBacklash.Text));
    end;

    if Reg.ValueExists('Backlash_Delta_Mode')
        then SetupTelescope.RadioGroup_Mode_Correction_Delta.ItemIndex :=
                                        Reg.ReadInteger('Backlash_Delta_Mode')
    else
    begin
      SetupTelescope.RadioGroup_Mode_Correction_Delta.ItemIndex :=ReadInteger('Parameters', 'Backlash_Delta_Mode', 0);
      Reg.WriteInteger('Backlash_Delta_Mode',SetupTelescope.RadioGroup_Mode_Correction_Delta.ItemIndex);
    end;

    if Reg.ValueExists('Backlash_Pause') then
      SetupTelescope.ComboBoxPauseBacklash.ItemIndex := Reg.ReadInteger('Backlash_Pause') div 1000
    else
    begin
      SetupTelescope.ComboBoxPauseBacklash.ItemIndex := ReadInteger('Parameters', 'Backlash_Pause', 0);
      Reg.WriteInteger('Backlash_Pause', SetupTelescope.ComboBoxPauseBacklash.ItemIndex * 1000);
    end;

      // Détermination du type de monture ************************************
      // *********************************************************************

      if Reg.ValueExists('Monture_Allemande') //
      then
        GerMountSetup.Monture_Allemande := Reg.ReadBool('Monture_Allemande')
      else
      begin
        GerMountSetup.Monture_Allemande :=
          ReadBool('Pointage', 'Monture_Allemande', False);
        Reg.WriteBool('Monture_Allemande', GerMountSetup.Monture_Allemande);
      end;

      if Reg.ValueExists('Monture_FerACheval') //
      then
        GerMountSetup.Monture_FerACheval := Reg.ReadBool('Monture_FerACheval')
      else
      begin
        GerMountSetup.Monture_FerACheval :=
          ReadBool('Pointage', 'Monture_FerACheval', False);
        Reg.WriteBool('Monture_FerACheval', GerMountSetup.Monture_FerACheval);
      end;

      (* Maintenant on sait s'il s'agit d'une monture allemande, d'une monture
        fer à cheval ou d'une monture à fourche *)

      if GerMountSetup.Monture_Allemande or GerMountSetup.Monture_FerACheval

      then // Montures allemandes et montures fer à cheval ********************
      begin
        if Reg.ValueExists('TelescopeZenithOuest') //
        then
          GerMountSetup.TelescopeZenithOuest :=
            Reg.ReadBool('TelescopeZenithOuest')
        else
          GerMountSetup.TelescopeZenithOuest := False;

        // Ce Panel est commun aux types de montures Allemande et Fer à cheval
        if GerMountSetup.TelescopeZenithOuest //
        then
          Form_Etat_Telescope.RadioGroupEtatTelescope.ItemIndex := 1
        else
          Form_Etat_Telescope.RadioGroupEtatTelescope.ItemIndex := 0;

        if Reg.ValueExists('Retournement_Autorise') //
        then
          GerMountSetup.Retournement_Autorise :=
            Reg.ReadBool('Retournement_Autorise')
        else
        begin
          GerMountSetup.Retournement_Autorise :=
            ReadBool('Pointage', 'Retournement_Autorise', False);
          Reg.WriteBool('Retournement_Autorise',
            GerMountSetup.Retournement_Autorise)
        end;

        if GerMountSetup.Monture_Allemande //

        then // Montures allemandes seulement**********************************
        begin
          Form_Etat_Telescope.Image_Retourne_FerACheval.Visible := False;
          Form_Etat_Telescope.Image_NonRetourne_FerACheval.Visible := False;
          Form_Etat_Telescope.Image_Pied_FerACheval.Visible := False;
          Form_Etat_Telescope.Image_Pied_HemisphereSud_FerACheval.
            Visible := False;
          Form_Etat_Telescope.Label_Tube_Sous_Le_Pole_FerACheval.
            Visible := False;
          Form_Etat_Telescope.Label_Pointage_Normal_FerACheval.Visible := False;

          if GerMountSetup.TelescopeZenithOuest //
          then
          begin
            SetupTelescope.RadioGroup_Etat_Telescope_Allemande.ItemIndex := 1;
            SetupTelescope.Image_Telescope_Retourne_Allemande.Visible := False;
            SetupTelescope.Image_Telescope_NonRetourne_Allemande.
              Visible := True;
            Form_Etat_Telescope.Image_Retourne_Allemande.Visible := False;
            Form_Etat_Telescope.Image_NonRetourne_Allemande.Visible := True;
            Form_Etat_Telescope.Label_Tube_Est_Allemande.Visible := False;
            Form_Etat_Telescope.Label_Tube_Ouest_Allemande.Visible := True;

          end
          else
          begin
            SetupTelescope.RadioGroup_Etat_Telescope_Allemande.ItemIndex := 0;
            SetupTelescope.Image_Telescope_Retourne_Allemande.Visible := True;
            SetupTelescope.Image_Telescope_NonRetourne_Allemande.
              Visible := False;
            Form_Etat_Telescope.Image_Retourne_Allemande.Visible := True;
            Form_Etat_Telescope.Image_NonRetourne_Allemande.Visible := False;
            Form_Etat_Telescope.Label_Tube_Est_Allemande.Visible := True;
            Form_Etat_Telescope.Label_Tube_Ouest_Allemande.Visible := False;
          end;

          try
            SetupTelescope.SpinEdit_Delai_Decision_Allemande.Value :=
              Reg.ReadInteger('Delai_Decision');
          except
            SetupTelescope.SpinEdit_Delai_Decision_Allemande.Value :=
              ReadInteger('Parameters', 'Delai_Decision', 25);
            Reg.WriteInteger('Delai_Decision',
              SetupTelescope.SpinEdit_Delai_Decision_Allemande.Value);
          end;

          SetupTelescope.RadioGroup_Monture.ItemIndex := 1;
          SetupTelescope.GroupBox_Pointage_Allemande.Visible := True;
          SetupTelescope.GroupBox_Pointage_FerACheval.Visible := False;
          SetupTelescope.GroupBox_Pointage_Fourche.Visible := False;
          SetupTelescope.GroupBox_aide_Allemande_Pointage.Visible := True;
          SetupTelescope.GroupBox_aide_Allemande_Parametres.Visible := True;
          SetupTelescope.GroupBox_aide_FerACheval_Pointage.Visible := False;
          SetupTelescope.GroupBox_aide_FerACheval_Parametres.Visible := False;
          SetupTelescope.GroupBox_aide_Fourche_Parametres.Visible := False;
          SetupTelescope.GroupBox_aide_Fourche_Pointage.Visible := False;
          Form_Etat_Telescope.Image_Pied_FerACheval.Visible := False;
          Form_Etat_Telescope.Image_Pied_HemisphereSud_FerACheval.
            Visible := False;

          If (Latitude > 0) //
          then
          begin
            SetupTelescope.Image_Pied_Allemande.Visible := True;
            SetupTelescope.Image_Pied_HemisphereSud_Allemande.Visible := False;
            Form_Etat_Telescope.Image_Pied_Allemande.Visible := True;
            Form_Etat_Telescope.Image_Pied_HemisphereSud_Allemande.
              Visible := False;
          end
          else
          begin
            SetupTelescope.Image_Pied_HemisphereSud_Allemande.Visible := True;
            SetupTelescope.Image_Pied_Allemande.Visible := False;
            Form_Etat_Telescope.Image_Pied_HemisphereSud_Allemande.
              Visible := True;
            Form_Etat_Telescope.Image_Pied_Allemande.Visible := False;
          end;

          // Si les retournements sur ordre sont autorisés
          // alors il faut afficher les messages
          SetupTelescope.CheckBox_Retournement_Allemande.Checked :=
            GerMountSetup.Retournement_Autorise;
          SetupTelescope.Label_Consigne_Retournement_Allemande.Visible :=
            GerMountSetup.Retournement_Autorise;
          if Reg.ValueExists('Angle_horaire_critique_Ouest') //
          then
            SetupTelescope.SpinEdit_Angle_horaire_critique_Ouest_Allemande.Value
              := round(Reg.ReadFloat('Angle_horaire_critique_Ouest') / Pi
              * 12 * 60)
          else
          begin
            SetupTelescope.SpinEdit_Angle_horaire_critique_Ouest_Allemande.Value
              := round(ReadFloat('Pointage', 'Angle_horaire_critique_Ouest',
              Pi / 12));
            Reg.WriteFloat('Angle_horaire_critique_Ouest',
              SetupTelescope.SpinEdit_Angle_horaire_critique_Ouest_Allemande.
              Value * Pi / 12 / 60);
          end;

          if Reg.ValueExists('Angle_horaire_critique_Est') //
          then
            SetupTelescope.SpinEdit_Angle_horaire_critique_Est_Allemande.Value
              := round(Reg.ReadFloat('Angle_horaire_critique_Est') / Pi
              * 12 * 60)
          else
          begin
            SetupTelescope.SpinEdit_Angle_horaire_critique_Est_Allemande.Value
              := round(ReadFloat('Pointage', 'Angle_horaire_critique_Est',
              Pi / 12));
            Reg.WriteFloat('Angle_horaire_critique_Est',
              SetupTelescope.SpinEdit_Angle_horaire_critique_Est_Allemande.Value
              * Pi / 12 / 60);
          end;

          if Reg.ValueExists('Declinaison_critique_Est') //
          then
            SetupTelescope.SpinEdit_Declinaison_critique_Est_Allemande.Value :=
              round(Reg.ReadFloat('Declinaison_critique_Est') / Pi * 180)
          else
          begin
            SetupTelescope.SpinEdit_Declinaison_critique_Est_Allemande.Value :=
              round(ReadFloat('Pointage', 'Declinaison_critique_Est', 0));
            Reg.WriteFloat('Declinaison_critique_Est',
              SetupTelescope.SpinEdit_Declinaison_critique_Est_Allemande.Value *
              Pi / 180);
          end;

          if Reg.ValueExists('Declinaison_critique_Ouest') //
          then
            SetupTelescope.SpinEdit_Declinaison_critique_Ouest_Allemande.Value
              := round(Reg.ReadFloat('Declinaison_critique_Ouest') / Pi * 180)
          else
          begin
            SetupTelescope.SpinEdit_Declinaison_critique_Ouest_Allemande.Value
              := round(ReadFloat('Pointage', 'Declinaison_critique_Ouest', 0));
            Reg.WriteFloat('Declinaison_critique_Ouest',
              SetupTelescope.SpinEdit_Declinaison_critique_Ouest_Allemande.Value
              * Pi / 180);
          end;

          if Reg.ValueExists('Angle_Horaire_Retournement') //
          then
            SetupTelescope.SpinEdit_Angle_Horaire_Retournement_Allemande.Value
              := round(Reg.ReadFloat('Angle_Horaire_Retournement') / Pi
              * 12 * 60)
          else
          begin
            SetupTelescope.SpinEdit_Angle_Horaire_Retournement_Allemande.Value
              := round(ReadFloat('Pointage', 'Angle_Horaire_Retournement',
              Pi / 12));
            Reg.WriteFloat('Angle_Horaire_Retournement',
              SetupTelescope.SpinEdit_Angle_Horaire_Retournement_Allemande.Value
              * Pi / 12 / 60);
          end;

          if Reg.ValueExists('Optimiser_Allemande') //
          then
            SetupTelescope.CheckBox_Optimiser_Poursuite_Allemande.Checked :=
              Reg.ReadBool('Optimiser_Allemande')
          else
          Begin
            SetupTelescope.CheckBox_Optimiser_Poursuite_Allemande.Checked :=
              ReadBool('Pointage', 'Optimiser_Allemande', True);
            Reg.WriteBool('Optimiser_Allemande',
              SetupTelescope.CheckBox_Optimiser_Poursuite_Allemande.Checked);
          end;

          SetupTelescope.Modification_angle_horaire_critique_Est_Allemande(nil);
          // pour faire la mise à jour du calcul de temps de poursuite horaire

          if Reg.ValueExists('Rayon_minimal') //
          then
            SetupTelescope.SpinEdit_Rayon_minimal_Allemande.Value :=
              round(Reg.ReadFloat('Rayon_minimal') / Pi * 180)
          else
          begin
            SetupTelescope.SpinEdit_Rayon_minimal_Allemande.Value :=
              round(ReadFloat('Pointage', 'Rayon_minimal', 0));
            Reg.WriteFloat('Rayon_minimal',
              SetupTelescope.SpinEdit_Rayon_minimal_Allemande.Value * Pi / 180);
          end;
        end // end allemande seulement

        else // Montures Fer à cheval seulement *******************************
        begin
          Form_Etat_Telescope.Image_Retourne_Allemande.Visible := False;
          Form_Etat_Telescope.Image_NonRetourne_Allemande.Visible := False;
          Form_Etat_Telescope.Image_Pied_Allemande.Visible := False;
          Form_Etat_Telescope.Image_Pied_HemisphereSud_Allemande.
            Visible := False;
          Form_Etat_Telescope.Label_Tube_Est_Allemande.Visible := False;
          Form_Etat_Telescope.Label_Tube_Ouest_Allemande.Visible := False;

          if GerMountSetup.TelescopeZenithOuest //
          then
          begin
            SetupTelescope.RadioGroup_Etat_Telescope_FerACheval.ItemIndex := 1;
            SetupTelescope.Image_Telescope_Retourne_FerACheval.Visible := False;
            SetupTelescope.Image_Telescope_NonRetourne_FerACheval.
              Visible := True;
            Form_Etat_Telescope.Image_Retourne_FerACheval.Visible := False;
            Form_Etat_Telescope.Image_NonRetourne_FerACheval.Visible := True;
            Form_Etat_Telescope.Label_Tube_Sous_Le_Pole_FerACheval.
              Visible := False;
            Form_Etat_Telescope.Label_Pointage_Normal_FerACheval.
              Visible := True;
          end
          else
          begin
            SetupTelescope.RadioGroup_Etat_Telescope_FerACheval.ItemIndex := 0;
            SetupTelescope.Image_Telescope_Retourne_FerACheval.Visible := True;
            SetupTelescope.Image_Telescope_NonRetourne_FerACheval.
              Visible := False;
            Form_Etat_Telescope.Image_Retourne_FerACheval.Visible := True;
            Form_Etat_Telescope.Image_NonRetourne_FerACheval.Visible := False;
            Form_Etat_Telescope.Label_Tube_Sous_Le_Pole_FerACheval.
              Visible := True;
            Form_Etat_Telescope.Label_Pointage_Normal_FerACheval.
              Visible := False;
          end;

          try
            SetupTelescope.SpinEdit_Delai_Decision_FerACheval.Value :=
              Reg.ReadInteger('Delai_Decision')
          except
            SetupTelescope.SpinEdit_Delai_Decision_FerACheval.Value :=
              ReadInteger('Parameters', 'Delai_Decision', 25);
            Reg.WriteInteger('Delai_Decision',
              SetupTelescope.SpinEdit_Delai_Decision_FerACheval.Value);
          end;

          // Si les retournements sur ordre sont autorisés
          // alors il faut afficher les messages
          SetupTelescope.CheckBox_Retournement_FerACheval.Checked :=
            GerMountSetup.Retournement_Autorise;
          SetupTelescope.Label_Consigne_Retournement_FerACheval.Visible :=
            GerMountSetup.Retournement_Autorise;

          SetupTelescope.RadioGroup_Monture.ItemIndex := 2;
          SetupTelescope.GroupBox_Pointage_Allemande.Visible := False;
          SetupTelescope.GroupBox_Pointage_FerACheval.Visible := True;
          SetupTelescope.GroupBox_Pointage_Fourche.Visible := False;
          SetupTelescope.GroupBox_aide_Allemande_Pointage.Visible := False;
          SetupTelescope.GroupBox_aide_Allemande_Parametres.Visible := False;
          SetupTelescope.GroupBox_aide_FerACheval_Pointage.Visible := True;
          SetupTelescope.GroupBox_aide_FerACheval_Parametres.Visible := True;
          SetupTelescope.GroupBox_aide_Fourche_Pointage.Visible := False;
          SetupTelescope.GroupBox_aide_Fourche_Parametres.Visible := False;
          Form_Etat_Telescope.Image_Pied_Allemande.Visible := False;
          Form_Etat_Telescope.Image_Pied_HemisphereSud_Allemande.
            Visible := False;

          If (Latitude > 0) //
          then
          begin
            SetupTelescope.Image_Pied_FerACheval.Visible := True;
            SetupTelescope.Image_Pied_HemisphereSud_FerACheval.Visible := False;
            Form_Etat_Telescope.Image_Pied_FerACheval.Visible := True;
            Form_Etat_Telescope.Image_Pied_HemisphereSud_FerACheval.
              Visible := False;
          end
          else
          begin
            SetupTelescope.Image_Pied_HemisphereSud_FerACheval.Visible := True;
            SetupTelescope.Image_Pied_FerACheval.Visible := False;
            Form_Etat_Telescope.Image_Pied_HemisphereSud_FerACheval.
              Visible := True;
            Form_Etat_Telescope.Image_Pied_FerACheval.Visible := False;
          end;

          if Reg.ValueExists('Angle_horaire_limite_Ouest_FerACheval') //
          then
            SetupTelescope.SpinEdit_AngleHoraireLimiteOuest_FerACheval.Value :=
              round(Reg.ReadFloat('Angle_horaire_limite_Ouest_FerACheval')
              / Pi * 720)
          else
          begin
            SetupTelescope.SpinEdit_AngleHoraireLimiteOuest_FerACheval.Value :=
              round(ReadFloat('Pointage',
              'Angle_horaire_limite_Ouest_FerACheval', Pi / 2));
            Reg.WriteFloat('Angle_horaire_limite_Ouest_FerACheval',
              SetupTelescope.SpinEdit_AngleHoraireLimiteOuest_FerACheval.Value *
              Pi / 720);
          end;

          if Reg.ValueExists('Angle_horaire_limite_Est_FerACheval') //
          then
            SetupTelescope.SpinEdit_AngleHoraireLimiteEst_FerACheval.Value :=
              round(Reg.ReadFloat('Angle_horaire_limite_Est_FerACheval')
              / Pi * 720)
          else
          begin
            SetupTelescope.SpinEdit_AngleHoraireLimiteEst_FerACheval.Value :=
              round(ReadFloat('Pointage', 'Angle_horaire_limite_Est_FerACheval',
              -Pi / 2));
            Reg.WriteFloat('Angle_horaire_limite_Est_FerACheval',
              SetupTelescope.SpinEdit_AngleHoraireLimiteEst_FerACheval.Value *
              Pi / 720);
          end;

          if Reg.ValueExists('Declinaison_Limite_FerACheval') //
          then
            SetupTelescope.SpinEdit_DeclinaisonLimite_FerACheval.Value :=
              round(Reg.ReadFloat('Declinaison_Limite_FerACheval') / Pi * 180)
          else
          begin
            SetupTelescope.SpinEdit_DeclinaisonLimite_FerACheval.Value :=
              round(ReadFloat('Pointage', 'Declinaison_limite_FerACheval', 0));
            Reg.WriteFloat('Declinaison_limite_FerACheval',
              SetupTelescope.SpinEdit_DeclinaisonLimite_FerACheval.Value *
              Pi / 180);
          end;

          if Reg.ValueExists('Angle_Horaire_Retournement') //
          then
            SetupTelescope.SpinEdit_Anticipation_Retournement_FerACheval.Value
              := round(Reg.ReadFloat('Angle_Horaire_Retournement') / Pi *
              720) - 360
          else
          begin
            SetupTelescope.SpinEdit_Anticipation_Retournement_FerACheval.Value
              := -360 + round(ReadFloat('Pointage',
              'Angle_Horaire_Retournement', 360));
            Reg.WriteFloat('Angle_Horaire_Retournement',
              SetupTelescope.SpinEdit_Anticipation_Retournement_FerACheval.Value
              * Pi / 720 + 360);
          end;

          if Reg.ValueExists('Optimiser_FerACheval') //
          then
            SetupTelescope.CheckBox_Optimiser_Poursuite_FerACheval.Checked :=
              Reg.ReadBool('Optimiser_FerACheval')
          else
          Begin
            SetupTelescope.CheckBox_Optimiser_Poursuite_FerACheval.Checked :=
              ReadBool('Pointage', 'Optimiser_FerACheval', True);
            Reg.WriteBool('Optimiser_FerACheval',
              SetupTelescope.CheckBox_Optimiser_Poursuite_FerACheval.Checked);
          end;

          SetupTelescope.Modification_angle_horaire_limite_Est_FerACheval(nil);
          // pour faire la mise à jour du calcul de temps de poursuite horaire

          if Reg.ValueExists('Rayon_minimal') //
          then
            SetupTelescope.SpinEdit_Rayon_minimal_FerACheval.Value :=
              round(Reg.ReadFloat('Rayon_minimal') / Pi * 180)
          else
          begin
            SetupTelescope.SpinEdit_Rayon_minimal_FerACheval.Value :=
              round(ReadFloat('Pointage', 'Rayon_minimal', 0));
            Reg.WriteFloat('Rayon_minimal',
              SetupTelescope.SpinEdit_Rayon_minimal_FerACheval.Value *
              Pi / 180);
          end;
        end // end fer à cheval seulement
      end // end allemande ou fer à cheval
      else // Monture à fourche seulement *************************************
      begin
        try
          SetupTelescope.SpinEdit_Delai_Decision_Fourche.Value :=
            Reg.ReadInteger('Delai_Decision');
          if abs(SetupTelescope.SpinEdit_Delai_Decision_Fourche.Value) = 90 //
          then
            SetupTelescope.GroupBox_Delai_Decision_Fourche.Visible := False
          else
            SetupTelescope.GroupBox_Delai_Decision_Fourche.Visible := True
        except
          SetupTelescope.SpinEdit_Delai_Decision_Fourche.Value :=
            ReadInteger('Parameters', 'Delai_Decision', 25);
          Reg.WriteInteger('Delai_Decision',
            SetupTelescope.SpinEdit_Delai_Decision_Fourche.Value);
        end;

        SetupTelescope.RadioGroup_Monture.ItemIndex := 0;
        SetupTelescope.GroupBox_Pointage_Allemande.Visible := False;
        SetupTelescope.GroupBox_Pointage_FerACheval.Visible := False;
        SetupTelescope.GroupBox_Pointage_Fourche.Visible := True;
        SetupTelescope.GroupBox_aide_Allemande_Pointage.Visible := False;
        SetupTelescope.GroupBox_aide_Allemande_Parametres.Visible := False;
        SetupTelescope.GroupBox_aide_FerACheval_Pointage.Visible := False;
        SetupTelescope.GroupBox_aide_FerACheval_Parametres.Visible := False;
        SetupTelescope.GroupBox_aide_Fourche_Parametres.Visible := True;
        SetupTelescope.GroupBox_aide_Fourche_Pointage.Visible := True;

        If (Latitude > 0) //
        then
        begin
          SetupTelescope.SpinEdit_Declinaison_Polaire_Limite_Fourche.
            MaxValue := 90;
          SetupTelescope.SpinEdit_Declinaison_Polaire_Limite_Fourche.
            MinValue := 0
        end
        else
        begin
          SetupTelescope.SpinEdit_Declinaison_Polaire_Limite_Fourche.
            MaxValue := 0;
          SetupTelescope.SpinEdit_Declinaison_Polaire_Limite_Fourche.
            MinValue := -90
        end;

        if Reg.ValueExists('Declinaison_Polaire_Limite') //
        then
          SetupTelescope.SpinEdit_Declinaison_Polaire_Limite_Fourche.Value :=
            round(Reg.ReadFloat('Declinaison_Polaire_Limite') / Pi * 180)
        else
        begin
          SetupTelescope.SpinEdit_Declinaison_Polaire_Limite_Fourche.Value :=
            round(ReadFloat('Pointage', 'Declinaison_Polaire_Limite', 90));
          Reg.WriteFloat('Declinaison_Polaire_Limite',
            SetupTelescope.SpinEdit_Declinaison_Polaire_Limite_Fourche.Value *
            Pi / 180);
        end;

        if abs(SetupTelescope.SpinEdit_Declinaison_Polaire_Limite_Fourche.
          Value) = 90 //
        then
          SetupTelescope.GroupBox_Delai_Decision_Fourche.Visible := False
        else
          SetupTelescope.GroupBox_Delai_Decision_Fourche.Visible := True;

        if Reg.ValueExists('Passage_Interdit') //
        then
          GerMountSetup.Passage_Interdit := Reg.ReadBool('Passage_Interdit')
        else
        begin
          GerMountSetup.Passage_Interdit :=
            ReadBool('Pointage', 'Passage_Interdit', False);
          Reg.WriteBool('Passage_Interdit', GerMountSetup.Passage_Interdit);
        end;

        if GerMountSetup.Passage_Interdit //
        then
        begin
          SetupTelescope.RadioGroup_Algorithme_Pointage_Fourche.ItemIndex := 1;
          SetupTelescope.GroupBox_Pointage_Rapide_Fourche.Visible := False;
          SetupTelescope.GroupBox_Pointage_Prudent_Fourche.Visible := True;
        end
        else
        begin
          SetupTelescope.RadioGroup_Algorithme_Pointage_Fourche.ItemIndex := 0;
          SetupTelescope.GroupBox_Pointage_Rapide_Fourche.Visible := True;
          SetupTelescope.GroupBox_Pointage_Prudent_Fourche.Visible := False;
        end;

      end; // end fourche seulement    // Longitude
    if Reg.ValueExists('Longitude') then LongSetup := Reg.ReadFloat('Longitude')
    else
    begin
      LongSetup := 0;
      Reg.WriteFloat('Longitude', LongSetup);
    end;
    if LongSetup<0 then
    begin
      SetupTelescope.CheckBoxEast.Checked := true;
      LongSetup:=-LongSetup;
    end
    else
      SetupTelescope.CheckBoxEast.Checked := false;

    LongSetup:=LongSetup*180/pi;
    SetupTelescope.NbreEditLongDeg.Text := IntToStr(trunc(LongSetup));
    LongSetup:=(LongSetup-int(LongSetup))*60;
    SetupTelescope.NbreEditLongMin.Text := IntToStr(trunc(LongSetup));
    LongSetup:=(LongSetup-int(LongSetup))*60;
    SetupTelescope.NbreEditLongSec.Text := IntToStr(trunc(LongSetup));
    LongSetup:=(LongSetup-int(LongSetup))*100;
    SetupTelescope.NbreEditLongSec100.Text := IntToStr(trunc(LongSetup));

    // Latitude
    If Reg.ValueExists('Latitude') then
      LatSetup := Reg.ReadFloat('Latitude')
    else
    begin
      LatSetup := 0;
      Reg.WriteFloat('Latitude',LatSetup);
    end;

    If (LatSetup<0) then
    begin
      SetupTelescope.CheckBoxSouth.Checked := true;
      LatSetup:=-LatSetup;
    end
    else
      SetupTelescope.CheckBoxSouth.Checked := false;

    LatSetup:=LatSetup*180/pi;
    SetupTelescope.NbreEditLatDeg.Text := IntToStr(trunc(LatSetup));
    LatSetup:=(LatSetup-int(LatSetup))*60;
    SetupTelescope.NbreEditLatMin.Text := IntToStr(trunc(LatSetup));
    LatSetup:=(LatSetup-int(LatSetup))*60;
    SetupTelescope.NbreEditLatSec.Text := IntToStr(trunc(LatSetup));
    LatSetup:=(LatSetup-int(LatSetup))*100;
    SetupTelescope.NbreEditLatSec100.Text := IntToStr(trunc(LatSetup));

    // Altitude

    if Reg.ValueExists('Altitude') then
      AltSetup := Reg.ReadFloat('Altitude')
    else
    begin
      AltSetup := 0;
      Reg.WriteFloat('Altitude',AltSetup);
    end;
    SetupTelescope.NbreEditAltitude.Text:= FloatToStr(AltSetup);

    if Reg.ValueExists('Passage_Interdit')
      then GerMountSetup.Passage_Interdit:=Reg.ReadBool('Passage_Interdit')
    else
    begin
      GerMountSetup.Passage_Interdit :=ReadBool('Pointage', 'Passage_Interdit', false);
      Reg.WriteBool('Passage_Interdit',GerMountSetup.Passage_Interdit);
    end;
    if Reg.ValueExists('External_PEC')
      then ExternalMCMT_PEC.Activated:=Reg.ReadBool('External_PEC')
    else
    begin
      ExternalMCMT_PEC.Activated:=ReadBool('Parameters', 'External_PEC', false);
      Reg.WriteBool('External_PEC',ExternalMCMT_PEC.Activated)
    end;
    SetupTelescope.CheckBoxActivatePEC.Checked:=ExternalMCMT_PEC.Activated;
    if Reg.ValueExists('Ordre0') then
      SetupTelescope.SpinEditOrdre_PEC_0.Value := Reg.ReadInteger('Ordre0')
    else
    begin
      SetupTelescope.SpinEditOrdre_PEC_0.Value := ReadInteger('Parameters', 'Ordre0',0);
      Reg.WriteInteger('Ordre0',SetupTelescope.SpinEditOrdre_PEC_0.Value);
    end;
    SetupTelescope.LabelPeriode_PEC_0.Caption := Format('%5.0f',
                                      [fPeriodeFondamentale/SetupTelescope.SpinEditOrdre_PEC_0.Value]);
    if Reg.ValueExists('Ordre1') then
      SetupTelescope.SpinEditOrdre_PEC_1.Value := Reg.ReadInteger('Ordre1')
    else
    begin
      SetupTelescope.SpinEditOrdre_PEC_1.Value := ReadInteger('Parameters', 'Ordre1',0);
      Reg.WriteInteger('Ordre1',SetupTelescope.SpinEditOrdre_PEC_1.Value);
    end;
    SetupTelescope.LabelPeriode_PEC_1.Caption := Format('%5.0f',
                                      [fPeriodeFondamentale/SetupTelescope.SpinEditOrdre_PEC_1.Value]);
    if Reg.ValueExists('Ordre2') then
      SetupTelescope.SpinEditOrdre_PEC_2.Value := Reg.ReadInteger('Ordre2')
    else
    begin
      SetupTelescope.SpinEditOrdre_PEC_2.Value := ReadInteger('Parameters', 'Ordre2',0);
      Reg.WriteInteger('Ordre2',SetupTelescope.SpinEditOrdre_PEC_2.Value);
    end;
    SetupTelescope.LabelPeriode_PEC_2.Caption := Format('%5.0f',
                                      [fPeriodeFondamentale/SetupTelescope.SpinEditOrdre_PEC_2.Value]);
    if Reg.ValueExists('Ordre3') then
      SetupTelescope.SpinEditOrdre_PEC_3.Value := Reg.ReadInteger('Ordre3')
    else
    begin
      SetupTelescope.SpinEditOrdre_PEC_3.Value := ReadInteger('Parameters', 'Ordre3',0);
      Reg.WriteInteger('Ordre3',SetupTelescope.SpinEditOrdre_PEC_3.Value);
    end;
    SetupTelescope.LabelPeriode_PEC_3.Caption := Format('%5.0f',
                                      [fPeriodeFondamentale/SetupTelescope.SpinEditOrdre_PEC_3.Value]);
    if Reg.ValueExists('Phase0') then
      SetupTelescope.NbreEditPhase_PEC_0.Text := Format('%1.2f',[Reg.ReadFloat('Phase0')])
    else
    begin
      SetupTelescope.NbreEditPhase_PEC_0.Text := ReadString('Parameters', 'Phase0', '0');
      Reg.WriteFloat('Phase0',StrToFloat(SetupTelescope.NbreEditPhase_PEC_0.Text));
    end;
    if Reg.ValueExists('Phase1') then
      SetupTelescope.NbreEditPhase_PEC_1.Text := Format('%1.2f',[Reg.ReadFloat('Phase1')])
    else
    begin
      SetupTelescope.NbreEditPhase_PEC_1.Text := ReadString('Parameters', 'Phase1', '0');
      Reg.WriteFloat('Phase1',StrToFloat(SetupTelescope.NbreEditPhase_PEC_1.Text));
    end;
    if Reg.ValueExists('Phase2') then
      SetupTelescope.NbreEditPhase_PEC_2.Text := Format('%1.2f',[Reg.ReadFloat('Phase2')])
    else
    begin
      SetupTelescope.NbreEditPhase_PEC_2.Text := ReadString('Parameters', 'Phase2', '0');
      Reg.WriteFloat('Phase2',StrToFloat(SetupTelescope.NbreEditPhase_PEC_2.Text));
    end;
    if Reg.ValueExists('Phase3') then
      SetupTelescope.NbreEditPhase_PEC_3.Text := Format('%1.2f',[Reg.ReadFloat('Phase3')])
    else
    begin
      SetupTelescope.NbreEditPhase_PEC_3.Text := ReadString('Parameters', 'Phase3', '0');
      Reg.WriteFloat('Phase3',StrToFloat(SetupTelescope.NbreEditPhase_PEC_3.Text));
    end;
    if Reg.ValueExists('Amplitude0') then
      SetupTelescope.NbreEditAmplitude_PEC_0.Text := Format('%1.2f',[Reg.ReadFloat('Amplitude0')])
    else
    begin
      SetupTelescope.NbreEditAmplitude_PEC_0.Text := ReadString('Parameters', 'Amplitude0', '0');
      Reg.WriteFloat('Amplitude0',StrToFloat(SetupTelescope.NbreEditAmplitude_PEC_0.Text));
    end;
    if Reg.ValueExists('Amplitude1') then
      SetupTelescope.NbreEditAmplitude_PEC_1.Text := Format('%1.2f',[Reg.ReadFloat('Amplitude1')])
    else
    begin
      SetupTelescope.NbreEditAmplitude_PEC_1.Text := ReadString('Parameters', 'Amplitude1', '0');
      Reg.WriteFloat('Amplitude1',StrToFloat(SetupTelescope.NbreEditAmplitude_PEC_1.Text));
    end;
    if Reg.ValueExists('Amplitude2') then
      SetupTelescope.NbreEditAmplitude_PEC_2.Text := Format('%1.2f',[Reg.ReadFloat('Amplitude2')])
    else
    begin
      SetupTelescope.NbreEditAmplitude_PEC_2.Text := ReadString('Parameters', 'Amplitude2', '0');
      Reg.WriteFloat('Amplitude2',StrToFloat(SetupTelescope.NbreEditAmplitude_PEC_2.Text));
    end;
    if Reg.ValueExists('Amplitude3') then
      SetupTelescope.NbreEditAmplitude_PEC_3.Text := Format('%1.2f',[Reg.ReadFloat('Amplitude3')])
    else
    begin
      SetupTelescope.NbreEditAmplitude_PEC_3.Text := ReadString('Parameters', 'Amplitude3', '0');
      Reg.WriteFloat('Amplitude3',StrToFloat(SetupTelescope.NbreEditAmplitude_PEC_3.Text));
    end;
    if Reg.ValueExists('King_Activated')
      then KING_Activated:=Reg.ReadBool('King_Activated')
    else
    begin
      KING_Activated:=ReadBool('Parameters', 'King', false);
      Reg.WriteBool('King_Activated',KING_Activated)
    end;
    SetupTelescope.CheckBoxActivateKing.Checked:=KING_Activated;

    if SetupTelescope.CheckBoxActivatePEC.Checked then
    begin
      SetupTelescope.label62.Enabled := true;
      SetupTelescope.label63.Enabled := true;
      SetupTelescope.label64.Enabled := true;
      SetupTelescope.label65.Enabled := true;
      SetupTelescope.label66.Enabled := true;
      SetupTelescope.label67.Enabled := true;
      SetupTelescope.label68.Enabled := true;
      SetupTelescope.NbreEditAmplitude_PEC_0.Enabled := true;
      SetupTelescope.NbreEditAmplitude_PEC_1.Enabled := true;
      SetupTelescope.NbreEditAmplitude_PEC_2.Enabled := true;
      SetupTelescope.NbreEditAmplitude_PEC_3.Enabled := true;
      SetupTelescope.SpinEditOrdre_PEC_0.Enabled := true;
      SetupTelescope.SpinEditOrdre_PEC_1.Enabled := true;
      SetupTelescope.SpinEditOrdre_PEC_2.Enabled := true;
      SetupTelescope.SpinEditOrdre_PEC_3.Enabled := true;
      SetupTelescope.LabelPeriode_PEC_0.Enabled := true;
      SetupTelescope.LabelPeriode_PEC_1.Enabled := true;
      SetupTelescope.LabelPeriode_PEC_2.Enabled := true;
      SetupTelescope.LabelPeriode_PEC_3.Enabled := true;
      SetupTelescope.NbreEditPhase_PEC_0.Enabled := true;
      SetupTelescope.NbreEditPhase_PEC_1.Enabled := true;
      SetupTelescope.NbreEditPhase_PEC_2.Enabled := true;
      SetupTelescope.NbreEditPhase_PEC_3.Enabled := true;
    end
    else
    begin
      SetupTelescope.label62.Enabled := false;
      SetupTelescope.label63.Enabled := false;
      SetupTelescope.label64.Enabled := false;
      SetupTelescope.label65.Enabled := false;
      SetupTelescope.label66.Enabled := false;
      SetupTelescope.label67.Enabled := false;
      SetupTelescope.label68.Enabled := false;
      SetupTelescope.NbreEditAmplitude_PEC_0.Enabled := false;
      SetupTelescope.NbreEditAmplitude_PEC_1.Enabled := false;
      SetupTelescope.NbreEditAmplitude_PEC_2.Enabled := false;
      SetupTelescope.NbreEditAmplitude_PEC_3.Enabled := false;
      SetupTelescope.SpinEditOrdre_PEC_0.Enabled := false;
      SetupTelescope.SpinEditOrdre_PEC_1.Enabled := false;
      SetupTelescope.SpinEditOrdre_PEC_2.Enabled := false;
      SetupTelescope.SpinEditOrdre_PEC_3.Enabled := false;
      SetupTelescope.LabelPeriode_PEC_0.Enabled := false;
      SetupTelescope.LabelPeriode_PEC_1.Enabled := false;
      SetupTelescope.LabelPeriode_PEC_2.Enabled := false;
      SetupTelescope.LabelPeriode_PEC_3.Enabled := false;
      SetupTelescope.NbreEditPhase_PEC_0.Enabled := false;
      SetupTelescope.NbreEditPhase_PEC_1.Enabled := false;
      SetupTelescope.NbreEditPhase_PEC_2.Enabled := false;
      SetupTelescope.NbreEditPhase_PEC_3.Enabled := false;
    end;
  end;
  Reg.CloseKey;
  Finally
    DeviceIni.free;
    Reg.Free;
  End;

  SetupTelescope.CheckBoxAutoCOM.Checked:=AutoFindCOM;

  // Mettre a jour avec la vraie config contenue dans MCMT II
  If COM_OK then
    SetupTelescope.Button_LireClick(nil);

  SetupTelescope.creating:=False;
  Form2.TimerCoord.Enabled:=false;
  ///////////////  ///////////////  ///////////////  ///////////////  ///////////////  ///////////////
  if (SetupTelescope.ShowModal = MrOK) then // Uniquement si *Validation* !
  ///////////////  ///////////////  ///////////////  ///////////////  ///////////////  ///////////////
  begin
    DeviceIni   := TIniFile.Create(return_MCMT_StoreIniFilePath);
    Reg         := TRegistry.Create;
    Try
      Reg.RootKey := HKEY_CURRENT_USER;
      if not (Reg.OpenKey('SOFTWARE\MCMT32\', False)) then Reg.OpenKey('SOFTWARE\MCMT32\', true);
      with DeviceIni do
      begin
        AutoFindCOM:= SetupTelescope.CheckBoxAutoCOM.Checked;
        if AutoFindCOM then
          NumCom     := StrToInt(SetupTelescope.ComboBoxNumCOM.text)
        else
          NumCom     := StrToInt(SetupTelescope.NbreEditPortSerieForced.text);

        // Configuration ******************************************************
        Reg.WriteBool('MCMT2021', SetupTelescope.CheckBoxMCMT2021.Checked);
        WriteInteger('Configuration', 'Port', NumCOM);
        Reg.WriteInteger('Port'             , NumCOM);
        Reg.WriteBool   ('FindAutoPort'     , AutoFindCOM);

        WriteString('Configuration', 'FirmwareFile', SetupTelescope.OpenDialog1.filename);
        Reg.WriteString('FirmwareFile', SetupTelescope.OpenDialog1.filename);

        // Paramètres généraux ***********************************************
        WriteBool('Parameters', 'Raq_Can',(SetupTelescope.RadioGroup_Raq_Can.ItemIndex=1));
        Reg.WriteBool('Raq_Can',          (SetupTelescope.RadioGroup_Raq_Can.ItemIndex=1));

        WriteInteger('Parameters', 'Type_Monture',
          SetupTelescope.RadioGroup_Monture.ItemIndex);
        Reg.WriteInteger('Type_Monture',
          SetupTelescope.RadioGroup_Monture.ItemIndex);

        // Paramètres Axe alpha *********************************************


        SpeedIntMCMT.Inv_Codeur_AD := SetupTelescope.CheckBox_DIR_AD.checked;
        WriteBool('Parameters', 'DIR_AD', SetupTelescope.CheckBox_DIR_AD.Checked);
        Reg.WriteBool('DIR_AD', SetupTelescope.CheckBox_DIR_AD.Checked);

        SpeedIntMCMT.Microstep_AD := strtoint(SetupTelescope.Edit_MPasParPas_AD.text);
        WriteInteger('Parameters', 'Microstep_AD', SpeedIntMCMT.Microstep_AD);
        Reg.WriteInteger('Microstep_AD', SpeedIntMCMT.Microstep_AD);

        SpeedIntMCMT.Step_AD := strtoint(SetupTelescope.Edit_PasParTour_AD.text);
        WriteInteger('Parameters', 'Step_AD', SpeedIntMCMT.Step_AD);
        Reg.WriteInteger('Step_AD', SpeedIntMCMT.Step_AD);

        SpeedIntMCMT.Reduc_AD := strtofloat(SetupTelescope.Edit_Reduc_AD.text);
        WriteFloat('Parameters', 'ReducAlpha', SpeedIntMCMT.Reduc_AD);
        Reg.WriteFloat('ReducAlpha', SpeedIntMCMT.Reduc_AD);

        SpeedIntMCMT.Resol_AD:=trunc(SpeedIntMCMT.Microstep_AD*SpeedIntMCMT.Reduc_AD*SpeedIntMCMT.Step_AD);
        SpeedIntMCMT.MPasParTour_AD:=SpeedIntMCMT.Microstep_AD*SpeedIntMCMT.Step_AD;
//        SpeedIntMCMT.Resol_AD := strtoint(SetupTelescope.Edit_Resol_AD.text);
        WriteInteger('Parameters', 'Resol_AD', SpeedIntMCMT.Resol_AD);
        Reg.WriteInteger('Resol_AD', SpeedIntMCMT.Resol_AD);

        WriteString('Parameters', 'V_Guidage_AD', SetupTelescope.Edit_V_Guidage_AD.text);
        SpeedIntMCMT.V_Guidage_AD := strtofloat(SetupTelescope.Edit_V_Guidage_AD.text);
        Reg.WriteFloat('V_Guidage_AD', SpeedIntMCMT.V_Guidage_AD);
        SpeedIntMCMT.V_Guidage_AD_SID := SpeedIntMCMT.V_Guidage_AD;

        WriteString('Parameters', 'V_Corr_P_AD', SetupTelescope.Edit_V_Corr_P_AD.text);
        SpeedIntMCMT.V_Corr_P_AD := strtofloat(SetupTelescope.Edit_V_Corr_P_AD.text);
        Reg.WriteFloat('V_Corr_P_AD', SpeedIntMCMT.V_Corr_P_AD);

        WriteString('Parameters', 'V_Corr_M_AD', SetupTelescope.Edit_V_Corr_M_AD.text);
        SpeedIntMCMT.V_Corr_M_AD := strtofloat(SetupTelescope.Edit_V_Corr_M_AD.text);
        Reg.WriteFloat('V_Corr_M_AD', SpeedIntMCMT.V_Corr_M_AD);

        WriteString('Parameters', 'V_Point_L_AD', SetupTelescope.Edit_V_Point_L_AD.text);
        SpeedIntMCMT.V_Point_L_AD := strtofloat(SetupTelescope.Edit_V_Point_L_AD.text);
        Reg.WriteFloat('V_Point_L_AD', SpeedIntMCMT.V_Point_L_AD);

        WriteString('Parameters', 'V_Point_R_AD', SetupTelescope.Edit_V_Point_R_AD.text);
        SpeedIntMCMT.V_Point_R_AD := strtofloat(SetupTelescope.Edit_V_Point_R_AD.text);
        Reg.WriteFloat('V_Point_R_AD', SpeedIntMCMT.V_Point_R_AD);

        WriteString('Parameters', 'Accel_AD', inttostr(SetupTelescope.ComboBox_Accel_AD.ItemIndex));
        SpeedIntMCMT.Accel_AD := SetupTelescope.ComboBox_Accel_AD.ItemIndex;
        Reg.WriteInteger('Accel_AD', SpeedIntMCMT.Accel_AD);

        // Paramètres Axe delta *********************************************
        SpeedIntMCMT.Microstep_DEC := strtoint(SetupTelescope.Edit_MPasParPas_DEC.text);
        WriteInteger('Parameters', 'Microstep_DEC', SpeedIntMCMT.Microstep_DEC);
        Reg.WriteInteger('Microstep_DEC', SpeedIntMCMT.Microstep_DEC);

        SpeedIntMCMT.Step_DEC := strtoint(SetupTelescope.Edit_PasParTour_DEC.text);
        WriteInteger('Parameters', 'Step_DEC', SpeedIntMCMT.Step_DEC);
        Reg.WriteInteger('Step_DEC', SpeedIntMCMT.Step_DEC);

        SpeedIntMCMT.Reduc_DEC := strtofloat(SetupTelescope.Edit_Reduc_DEC.text);
        WriteFloat('Parameters', 'ReducDelta', SpeedIntMCMT.Reduc_DEC);
        Reg.WriteFloat('ReducDelta', SpeedIntMCMT.Reduc_DEC);

        SpeedIntMCMT.Resol_DEC:=trunc(SpeedIntMCMT.Microstep_DEC*SpeedIntMCMT.Reduc_DEC*SpeedIntMCMT.Step_DEC);
        SpeedIntMCMT.MPasParTour_DEC:=SpeedIntMCMT.Microstep_DEC*SpeedIntMCMT.Step_DEC;
//        SpeedIntMCMT.Resol_DEC := strtoint(SetupTelescope.Edit_Resol_DEC.text);
        WriteInteger('Parameters', 'Resol_DEC', SpeedIntMCMT.Resol_DEC);
        Reg.WriteInteger('Resol_DEC', SpeedIntMCMT.Resol_DEC);

        SpeedIntMCMT.Inv_Codeur_DEC := SetupTelescope.CheckBox_DIR_DEC.checked;
        WriteBool('Parameters', 'DIR_DEC', SetupTelescope.CheckBox_DIR_DEC.checked);
        Reg.WriteBool('DIR_DEC', SetupTelescope.CheckBox_DIR_DEC.checked);

        SpeedIntMCMT.Resol_DEC := strtoint(SetupTelescope.Edit_Resol_DEC.text);
        WriteInteger('Parameters', 'Resol_DEC', SpeedIntMCMT.Resol_DEC);
        Reg.WriteInteger('Resol_DEC', SpeedIntMCMT.Resol_DEC);

        WriteString('Parameters', 'V_Guidage_DEC', SetupTelescope.Edit_V_Guidage_DEC.text);
        SpeedIntMCMT.V_Guidage_DEC := strtofloat(SetupTelescope.Edit_V_Guidage_DEC.text);
        Reg.WriteFloat('V_Guidage_DEC', SpeedIntMCMT.V_Guidage_DEC);

        WriteString('Parameters', 'V_Corr_P_DEC', SetupTelescope.Edit_V_Corr_P_DEC.text);
        SpeedIntMCMT.V_Corr_P_DEC := strtofloat(SetupTelescope.Edit_V_Corr_P_DEC.text);
        Reg.WriteFloat('V_Corr_P_DEC', SpeedIntMCMT.V_Corr_P_DEC);

        WriteString('Parameters', 'V_Corr_M_DEC', SetupTelescope.Edit_V_Corr_M_DEC.text);
        SpeedIntMCMT.V_Corr_M_DEC := strtofloat(SetupTelescope.Edit_V_Corr_M_DEC.text);
        Reg.WriteFloat('V_Corr_M_DEC', SpeedIntMCMT.V_Corr_M_DEC);

        WriteString('Parameters', 'V_Point_L_DEC', SetupTelescope.Edit_V_Point_L_DEC.text);
        SpeedIntMCMT.V_Point_L_DEC := strtofloat(SetupTelescope.Edit_V_Point_L_DEC.text);
        Reg.WriteFloat('V_Point_L_DEC', SpeedIntMCMT.V_Point_L_DEC);

        WriteString('Parameters', 'V_Point_R_DEC', SetupTelescope.Edit_V_Point_R_DEC.text);
        SpeedIntMCMT.V_Point_R_DEC := strtofloat(SetupTelescope.Edit_V_Point_R_DEC.text);
        Reg.WriteFloat('V_Point_R_DEC', SpeedIntMCMT.V_Point_R_DEC);

        WriteString('Parameters', 'Accel_DEC', inttostr(SetupTelescope.ComboBox_Accel_DEC.ItemIndex));
        SpeedIntMCMT.Accel_DEC := SetupTelescope.ComboBox_Accel_DEC.ItemIndex;
        Reg.WriteInteger('Accel_DEC', SpeedIntMCMT.Accel_DEC);

        // Jeux mécaniques ***************************************************
        WriteString('Parameters', 'Backlash', SetupTelescope.NbreEditBacklash.Text);
        Backlash.Value := StrToFloat(SetupTelescope.NbreEditBacklash.Text);
        Reg.WriteFloat('Backlash', Backlash.Value);

        WriteBool('Parameters', 'Backlash_Activated', SetupTelescope.CheckBoxActivateBacklash.Checked);
        Backlash.Activated := SetupTelescope.CheckBoxActivateBacklash.Checked;
        Reg.WriteBool('Backlash_Activated', Backlash.Activated);

        WriteInteger('Parameters', 'Backlash_Delta_Type',SetupTelescope.RadioGroup_Mode_Correction_Delta.ItemIndex);         //JLH
        Backlash.Delta_Mode:=SetupTelescope.RadioGroup_Mode_Correction_Delta.ItemIndex;
        Reg.WriteInteger('Backlash_Delta_Mode', Backlash.Delta_Mode);

        LogEnabled:=SetupTelescope.CheckBoxLogFile.Checked;
        Reg.WriteBool('LogEnabled',LogEnabled);

        WriteInteger('Parameters', 'Backlash_Pause', SetupTelescope.ComboBoxPauseBacklash.ItemIndex);
        Backlash.Pause := SetupTelescope.ComboBoxPauseBacklash.ItemIndex * 1000;
        Reg.WriteInteger('Backlash_Pause', Backlash.Pause);

        // Pointage ***********************************************************
        case SetupTelescope.RadioGroup_Monture.ItemIndex of
          0:
            begin // => Monture à fourche
              GerMountSetup.Monture_Allemande := False;
              GerMountSetup.Monture_FerACheval := False;

              if SetupTelescope.RadioGroup_Algorithme_Pointage_Fourche.
                ItemIndex = 0 then
                GerMountSetup.Passage_Interdit := False
              else
                GerMountSetup.Passage_Interdit := True;
              WriteBool('Pointage', 'Passage_Interdit',
                GerMountSetup.Passage_Interdit);
              Reg.WriteBool('Passage_Interdit', GerMountSetup.Passage_Interdit);

              GerMountSetup.Declinaison_Polaire_Limite :=
                SetupTelescope.SpinEdit_Declinaison_Polaire_Limite_Fourche.Value
                * Pi / 180;
              WriteFloat('Pointage', 'Declinaison_Polaire_Limite',
                GerMountSetup.Declinaison_Polaire_Limite);
              Reg.WriteFloat('Declinaison_Polaire_Limite',
                GerMountSetup.Declinaison_Polaire_Limite);

              GerMountSetup.Delai_Decision :=
                SetupTelescope.SpinEdit_Delai_Decision_Fourche.Value;
            end;

          1:
            begin // => Monture allemande
              GerMountSetup.Monture_Allemande := True;
              GerMountSetup.Monture_FerACheval := False;

              GerMountSetup.Angle_horaire_critique_Est :=
                SetupTelescope.SpinEdit_Angle_horaire_critique_Est_Allemande.
                Value * Pi / 12 / 60;
              WriteFloat('Pointage', 'Angle_Horaire_Critique_Est',
                GerMountSetup.Angle_horaire_critique_Est);
              Reg.WriteFloat('Angle_Horaire_Critique_Est',
                GerMountSetup.Angle_horaire_critique_Est);

              GerMountSetup.Angle_horaire_critique_Ouest :=
                SetupTelescope.SpinEdit_Angle_horaire_critique_Ouest_Allemande.
                Value * Pi / 720;
              WriteFloat('Pointage', 'Angle_Horaire_Critique_Ouest',
                GerMountSetup.Angle_horaire_critique_Ouest);
              Reg.WriteFloat('Angle_Horaire_Critique_Ouest',
                GerMountSetup.Angle_horaire_critique_Ouest);

              GerMountSetup.Angle_Horaire_Retournement :=
                SetupTelescope.SpinEdit_Angle_Horaire_Retournement_Allemande.
                Value * Pi / 720;
              WriteFloat('Pointage', 'Angle_Horaire_Retournement',
                GerMountSetup.Angle_Horaire_Retournement);
              Reg.WriteFloat('Angle_Horaire_Retournement',
                GerMountSetup.Angle_Horaire_Retournement);

              GerMountSetup.Rayon_minimal :=
                SetupTelescope.SpinEdit_Rayon_minimal_Allemande.Value *
                Pi / 180;
              WriteFloat('Pointage', 'Rayon_minimal',
                GerMountSetup.Rayon_minimal);
              Reg.WriteFloat('Rayon_minimal', GerMountSetup.Rayon_minimal);

              GerMountSetup.Declinaison_Critique_Est :=
                SetupTelescope.SpinEdit_Declinaison_critique_Est_Allemande.Value
                * Pi / 180;
              WriteFloat('Pointage', 'Declinaison_Critique_Est',
                GerMountSetup.Declinaison_Critique_Est);
              Reg.WriteFloat('Declinaison_Critique_Est',
                GerMountSetup.Declinaison_Critique_Est);

              GerMountSetup.Declinaison_Critique_Ouest :=
                SetupTelescope.SpinEdit_Declinaison_critique_Ouest_Allemande.
                Value * Pi / 180;
              WriteFloat('Pointage', 'Declinaison_Critique_Ouest',
                GerMountSetup.Declinaison_Critique_Ouest);
              Reg.WriteFloat('Declinaison_Critique_Ouest',
                GerMountSetup.Declinaison_Critique_Ouest);

              GerMountSetup.Retournement_Autorise :=
                SetupTelescope.CheckBox_Retournement_Allemande.Checked;
              WriteBool('Pointage', 'Retournement_autorise',
                GerMountSetup.Retournement_Autorise);
              Reg.WriteBool('Retournement_autorise',
                GerMountSetup.Retournement_Autorise);

              Reg.WriteBool('Optimiser_Allemande',
                SetupTelescope.CheckBox_Optimiser_Poursuite_Allemande.Checked);

              GerMountSetup.TelescopeZenithOuest :=
                (SetupTelescope.RadioGroup_Etat_Telescope_Allemande.
                ItemIndex = 1);

              GerMountSetup.Delai_Decision :=
                SetupTelescope.SpinEdit_Delai_Decision_Allemande.Value;
            end;

          2:
            begin // => Monture fer-à-cheval
              GerMountSetup.Monture_Allemande := False;
              GerMountSetup.Monture_FerACheval := True;
              GerMountSetup.Angle_Horaire_Retournement := Pi_d_2 +
                (SetupTelescope.SpinEdit_Anticipation_Retournement_FerACheval.
                Value) * Pi / 720;

              GerMountSetup.Rayon_minimal :=
                SetupTelescope.SpinEdit_Rayon_minimal_FerACheval.Value
                * Pi / 180;

              GerMountSetup.AngleHoraireLimiteEst_FerACheval :=
                SetupTelescope.SpinEdit_AngleHoraireLimiteEst_FerACheval.Value
                / 720 * Pi;
              WriteFloat('Pointage', 'Angle_Horaire_Limite_Est_FerACheval',
                GerMountSetup.AngleHoraireLimiteEst_FerACheval);
              Reg.WriteFloat('Angle_Horaire_Limite_Est_FerACheval',
                GerMountSetup.AngleHoraireLimiteEst_FerACheval);

              GerMountSetup.AngleHoraireLimiteOuest_FerACheval :=
                SetupTelescope.SpinEdit_AngleHoraireLimiteOuest_FerACheval.Value
                / 720 * Pi;
              WriteFloat('Pointage', 'Angle_Horaire_Limite_Ouest_FerACheval',
                GerMountSetup.AngleHoraireLimiteOuest_FerACheval);
              Reg.WriteFloat('Angle_Horaire_Limite_Ouest_FerACheval',
                GerMountSetup.AngleHoraireLimiteOuest_FerACheval);

              GerMountSetup.DeclinaisonLimite_FerACheval :=
                SetupTelescope.SpinEdit_DeclinaisonLimite_FerACheval.Value
                * Pi / 180;
              WriteFloat('Pointage', 'Declinaison_Limite_FerACheval',
                GerMountSetup.DeclinaisonLimite_FerACheval);
              Reg.WriteFloat('Declinaison_Limite_FerACheval',
                GerMountSetup.DeclinaisonLimite_FerACheval);

              GerMountSetup.Retournement_Autorise :=
                SetupTelescope.CheckBox_Retournement_FerACheval.Checked;
              WriteBool('Pointage', 'Retournement_autorise',
                GerMountSetup.Retournement_Autorise);
              Reg.WriteBool('Retournement_autorise',
                GerMountSetup.Retournement_Autorise);

              Reg.WriteBool('Optimiser_FerACheval',
                SetupTelescope.CheckBox_Optimiser_Poursuite_FerACheval.Checked);

              GerMountSetup.TelescopeZenithOuest :=
                (SetupTelescope.RadioGroup_Etat_Telescope_FerACheval.
                ItemIndex = 1);

              GerMountSetup.Delai_Decision :=
                SetupTelescope.SpinEdit_Delai_Decision_FerACheval.Value;
            end;
        end;
        WriteBool('Pointage', 'Monture_Allemande',
          GerMountSetup.Monture_Allemande);
        Reg.WriteBool('Monture_Allemande', GerMountSetup.Monture_Allemande);
        WriteBool('Pointage', 'Monture_FerACheval',
          GerMountSetup.Monture_FerACheval);
        Reg.WriteBool('Monture_FerACheval', GerMountSetup.Monture_FerACheval);
        WriteInteger('Pointage', 'Delai_Decision', GerMountSetup.Delai_Decision);
        Reg.WriteInteger('Delai_Decision', GerMountSetup.Delai_Decision);
        WriteFloat('Pointage', 'Angle_Horaire_Retournement',
          GerMountSetup.Angle_Horaire_Retournement);
        Reg.WriteFloat('Angle_Horaire_Retournement',
          GerMountSetup.Angle_Horaire_Retournement);
        WriteFloat('Pointage', 'Rayon_minimal', GerMountSetup.Rayon_minimal);
        Reg.WriteFloat('Rayon_minimal', GerMountSetup.Rayon_minimal);
        WriteFloat('Pointage', 'Rayon_minimal', GerMountSetup.Rayon_minimal);
        Reg.WriteBool('TelescopeZenithOuest',
          GerMountSetup.TelescopeZenithOuest);
        WriteBool('Pointage', 'TelescopeZenithOuest',
          GerMountSetup.TelescopeZenithOuest);
        (* Cette même variable est utilisée pour les montures allemandes et
          pour les montures Fer-à-cheval
          true = télescope non retourné ; false = télescope retourné *)

        // Coordonnées géographiques de l'observatoire ************************
        LongSetup:=StrToFloat(SetupTelescope.NbreEditLongSec100.Text)/100;
        LongSetup:=(LongSetup+StrToFloat(SetupTelescope.NbreEditLongSec.Text))/60;
        LongSetup:=(LongSetup+StrToFloat(SetupTelescope.NbreEditLongMin.Text))/60;
        LongSetup:=(LongSetup+StrToFloat(SetupTelescope.NbreEditLongDeg.Text))/180*pi;
        if SetupTelescope.CheckBoxEast.Checked = true then LongSetup:=-LongSetup;
        Reg.WriteFloat('Longitude', LongSetup);

        LatSetup:=StrToFloat(SetupTelescope.NbreEditLatSec100.Text)/100;
        LatSetup:=(LatSetup+StrToFloat(SetupTelescope.NbreEditLatSec.Text))/60;
        LatSetup:=(LatSetup+StrToFloat(SetupTelescope.NbreEditLatMin.Text))/60;
        LatSetup:=(LatSetup+StrToFloat(SetupTelescope.NbreEditLatDeg.Text))/180*pi;
        if SetupTelescope.CheckBoxSouth.Checked = true then LatSetup:=-LatSetup;
        Reg.WriteFloat('Latitude', LatSetup);

        Reg.WriteFloat('Altitude', StrToFloat(SetupTelescope.NbreEditAltitude.Text));
        // COM ****************************************************************

        TimeOutMs_ConnectionsWrite :=
          StrToInt(SetupTelescope.NumberEditWriteTimeOutms.Text);
        Reg.WriteInteger('TimeOutMs_ConnectionsWrite',
          TimeOutMs_ConnectionsWrite);

        TimeOutMs_ConnectionsRead :=
          StrToInt(SetupTelescope.NumberEditReadTimeoutMs.Text);
        Reg.WriteInteger('TimeOutMs_ConnectionsRead',
          TimeOutMs_ConnectionsRead);

        PurgeCommMethod := SetupTelescope.CheckBoxPurgCOMM.Checked;
        Reg.WriteBool('PurgeCommMethod', PurgeCommMethod);

        // Correction d'erreur périodique *************************************
//        PEC_Activated := SetupTelescope.CheckBoxActivatePEC.Checked;
//        WriteBool('PEC', 'Activated',
//          SetupTelescope.CheckBoxActivatePEC.Checked);
//        Reg.WriteBool('PEC_Activated',
//          SetupTelescope.CheckBoxActivatePEC.Checked);

        WriteBool('Parameters','External_PEC',SetupTelescope.CheckBoxActivatePEC.Checked);
        ExternalMCMT_PEC.Activated:=SetupTelescope.CheckBoxActivatePEC.Checked;
        Reg.WriteBool('External_PEC',ExternalMCMT_PEC.Activated);

        WriteInteger('Parameters', 'Ordre0',SetupTelescope.SpinEditOrdre_PEC_0.value);
        ExternalMCMT_PEC.Ordre[0]:=SetupTelescope.SpinEditOrdre_PEC_0.Value;
        Reg.WriteInteger('Ordre0',ExternalMCMT_PEC.Ordre[0]);
        WriteInteger('Parameters', 'Ordre1',SetupTelescope.SpinEditOrdre_PEC_1.value);
        ExternalMCMT_PEC.Ordre[1]:=SetupTelescope.SpinEditOrdre_PEC_1.Value;
        Reg.WriteInteger('Ordre1',ExternalMCMT_PEC.Ordre[1]);
        WriteInteger('Parameters', 'Ordre2',SetupTelescope.SpinEditOrdre_PEC_2.value);
        ExternalMCMT_PEC.Ordre[2]:=SetupTelescope.SpinEditOrdre_PEC_2.Value;
        Reg.WriteInteger('Ordre2',ExternalMCMT_PEC.Ordre[2]);
        WriteInteger('Parameters', 'Ordre3',SetupTelescope.SpinEditOrdre_PEC_3.value);
        ExternalMCMT_PEC.Ordre[3]:=SetupTelescope.SpinEditOrdre_PEC_3.Value;
        Reg.WriteInteger('Ordre3',ExternalMCMT_PEC.Ordre[3]);
        WriteString('Parameters', 'Phase0',SetupTelescope.NbreEditPhase_PEC_0.text);
        ExternalMCMT_PEC.Phase[0]:=strtofloat(SetupTelescope.NbreEditPhase_PEC_0.text);
        Reg.WriteFloat('Phase0',ExternalMCMT_PEC.Phase[0]);
        WriteString('Parameters', 'Phase1',SetupTelescope.NbreEditPhase_PEC_1.text);
        ExternalMCMT_PEC.Phase[1]:=strtofloat(SetupTelescope.NbreEditPhase_PEC_1.text);
        Reg.WriteFloat('Phase1',ExternalMCMT_PEC.Phase[1]);
        WriteString('Parameters', 'Phase2',SetupTelescope.NbreEditPhase_PEC_2.text);
        ExternalMCMT_PEC.Phase[2]:=strtofloat(SetupTelescope.NbreEditPhase_PEC_2.text);
        Reg.WriteFloat('Phase2',ExternalMCMT_PEC.Phase[2]);
        WriteString('Parameters', 'Phase3',SetupTelescope.NbreEditPhase_PEC_3.text);
        ExternalMCMT_PEC.Phase[3]:=strtofloat(SetupTelescope.NbreEditPhase_PEC_3.text);
        Reg.WriteFloat('Phase3',ExternalMCMT_PEC.Phase[3]);
        WriteString('Parameters', 'Amplitude0',SetupTelescope.NbreEditAmplitude_PEC_0.text);
        ExternalMCMT_PEC.Amplitude[0]:=strtofloat(SetupTelescope.NbreEditAmplitude_PEC_0.text);
        Reg.WriteFloat('Amplitude0',ExternalMCMT_PEC.Amplitude[0]);
        WriteString('Parameters', 'Amplitude1',SetupTelescope.NbreEditAmplitude_PEC_1.text);
        ExternalMCMT_PEC.Amplitude[1]:=strtofloat(SetupTelescope.NbreEditAmplitude_PEC_1.text);
        Reg.WriteFloat('Amplitude1',ExternalMCMT_PEC.Amplitude[1]);
        WriteString('Parameters', 'Amplitude2',SetupTelescope.NbreEditAmplitude_PEC_2.text);
        ExternalMCMT_PEC.Amplitude[2]:=strtofloat(SetupTelescope.NbreEditAmplitude_PEC_2.text);
        Reg.WriteFloat('Amplitude2',ExternalMCMT_PEC.Amplitude[2]);
        WriteString('Parameters', 'Amplitude3',SetupTelescope.NbreEditAmplitude_PEC_3.text);
        ExternalMCMT_PEC.Amplitude[3]:=strtofloat(SetupTelescope.NbreEditAmplitude_PEC_3.text);
        Reg.WriteFloat('Amplitude3',ExternalMCMT_PEC.Amplitude[3]);
        // Correction de King
        KING_Activated := SetupTelescope.CheckBoxActivateKing.Checked;
        WriteBool('King', 'Activated',
          SetupTelescope.CheckBoxActivateKing.Checked);
        Reg.WriteBool('King_Activated', KING_Activated);

        TraceEnabled:=SetupTelescope.CheckBoxTrace.Checked;
        Reg.WriteBool('TraceEnabled',TraceEnabled);
        FreeSpeed:=SetupTelescope.CheckBoxFreeSpeed.Checked;
        Reg.WriteBool('FreeSpeed',FreeSpeed);
        SimulatorEnabled:=SetupTelescope.CheckBoxSimulator.Checked;
        Reg.WriteBool('SimulatorEnabled',SimulatorEnabled);

        King_Activated:= SetupTelescope.CheckBoxActivateKing.Checked;
        ExternalMCMT_PEC.Activated:= SetupTelescope.CheckBoxActivatePEC.Checked;

      end;
      Reg.CloseKey;
    Finally
      DeviceIni.free;
      Reg.Free;
    End;
  end;
//  Form2.TimerCoord.Enabled:=true;
  SetupTelescope.Free; //Destroy...
  Form_Etat_Telescope.Free; //Destroy...
  LogEndProc(procName);
end;

procedure SlewToCoordinates_Core(RightAscension, Declination: Double);
Const
  procName='SlewToCoordinates_Core';
begin
  LogEnterProc(procName);
  if fParked then
  begin
    WriteToTrace('SlewToCoordinates error telescope is parked');
    raise EoleSysError.Create('Telescope is parked', $80040401, 0)
  end
  else
    if not (fTracking) then
    begin
      WriteToTrace('SlewToCoordinates error telescope is not tracking');
      raise EoleSysError.Create('Telescope is not tracking', $80040401, 0)
    end
    else
    begin
      WriteToTrace('SlewToCoordinates '+FloatToStr(RightAscension)+' '+FloatToStr(Declination));
      SlewToCoordinatesAsync_Core(RightAscension, Declination);
      while Get_Slewing_Core do ;
    end;
  LogEndProc(procName);
end;

procedure SlewToCoordinatesAsync_Core(RightAscension, Declination: Double);
Const
  procName='SlewToCoordinatesAsync_Core';
var
  Alpha, Delta: double;
  Accuracy:double;
begin
  LogEnterProc(procName);
  if fParked then
  begin
    WriteToTrace('SlewToCoordinatesAsync error telescope is parked');
    raise EoleSysError.Create('Telescope is parked', $80040401, 0)
  end
  else
    if not (fTracking) then
    begin
      WriteToTrace('SlewToCoordinatesAsync error telescope is not tracking');
      raise EoleSysError.Create('Telescope is not tracking', $80040401, 0)
    end
    else
    begin
      if (RightAscension > 24) or (RightAscension < 0) then
      begin
        WriteToTrace('SlewToCoordinatesAsync error right ascension out of [0,24]');
        raise EoleSysError.Create('Right ascension out of [0,24]', $80040401, 0);
      end
      else
      begin
        fTargetRightAscension := RightAscension;
        fTargetAscOK := true;
        Alpha := RightAscension / 12 * PI;
      end;
      if (Declination > 90) or (Declination < -90) then
      begin
        WriteToTrace('SlewToCoordinatesAsync error declination out of [-90,90]');
        raise EoleSysError.Create('Declination out of [-90,90]', $80040401, 0);
      end
      else
      begin
        fTargetDeclination := Declination;
        fTargetDecOK := true;
        Delta := Declination / 180 * PI
      end;
      WriteToTrace('SlewToCoordinatesAsync '+FloatToStr(RightAscension)+' '+FloatToStr(Declination));
      InitTelescopeSeeker(Alpha, Delta,Lieu.Lat,Lieu.Long,Accuracy);
    end;
  LogEndProc(procName);
end;

procedure SlewToTarget_Core;
Const
  procName='SlewToTarget_Core';
begin
  LogEnterProc(procName);
  if fParked then
  begin
    WriteToTrace('SlewToTarget error telescope is parked');
    raise EoleSysError.Create('Telescope is parked', $80040401, 0)
  end
  else
    if not (fTracking) then
    begin
      WriteToTrace('SlewToTarget error telescope is not tracking');
      raise EoleSysError.Create('Telescope is not tracking', $80040401, 0)
    end
    else
    begin
      WriteToTrace('SlewToTarget');
      SlewToTargetAsync_Core;
      while Get_Slewing_Core do ;
    end;
  LogEndProc(procName);
end;

procedure SlewToTargetAsync_Core;
Const
  procName='SlewToTargetAsync_Core';
var
  Alpha, Delta: double;
  Accuracy:double;
begin
  LogEnterProc(procName);
  if fParked then
  begin
    WriteToTrace('SlewToTargetAsync error telescope is parked');
    raise EoleSysError.Create('Telescope is parked', $80040401, 0)
  end
  else
    if not (fTracking) then
    begin
      WriteToTrace('SlewToTargetAsync error telescope is not tracking');
      raise EoleSysError.Create('Telescope is not tracking', $80040401, 0)
    end
    else
    begin
      Alpha := fTargetRightAscension / 12 * PI;
      Delta := fTargetDeclination / 180 * PI;
      WriteToTrace('SlewToTargetAsync');
      InitTelescopeSeeker(Alpha, Delta,Lieu.Lat,Lieu.Long,Accuracy);
    end;
  LogEndProc(procName);
end;

procedure SyncToCoordinates_Core(RightAscension, Declination: Double);
Const
  procName='SyncToCoordinates_Core';
begin
  LogEnterProc(procName);
  if fParked then
  begin
    WriteToTrace('SyncToCoordinates error telescope is parked');
    raise EoleSysError.Create('Telescope is parked', $80040401, 0)
  end
  else
    if not (fTracking) then
    begin
      WriteToTrace('SyncToCoordinates error telescope is not tracking');
      raise EoleSysError.Create('Telescope is not tracking', $80040401, 0)
    end
    else
    begin
      if (Declination > 90) or (Declination < -90) or (RightAscension > 24) or (RightAscension < 0) then
      begin
        WriteToTrace('SyncToCoordinates error coordinates not available');
        raise EoleSysError.Create('Coordinates not available', $80040401, 0);
      end;
      fDeclination := Declination;
      fRightAscension := RightAscension;
      fTargetDeclination := Declination;
      fTargetRightAscension := RightAscension;
      if not (Calibrate(RightAscension / 12 * PI, Declination / 180 * PI)) then
      begin
        WriteToTrace('SyncToCoordinates error sync impossible');
        raise EoleSysError.Create('Sync impossible', $80040401, 0);
      end;
      WriteToTrace('SyncToCoordinates '+FloatToStr(RightAscension)+' '+FloatToStr(Declination));
    end;
  LogEndProc(procName);
end;

procedure SyncToTarget_Core;
Const
  procName='SyncToTarget_Core';
begin
  LogEnterProc(procName);
  WriteToTrace('Sync To Target');
  if fParked then
  begin
    WriteToTrace('SyncToTarget error telescope is parked');
    raise EoleSysError.Create('Telescope is parked', $80040401, 0)
  end
  else
    if not (fTracking) then
    begin
      WriteToTrace('SyncToTarget error telescope is not tracking');
      raise EoleSysError.Create('Telescope is not tracking', $80040401, 0)
    end
    else
    begin
      fDeclination := fTargetDeclination;
      fRightAscension := fTargetRightAscension;
      if not (Calibrate(fTargetRightAscension / 12 * PI, fTargetDeclination / 180 * PI)) then
      begin
        WriteToTrace('SyncToTarget error sync impossible');
        raise EoleSysError.Create('Sync impossible', $80040401, 0);
      end;
      WriteToTrace('SyncToTarget');
    end;
  LogEndProc(procName);
end;

procedure Unpark_Core;
Const
  procName='Unpark_Core';
var
  astring   : shortstring;
  Reg       : TRegistry;
  Alpha_Temp,
  Decli_Temp: double;

begin
  LogEnterProc(procName);
  WriteToTrace('Unpark');
  if fParked then
  begin
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    if not (Reg.OpenKey('SOFTWARE\MCMT32\', False)) then Reg.OpenKey('SOFTWARE\MCMT32\', True);
    if Reg.ValueExists('Park_AH') then
      Alpha_Temp := Reg.ReadFloat('Park_AH')
    else Alpha_Temp := 0;

    if Reg.ValueExists('Park_Dec') then
      Decli_Temp := Reg.ReadFloat('Park_Dec')
    else Decli_Temp := 0;
    Reg.CloseKey;
    Reg.Free;
    Try
      astring := 'N' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0); // Commande No Park
      sendcommand(astring, 0, 0);
    finally
    end;
    BackLash.Activated := BackLash.Saved_Park; // restore backlash state
    Alpha_Temp := CalculeTSL(Now+SpeedIntMCMT.GMT/24,Lieu.Long)-Alpha_Temp;
    Remet2Pi(Alpha_Temp);
    Calibrate(Alpha_Temp, Decli_Temp);
    fParked := false;
    Form2.BitBtnSideral.Enabled:=true;
    Form2.LabelSideral.Color:=clGreen;
    fTracking := true;
  end;
  LogEndProc(procName);
end;

end.
