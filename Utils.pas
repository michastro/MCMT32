unit Utils;

interface
{$R+}
uses
      SysUtils,
      Math,
      DateUtils,
      Forms,
      SyncObjs,
      ShlObj,
      Classes;

{Remet un angle dans l'intervalle 0 2Pi}
procedure Remet2Pi(Var Angle:Double);

{Calcul heure sidérale locale}
Function CalculeTSL(DateTime:TdateTime;Longitude:Double):Double;

{Calcul l'angle horaire}
function AH(long,alpha :extended;GMT : integer):extended;

{Calcul vitesse relative de King}
Function getKingSpeedCorrection(AH,Delta,Latitude:Double):Double;

{Renvoie le string 'o' si la valeur en entrée est vide; }
function TestString(Entree:string):string;

Function WriteBoolToReg(S:String;B:Boolean):Boolean;

Function  LocalAppDataPath : string;
Procedure WaitMainthread(procCaller:String);
function HH(data:longword):byte;
function LH(data:longword):byte;
function HL(data:longword):byte;
function LL(data:longword):byte;
function DegRad(Data:double):double;
function RadDeg(Data:double):double;

Function Return_MCMT_StoreIniFilePath:String;

procedure WriteToLogFile(Data: string);

Procedure LogEnterProc    (ProcName:String);
Procedure LogEndProc      (Procname:String);
Procedure LogEnterProc_DLL(ProcName:String);
Procedure LogEndProc_DLL  (Procname:String);
Procedure LogProc         (Procname,message:String);
function ApplicationVersion: String;


Var
 LogEnabled,SimulatorEnabled  : Boolean;
 FactorTime           : Double ;
 fLogList: TStringList;
 File_Debug   : Text;
 FormatDateTime:string;
 PremierPassage:boolean=true;

IMPLEMENTATION

Uses registry,Windows,Dialogs;

Var

  SectionLog           : TCriticalSection;
  PreviousLogTimeStamp : Int64;
  LogFileName          : String;
  PreviousThreadID     : Cardinal;



procedure Remet2Pi(Var Angle:Double); // 0 to 2Pi
begin
Try
 While (Angle <  0   ) do Angle:=Angle+(2*Pi);
 While (Angle >= 2*Pi) do Angle:=Angle-(2*Pi);
Except
end;
end;


Function CalculeTSL(DateTime:TdateTime;Longitude:Double):Double;
 {La reference est 31 Dec 1899 à 12 h}
Var

  DateOr: Tdatetime;
  Teta  : Double   ;

Begin
  DateOr:=EncodeDate(1899,12,31)+0.5;
  Teta  :=(DateTime-DateOr)/36525.0 ;   {Teta en frac de siecles !}
  Teta  := 67125.836 + ((36625.0*86400.0)+184.542)*Teta + 0.0929*Sqr(Teta); {en sec}
  Teta  :=(Frac(Teta/86400.0)*86400.0)/3600.0; {en heures}
  Teta  := (Teta/12.0)*Pi - Longitude;
  While Teta <  0    do Teta:=Teta+(2*Pi);
  While Teta >= 2*Pi do Teta:=Teta-(2*Pi);
  CalculeTSL:=Teta;
end;

function AH(long,alpha :extended;GMT : integer):extended;    {Angle Horaire}
var
   temp:extended;
begin
   Temp:=CalculeTSL(Now+GMT/24,long)-alpha;
   if (temp>pi) then temp:=temp-2*pi;

   //Avec ce contrôle supplémentaire, on obtient  -pi < AH <= +pi
   if (temp<=-pi) then temp:=temp+2*pi;
   result:=temp;

end;


Function getKingSpeedCorrection(AH,Delta,Latitude:Double):Double;
Const Delta_n=0.000277; {n-1 pour T = 288 K et p = 1 bar ; source : Danjon }
var   sinus_h,Denominateur,Numerateur : double;

begin
  Try
  sinus_h           :=sin(Latitude)  * sin(Delta)+cos(Delta)*cos(Latitude)*cos(AH);
  Denominateur      := cos(Delta)    * sqr(sinus_h);
  Numerateur        := cos(Latitude) * ( cos(Latitude)*cos(Delta) +
                                         sin(Delta)*sin(Latitude)*cos(AH));
  Result:=1 - Delta_n*Numerateur/Denominateur;
  Except
  Result:=1;
  End;
end;


function TestString(Entree:string):string;
begin
 if Entree='' then TestString:='0' else TestString:=Entree;
end;

Function WriteBoolToReg(S:String;B:Boolean):Boolean;
Var  Reg:TRegistry;

Begin
  Result:=True;
  Reg   := TRegistry.Create;
  Try
  Reg.RootKey := HKEY_CURRENT_USER;
  if not(Reg.OpenKey('SOFTWARE\MCMT32',False))
    then Reg.OpenKey('SOFTWARE\MCMT32',true);
  Reg.WriteBool(S,B);
  Reg.CloseKey;
  Finally
  Reg.Free;
  end;
End;

Const
  NameLog     :String= 'MCMT32_DLL_';
  DirNameMCMT :String= 'MCMT32\';
  DirLogMCMT  :String= 'MCMT32_logs\';
  MCMT_INIFILE:String= 'mcmt32.ini';


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Function LocalAppDataPath : string;
var  pidl       : PItemIDList;
     InFolder   : array[0..MAX_PATH] of Char;

begin
   SHGetSpecialFolderLocation(Application.Handle, CSIDL_PERSONAL, pidl);
   SHGetPathFromIDList(PIDL, InFolder);
   result := InFolder;         // -> C:/users/cavadore/documents
end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


Function return_MCMT_StoreIniFilePath:String;
Var UserDocPath:String;
Begin
   UserDocPath:=LocalAppDataPath;
   if UserDocPath[Length(UserDocPath)]<>'\' then UserDocPath:=UserDocPath+'\';
   UserDocPath:=UserDocPath+DirNameMCMT;
   ForceDirectories(UserDocPath);
   Result:=UserDocPath+MCMT_INIFILE;
End;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function HH(data:longword):byte;
begin
  HH:=(data and $FF000000) shr 24;
end;

function LH(data:longword):byte;
begin
  LH:=(data and $00FF0000) shr 16;
end;

function HL(data:longword):byte;
begin
  HL:=(data and $0000FF00) shr 8;
end;

function LL(data:longword):byte;
begin
  LL:=(data and $000000FF);
end;

function DegRad(Data:double):double;
begin
  DegRad:=Data*PI/180;
end;

function RadDeg(Data:double):double;
begin
  RadDeg:=Data*180/PI;
end;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


procedure WriteToLogFile(Data: string);
var
  Hour, Min,
  Sec, MSec    : Word;
  Value        : Int64;
  S2,S,St      : String;
  Diff         : Int64 ;
  Dts          : Int64 ;
  N            : TdateTime;
  ThreadID     : Cardinal;


begin
  if Not LogEnabled then Exit;
  Try
    Try
      if PremierPassage then
      begin
        PremierPassage:=false;
        DateTimeToString(FormatDateTime,'yymmddhhnnss',now);
        NameLog             := NameLog+FormatDateTime+'.log';
        LogFileName:=LocalAppDataPath;
        if (LogFileName[Length(LogFileName)]<>'\') then
          LogFileName:=LogFileName+'\';
        LogFileName:=LogFileName+DirNameMCMT+DirLogMCMT;
        LogFileName         := LogFileName+NameLog;
        fLogList:=TStringList.Create;

        assignfile(File_Debug,LogFileName);
        If FileExists(LogFileName) then Append (File_Debug)
                             else Rewrite(File_Debug);
        writeln(file_debug,data);
      end;
      SectionLog.Enter;
      QueryPerformanceCounter(Value);
      N:=Now;
      DecodeTime(N,Hour,Min,Sec,MSec);
      S:=InttoStr(MSec);

      If (Msec<10 ) then S:='00'+S else
      If (Msec<100) then S:='0'+S;

      Diff:=Value-PreviousLogTimeStamp;
      Dts:=Round(Diff*FactorTime); // µsec

      if (Dts<1000) then S2:=Format(' {%d µs}',[Dts]) // 1ms
      else
        if (Dts<1000000) then S2:=Format(' {%1.1f ms}',[Dts/1000])  // 1s
        else S2:=Format(' {%1.1f s}',[Dts/1000000]);

      ThreadID        := GetCurrentThreadID;
      if (ThreadID<>PreviousThreadID)  then St:='@'
      else St:=' ';
//      fLogList.Add(St+'[0x'+IntToHex(GetCurrentThreadID,4)+']: '+DateTimeToStr(now)+'.'+S+S2+' : '+Data);
      writeln(file_debug,St+'[0x'+IntToHex(GetCurrentThreadID,4)+']: '+DateTimeToStr(now)+'.'+S+S2+' : '+Data);
{      if fLogList.Count>3 then
      begin
        Try
          fLogList.SaveToFile(LogFileName);
          fLogList.Clear;
        Except
          Showmessage('oups');
        end;
      end;
      PreviousLogTimeStamp:=Value;
      PreviousThreadID    :=ThreadID;}
    Finally
      SectionLog.Leave;
    end;
  Except
  end;
end;

Function ReturnFactorTime:Double;
Const timems=200;
Var   Value1,Value2:int64;

Begin
  // µsec
  QueryPerformanceCounter(Value1);
  Sleep(timems);
  QueryPerformanceCounter(Value2);

  Result:=(timems)/(Value2-Value1)*1000;
End;


Procedure LogEnterProc(ProcName:String);
begin
  WriteToLOGFile('->>>  '+Procname+' enter');
end;

Procedure LogEndProc(Procname:String);
begin
 WriteToLOGFile(Procname+' exit  ->>>');
end;


Procedure LogEnterProc_DLL(ProcName:String);
begin
  WriteToLOGFile('^');
  WriteToLOGFile(Procname+' enter');
end;

Procedure LogEndProc_DLL(Procname:String);
begin
 WriteToLOGFile(Procname+' exit');
 WriteToLOGFile('¤');
end;


Procedure LogProc(Procname,message:String);
begin
  WriteToLOGFile('('+Procname+') '+message);
end;

Procedure WaitMainthread(procCaller:String);
begin
 If (Windows.GetCurrentThreadId()=System.MainThreadID) then
  Application.ProcessMessages;

 Sleep(20);
 WriteToLOGFile('Waiting >>> ['+procCaller+']');
end;

function ApplicationVersion: String;
var
  VerInfoSize, VerValueSize, Dummy: DWord;
  VerInfo: Pointer;
  VerValue: PVSFixedFileInfo;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  {Deux solutions : }
  if VerInfoSize <> 0 then
  {- Les info de version sont incluses }
  begin
    {On alloue de la mémoire pour un pointeur sur les info de version : }
    GetMem(VerInfo, VerInfoSize);
    {On récupère ces informations : }
    GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
    {On traite les informations ainsi récupérées : }
    with VerValue^ do
    begin
      Result := IntTostr(dwFileVersionMS shr 16);
      Result := Result + '.' + IntTostr(dwFileVersionMS and $FFFF);
      Result := Result + '.' + IntTostr(dwFileVersionLS shr 16);
      Result := Result + '.' + IntTostr(dwFileVersionLS and $FFFF);
    end;

    {On libère la place précédemment allouée : }
    FreeMem(VerInfo, VerInfoSize);
  end

  else
    {- Les infos de version ne sont pas incluses }
    {On déclenche une exception dans le programme : }
    raise EAccessViolation.Create('Les informations de version de sont pas inclues');
end;

Initialization
  LogFileName         := LogFileName+NameLog;
  PreviousThreadID    := GetCurrentThreadID;
  SectionLog          := TCriticalSection.Create;
  QueryPerformanceCounter(PreviousLogTimeStamp);
  FactorTime          := ReturnFactorTime;

Finalization
 if LogEnabled then
 begin
   if fLogList.Count>0 then
   begin
     Try
       fLogList.SaveToFile(LogFileName);
     Except
          Showmessage('oups');
     end;
   end;
   fLogList.Free;
 end;
 SectionLog.Free;
end.
