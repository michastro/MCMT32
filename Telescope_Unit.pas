unit Telescope_Unit;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, MCMT32_ASCOM_TLB,mscorlib_tlb, StdVcl,Windows;

function Pas2DegAD(Pas:double):double;
function Pas2DegDEC(Pas:double):double;

type
  TTelescope = class(TAutoObject, ITelescope)
  public
    procedure AfterConstruction; override;
  protected
    function AxisRates(Axis: TelescopeAxes): IAxisRates; safecall;
    function CanMoveAxis(Axe: TelescopeAxes): WordBool; safecall;
    function Get_AlignmentMode: AlignmentModes; safecall;
    function Get_Altitude: Double; safecall;
    function Get_ApertureArea: Double; safecall;
    function Get_ApertureDiameter: Double; safecall;
    function Get_AtHome: WordBool; safecall;
    function Get_AtPark: WordBool; safecall;
    function Get_Azimuth: Double; safecall;
    function Get_CanFindHome: WordBool; safecall;
    function Get_CanPark: WordBool; safecall;
    function Get_CanPulseGuide: WordBool; safecall;
    function Get_CanSetDeclinationRate: WordBool; safecall;
    function Get_CanSetGuideRates: WordBool; safecall;
    function Get_CanSetPark: WordBool; safecall;
    function Get_CanSetPierSide: WordBool; safecall;
    function Get_CanSetRightAscensionRate: WordBool; safecall;
    function Get_CanSetTracking: WordBool; safecall;
    function Get_CanSlew: WordBool; safecall;
    function Get_CanSlewAltAz: WordBool; safecall;
    function Get_CanSlewAltAzAsync: WordBool; safecall;
    function Get_CanSlewAsync: WordBool; safecall;
    function Get_CanSync: WordBool; safecall;
    function Get_CanSyncAltAz: WordBool; safecall;
    function Get_CanUnpark: WordBool; safecall;
    function Get_Connected: WordBool; safecall;
    function Get_Declination: Double; safecall;
    function Get_DeclinationRate: Double; safecall;
    function Get_Description: WideString; safecall;
    function Get_DoesRefraction: WordBool; safecall;
    function Get_DriverInfo: WideString; safecall;
    function Get_DriverVersion: WideString; safecall;
    function Get_EquatorialSystem: EquatorialCoordinateType; safecall;
    function Get_FocalLength: Double; safecall;
    function Get_GuideRateDeclination: Double; safecall;
    function Get_GuideRateRightAscension: Double; safecall;
    function Get_InterfaceVersion: Smallint; safecall;
    function Get_IsPulseGuiding: WordBool; safecall;
    function Get_Name: WideString; safecall;
    function Get_RightAscension: Double; safecall;
    function Get_RightAscensionRate: Double; safecall;
    function Get_SideOfPier: Integer; safecall;
    function Get_SiderealTime: Double; safecall;
    function Get_SiteElevation: Double; safecall;
    function Get_SiteLatitude: Double; safecall;
    function Get_SiteLongitude: Double; safecall;
    function Get_Slewing: WordBool; safecall;
    function Get_SlewSettleTime: Integer; safecall;
    function Get_TargetDeclination: Double; safecall;
    function Get_TargetRightAscension: Double; safecall;
    function Get_Tracking: WordBool; safecall;
    function Get_TrackingRate: Integer; safecall;
    function Get_TrackingRates: ITrackingRates; safecall;
    function Get_UTCDate: TDateTime; safecall;
    procedure AbortSlew; safecall;
    procedure CommandBlind; safecall;
    procedure CommandBool; safecall;
    procedure CommandString; safecall;
    procedure FindHome; safecall;
    procedure MoveAxis(Axe: TelescopeAxes; Rate: Double); safecall;
    procedure Park; safecall;
    procedure PulseGuide(Direction: GuideDirections; Duration: Integer); safecall;
    procedure Set_Connected(Value: WordBool); safecall;
    procedure Set_DeclinationRate(Value: Double); safecall;
    procedure Set_DoesRefraction(Value: WordBool); safecall;
    procedure Set_GuideRateDeclination(Value: Double); safecall;
    procedure Set_GuideRateRightAscension(Value: Double); safecall;
    procedure Set_RightAscensionRate(Value: Double); safecall;
    procedure Set_SideOfPier(Value: Integer); safecall;
    procedure Set_SiteElevation(Value: Double); safecall;
    procedure Set_SiteLatitude(Value: Double); safecall;
    procedure Set_SiteLongitude(Value: Double); safecall;
    procedure Set_SlewSettleTime(Value: Integer); safecall;
    procedure Set_TargetDeclination(Value: Double); safecall;
    procedure Set_TargetRightAscension(Value: Double); safecall;
    procedure Set_Tracking(Value: WordBool); safecall;
    procedure Set_TrackingRate(Value: Integer); safecall;
    procedure Set_UTCDate(Value: TDateTime); safecall;
    procedure SetPark; safecall;
    procedure SetupDialog; safecall;
    procedure SlewToAltAz; safecall;
    procedure SlewToAltAzAsync; safecall;
    procedure SlewToCoordinates(RightAscension, Declination: Double); safecall;
    procedure SlewToCoordinatesAsync(RightAscension, Declination: Double); safecall;
    procedure SlewToTarget; safecall;
    procedure SlewToTargetAsync; safecall;
    procedure SyncToAltAz; safecall;
    procedure SyncToCoordinates(RightAscension, Declination: Double); safecall;
    procedure SyncToTarget; safecall;
    procedure Unpark; safecall;
    function Method: HResult; safecall;
    function Get_SupportedActions: OleVariant; safecall;
    function Get_PECCodeur: Integer; safecall;
    function Get_RawPositionAlpha_arcsecCodeurs: Double; safecall;
    function Get_RawPositionAlphaInit_arcsecCodeurs: Double; safecall;
    function Get_RawPositionDelta_arcsecCodeurs: Double; safecall;
    function Get_RawPositionDeltaInit_arcsecCodeurs: Double; safecall;
    function Get_DestinationSideOfPier(RightAscension, Declination: Double): PierSide;
          safecall;

  end;
var
  TargetRAOK,TargetDECOK:boolean;
implementation

uses
      Core,
      ComServ,
      System.IniFiles,
      System.SysUtils,
      System.Classes,
      System.Variants,
      System.Math,
      IdGlobal,
      Vcl.Dialogs,
      Vcl.Controls,
      Vcl.Forms,
      FMX.Types,
      COMM,
      Utils,
      Rate_Unit,
      AxisRates_Unit,
      TrackingRates_Unit,
      HiResTim,
      System.Win.Registry,
      VarGlobal,
      RateEnumUnit,
      MCMT_Main,
      UnitCalcul;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//   ASCOM
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function Pas2DegAD(Pas:double):double;
begin
  result:=Pas/SpeedIntMCMT.Resol_AD*360;
end;

function Pas2DegDEC(Pas:double):double;
begin
  result:=Pas/SpeedIntMCMT.Resol_DEC*360;
 end;



procedure TTelescope.AfterConstruction;
var
  i,j:integer;
  Reg:TRegistry;
begin
  inherited;
  if not(fConnected) then
  begin
    Reg:=TRegistry.Create;
    Try
      Reg.RootKey := HKEY_CURRENT_USER;
      if not (Reg.OpenKey('SOFTWARE\MCMT32\', False)) then Reg.OpenKey('SOFTWARE\MCMT32\', true);
      if Reg.ValueExists('Resol_AD') then
        SpeedIntMCMT.Resol_AD := Reg.ReadInteger('Resol_AD')
      else SpeedIntMCMT.Resol_AD:=4608000;
      if Reg.ValueExists('Resol_DEC') then
        SpeedIntMCMT.Resol_DEC := Reg.ReadInteger('Resol_DEC')
      else SpeedIntMCMT.Resol_DEC:=4608000;
      if Reg.ValueExists('V_Corr_P_AD') then
        SpeedIntMCMT.V_Corr_P_AD := Reg.ReadFloat('V_Corr_P_AD')
      else SpeedIntMCMT.V_Corr_P_AD:=1;
      if Reg.ValueExists('V_Corr_P_DEC') then
        SpeedIntMCMT.V_Corr_P_DEC := Reg.ReadFloat('V_Corr_P_DEC')
      else SpeedIntMCMT.V_Corr_P_DEC:=1;
      if Reg.ValueExists('V_Point_L_AD') then
        SpeedIntMCMT.V_Point_L_AD := Reg.ReadFloat('V_Point_L_AD')
      else SpeedIntMCMT.V_Point_L_AD:=1;
      if Reg.ValueExists('V_Point_L_DEC') then
        SpeedIntMCMT.V_Point_L_DEC := Reg.ReadFloat('V_Point_L_DEC')
      else SpeedIntMCMT.V_Point_L_DEC:=1;
      if Reg.ValueExists('V_Point_R_AD') then
        SpeedIntMCMT.V_Point_R_AD := Reg.ReadFloat('V_Point_R_AD')
      else SpeedIntMCMT.V_Point_R_AD:=1;
      if Reg.ValueExists('V_Point_R_DEC') then
        SpeedIntMCMT.V_Point_R_DEC := Reg.ReadFloat('V_Point_R_DEC')
      else SpeedIntMCMT.V_Point_R_DEC:=1;
      if Reg.ValueExists('FreeSpeed') then
        FreeSpeed:=Reg.ReadBool('FreeSpeed')
      else FreeSpeed:=False;
    Finally
      Reg.Free;
    End;
    fConnected := false;
    fTargetDecOK:=true;
    fTargetAscOK:=true;
    fTrackingRate:=driveSidereal;
    for i:=0 to 2 do
    begin
      g_Rates[i]:=TAxisRates.Create;
      g_RateEnum[i]:=TRateEnum.Create;
      g_Rates[i].fAxe:=i;
      g_rateEnum[i].fAxe:=i;
      for j:=0 to 2 do
        g_Rate[i,j]:=TRate.Create;
    end;
    g_Rates[2].fcount:=0;
    g_RateEnum[2].fcount:=0;
    CountRate[2]:=0;
    if FreeSpeed then
    begin
      g_Rates[0].fCount:=1;
      g_Rates[1].fCount:=1;
      g_RateEnum[0].fcount:=1;
      g_RateEnum[1].fcount:=1;
      CountRate[0]:=1;
      CountRate[1]:=1;
      VEnumMin[0,0]:=0;
      VEnumMax[0,0]:=Pas2DegAD(SpeedIntMCMT.V_Point_R_AD);
      VEnumMin[1,0]:=0;
      VEnumMax[1,0]:=Pas2DegDEC(SpeedIntMCMT.V_Point_R_DEC);
      g_Rate[0,0].fMinimum:=0;
      g_Rate[0,0].fMaximum:=Pas2DegAD(SpeedIntMCMT.V_Point_R_AD);
      g_Rate[1,0].fMinimum:=0;
      g_Rate[1,0].fMaximum:=Pas2DegDEC(SpeedIntMCMT.V_Point_R_DEC);
    end
    else
    begin
      g_Rates[0].fCount:=3;
      g_Rates[1].fCount:=3;
      g_RateEnum[0].fcount:=3;
      g_RateEnum[1].fcount:=3;
      CountRate[0]:=3;
      CountRate[1]:=3;
      VEnumMin[0,0]:=Pas2DegAD(SpeedIntMCMT.V_Corr_P_AD);
      VEnumMax[0,0]:=Pas2DegAD(SpeedIntMCMT.V_Corr_P_AD);
      VEnumMin[0,1]:=Pas2DegAD(SpeedIntMCMT.V_Point_L_AD);
      VEnumMax[0,1]:=Pas2DegAD(SpeedIntMCMT.V_Point_L_AD);
      VEnumMin[0,2]:=Pas2DegAD(SpeedIntMCMT.V_Point_R_AD);
      VEnumMax[0,2]:=Pas2DegAD(SpeedIntMCMT.V_Point_R_AD);
      VEnumMin[1,0]:=Pas2DegDEC(SpeedIntMCMT.V_Corr_P_DEC);
      VEnumMax[1,0]:=Pas2DegDEC(SpeedIntMCMT.V_Corr_P_DEC);
      VEnumMin[1,1]:=Pas2DegDEC(SpeedIntMCMT.V_Point_L_DEC);
      VEnumMax[1,1]:=Pas2DegDEC(SpeedIntMCMT.V_Point_L_DEC);
      VEnumMin[1,2]:=Pas2DegDEC(SpeedIntMCMT.V_Point_R_DEC);
      VEnumMax[1,2]:=Pas2DegDEC(SpeedIntMCMT.V_Point_R_DEC);
      g_Rate[0,0].fMinimum:=Pas2DegAD(SpeedIntMCMT.V_Corr_P_AD);
      g_Rate[0,0].fMaximum:=Pas2DegAD(SpeedIntMCMT.V_Corr_P_AD);
      g_Rate[0,1].fMinimum:=Pas2DegAD(SpeedIntMCMT.V_Point_L_AD);
      g_Rate[0,1].fMaximum:=Pas2DegAD(SpeedIntMCMT.V_Point_L_AD);
      g_Rate[0,2].fMinimum:=Pas2DegAD(SpeedIntMCMT.V_Point_R_AD);
      g_Rate[0,2].fMaximum:=Pas2DegAD(SpeedIntMCMT.V_Point_R_AD);
      g_Rate[1,0].fMinimum:=Pas2DegDEC(SpeedIntMCMT.V_Corr_P_DEC);
      g_Rate[1,0].fMaximum:=Pas2DegDEC(SpeedIntMCMT.V_Corr_P_DEC);
      g_Rate[1,1].fMinimum:=Pas2DegDEC(SpeedIntMCMT.V_Point_L_DEC);
      g_Rate[1,1].fMaximum:=Pas2DegDEC(SpeedIntMCMT.V_Point_L_DEC);
      g_Rate[1,2].fMinimum:=Pas2DegDEC(SpeedIntMCMT.V_Point_R_DEC);
      g_Rate[1,2].fMaximum:=Pas2DegDEC(SpeedIntMCMT.V_Point_R_DEC);
    end;
    g_ActionsList := CreateOleObject('System.Collections.ArrayList');
    g_ActionsList.Add('PECCodeur');
    g_ActionsList.Add('RawPositionAlphaInit_arcsecCodeurs');
    g_ActionsList.Add('RawPositionDeltaInit_arcsecCodeurs');
    g_ActionsList.Add('RawPositionAlpha_arcsecCodeurs');
    g_ActionsList.Add('RawPositionDelta_arcsecCodeurs');
    TargetDECOK:=false;
  end;
end;

function TTelescope.AxisRates(Axis: TelescopeAxes): IAxisRates;
Const
  procName='AxisRates';
begin
  LogEnterProc(procName);
  LogProc(procName,format('adresse axe %d=%d',[Axis,longword(g_Rates[Axis])]));
  result := g_Rates[Axis];
  LogEndProc(procName);
end;

function TTelescope.CanMoveAxis(Axe: TelescopeAxes): WordBool;
Const
  procName='CanMoveAxis';
begin
  LogEnterProc(procName);
  if Axe = axisPrimary then result := true;
  if Axe = axisSecondary then result := true;
  if Axe = axisTertiary then result := false;
  LogEndProc(procName);
end;

function TTelescope.Get_AlignmentMode: AlignmentModes;
Const
  procName='Get_AlignmentMode';
begin
  LogEnterProc(procName);
  if GerMountSetup.Monture_Allemande then
    result := algGermanPolar
  else
    result := algPolar;
  LogEndProc(procName);
end;

function TTelescope.Get_Altitude: Double;
Const
  procName='Get_Altitude';
Var
  Hauteur,Azimuth,AirMass:extended;
begin
  LogEnterProc(procName);
  CalculeAZAFromAlphaDelta(HourToRad(Get_RightAscension_Core),DegToRad(Get_Declination_Core),Lieu.Lat,Lieu.Long,Now+SpeedIntMCMT.GMT/24,Hauteur,Azimuth,AirMass);
  result:=RadToDeg(Hauteur);
  LogEndProc(procName);
end;

function TTelescope.Get_ApertureArea: Double;
Const
  procName='Get_ApertureArea';
begin
  LogEnterProc(procName);
  result:=fApertureArea;
  LogEndProc(procName);
end;

function TTelescope.Get_ApertureDiameter: Double;
Const
  procName='Get_ApertureDiameter';
begin
  LogEnterProc(procName);
  result:=fApertureDiameter;
  LogEndProc(procName);
end;

function TTelescope.Get_AtHome: WordBool;
Const
  procName='Get_AtHome';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

function TTelescope.Get_AtPark: WordBool;
Const
  procName='Get_AtPark';
begin
  LogEnterProc(procName);
  result := Get_AtPark_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_Azimuth: Double;
Const
  procName='Get_Azimuth';
Var
  Hauteur,Azimuth,AirMass:extended;
begin
  LogEnterProc(procName);
  CalculeAZAFromAlphaDelta(HourToRad(Get_RightAscension_Core),DegToRad(Get_Declination_Core),Lieu.Lat,Lieu.Long,Now+SpeedIntMCMT.GMT/24,Hauteur,Azimuth,AirMass);
  result:=RadToDeg(Azimuth);
  LogEndProc(procName);
end;

function TTelescope.Get_CanFindHome: WordBool;
Const
  procName='Get_CanFindHome';
begin
  LogEnterProc(procName);
  result := false;
  LogEndProc(procName);
end;

function TTelescope.Get_CanPark: WordBool;
Const
  procName='Get_CanPark';
begin
  LogEnterProc(procName);
  result :=Get_CanPark_Core;
    LogEnterProc('rate'+format('rate %f',[g_Rate[0,0].fMinimum]));
    Writetologfile(format('rate %f',[g_Rate[0,0].fMaximum]));
    Writetologfile(format('rate %f',[g_Rate[0,1].fMinimum]));
    Writetologfile(format('rate %f',[g_Rate[0,1].fMaximum]));
    Writetologfile(format('rate %f',[g_Rate[0,2].fMinimum]));
    Writetologfile(format('rate %f',[g_Rate[0,2].fMaximum]));
    Writetologfile(format('rate %f',[g_Rate[1,0].fMinimum]));
    Writetologfile(format('rate %f',[g_Rate[1,0].fMaximum]));
    Writetologfile(format('rate %f',[g_Rate[1,1].fMinimum]));
    Writetologfile(format('rate %f',[g_Rate[1,1].fMaximum]));
    Writetologfile(format('rate %f',[g_Rate[1,2].fMinimum]));
    Writetologfile(format('rate %f',[g_Rate[1,2].fMaximum]));
  LogEndProc(procName);
end;

function TTelescope.Get_CanPulseGuide: WordBool;
Const
  procName='Get_CanPulseGuide';
begin
  LogEnterProc(procName);
  result := true;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSetDeclinationRate: WordBool;
Const
  procName='Get_CanSetDeclinationRate';
begin
  LogEnterProc(procName);
  result := true;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSetGuideRates: WordBool;
Const
  procName='Get_CanSetGuideRates';
begin
  LogEnterProc(procName);
  result := false;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSetPark: WordBool;
Const
  procName='Get_CanSetPark';
begin
  LogEnterProc(procName);
  result :=Get_CanSetPark_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSetPierSide: WordBool;
Const
  procName='Get_CanSetPierSide';
begin
  LogEnterProc(procName);
  if GerMountSetup.Monture_Allemande then result := true else result:=false;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSetRightAscensionRate: WordBool;
Const
  procName='Get_CanSetRightAscensionRate';
begin
  LogEnterProc(procName);
  result := true;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSetTracking: WordBool;
Const
  procName='Get_CanSetTracking';
begin
  LogEnterProc(procName);
  result := true;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSlew: WordBool;
Const
  procName='Get_CanSlew';
begin
  LogEnterProc(procName);
  result := true;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSlewAltAz: WordBool;
Const
  procName='Get_CanSlewAltAz';
begin
  LogEnterProc(procName);
  result :=false;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSlewAltAzAsync: WordBool;
Const
  procName='Get_CanSlewAltAzAsync';
begin
  LogEnterProc(procName);
  result :=false;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSlewAsync: WordBool;
Const
  procName='Get_CanSlewAsync';
begin
  LogEnterProc(procName);
  result := true;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSync: WordBool;
Const
  procName='Get_CanSync';
begin
  LogEnterProc(procName);
  result := true;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSyncAltAz: WordBool;
Const
  procName='Get_CanSyncAltAz';
begin
  LogEnterProc(procName);
  result :=false;
  LogEndProc(procName);
end;

function TTelescope.Get_CanUnpark: WordBool;
Const
  procName='Get_CanUnpark';
begin
  LogEnterProc(procName);
  result := true;
  LogEndProc(procName);
end;

function TTelescope.Get_Connected: WordBool;
Const
  procName='Get_Connected';
begin
  LogEnterProc(procName);
  result :=Get_Connected_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_Declination: Double;
Const
  procName='Get_Declination';
begin
  LogEnterProc(procName);
  result:=Get_Declination_Core;
  LogEndProc(procName+' '+FloatToStr(result));
end;

function TTelescope.Get_DeclinationRate: Double;
Const
  procName='Get_DeclinationRate';
begin
  LogEnterProc(procName);
  result := fDeclinationRate;
  LogEndProc(procName);
end;

function TTelescope.Get_Description: WideString;
Const
  procName='Get_Description';
begin
  LogEnterProc(procName);
  result :='MCMT32: system based on UNO32 cards to managed microsteps motors of a telescope';
  LogEndProc(procName);
end;

function TTelescope.Get_DoesRefraction: WordBool;
Const
  procName='Get_DoesRefraction';
begin
  LogEnterProc(procName);
  result := false;
  LogEndProc(procName);
end;

function TTelescope.Get_DriverInfo: WideString;
Const
  procName='Get_DriverInfo';
begin
  LogEnterProc(procName);
  result := 'Driver ASCOM for '+Version+' copyright M.Meunier';
  LogEndProc(procName);
end;

function TTelescope.Get_DriverVersion: WideString;
Const
  procName='Get_DriverVersion';
begin
  LogEnterProc(procName);
  result := '3.0';
  LogEndProc(procName);
end;

function TTelescope.Get_EquatorialSystem: EquatorialCoordinateType;
Const
  procName='Get_EquatorialSystem';
begin
  LogEnterProc(procName);
  result := equLocalTopocentric;
  LogEndProc(procName);
end;

function TTelescope.Get_FocalLength: Double;
Const
  procName='Get_FocalLength';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

function TTelescope.Get_GuideRateDeclination: Double;
Const
  procName='Get_GuideRateDeclination';
begin
  LogEnterProc(procName);
  result:=SpeedIntMCMT.V_Corr_P_DEC/SpeedIntMCMT.Resol_DEC*360;
  LogEndProc(procName);
end;

function TTelescope.Get_GuideRateRightAscension: Double;
Const
  procName='Get_GuideRateRightAscension';
begin
  LogEnterProc(procName);
  result:=(SpeedIntMCMT.V_Corr_P_AD-SpeedIntMCMT.V_Guidage_AD)/SpeedIntMCMT.Resol_AD*360;
  LogEndProc(procName);
end;

function TTelescope.Get_InterfaceVersion: Smallint;
Const
  procName='Get_InterfaceVersion';
begin
  LogEnterProc(procName);
  result:=3;
  LogEndProc(procName);
end;

function TTelescope.Get_IsPulseGuiding: WordBool;
Const
  procName='Get_IsPulseGuiding';
begin
  LogEnterProc(procName);
  result :=Get_IsPulseGuiding_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_Name: WideString;
Const
  procName='Get_Name';
begin
  LogEnterProc(procName);
  result := Version;
  LogEndProc(procName);
end;

function TTelescope.Get_RightAscension: Double;
Const
  procName='Get_RightAscension';
begin
  LogEnterProc(procName);
  result :=Get_RightAscension_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_RightAscensionRate: Double;
Const
  procName='Get_RightAscensionRate';
begin
  LogEnterProc(procName);
  result := fRightAscensionRate;
  LogEndProc(procName+' '+FloatToStr(result));
end;

function TTelescope.Get_SideOfPier: Integer;
Const
  procName='Get_SideOfPier';
begin
  LogEnterProc(procName);
  GerMountSetupSem.Enter;
  if GerMountSetup.TelescopeZenithOuest then
    result:=pierWest
  else
    result:=pierEast;
  GerMountSetupSem.leave;
  LogEndProc(procName);
end;

function TTelescope.Get_SiderealTime: Double;
Const
  procName='Get_SiderealTime';
begin
  LogEnterProc(procName);
  result := Get_SiderealTime_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_SiteElevation: Double;
Const
  procName='Get_SiteElevation';
begin
  LogEnterProc(procName);
  result := Lieu.Alt;
  LogEndProc(procName);
end;

function TTelescope.Get_SiteLatitude: Double;
Const
  procName='Get_SiteLatitude';
begin
  LogEnterProc(procName);
  result:=RadDeg(Lieu.Lat);
  LogEndProc(procName);
end;

function TTelescope.Get_SiteLongitude: Double;
Const
  procName='Get_SiteLongitude';
begin
  LogEnterProc(procName);
  result:=-RadDeg(Lieu.Long);
  LogEndProc(procName);
end;

function TTelescope.Get_Slewing: WordBool;
Const
  procName='Get_Slewing';
begin
  LogEnterProc(procName);
  result:=Get_Slewing_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_SlewSettleTime: Integer;
Const
  procName='Get_SlewSettleTime';
begin
  LogEnterProc(procName);
  result:=0;
  LogEndProc(procName);
end;

function TTelescope.Get_TargetDeclination: Double;
Const
  procName='Get_TargetDeclination';
begin
  LogEnterProc(procName);
  if TargetDECOK then
    result:=Get_TargetDeclination_Core
  else
    raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;

function TTelescope.Get_TargetRightAscension: Double;
Const
  procName='Get_TargetRightAscension';
begin
  LogEnterProc(procName);
  if TargetRAOK then
    result:=Get_TargetRightAscension_Core
  else
    raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;

function TTelescope.Get_Tracking: WordBool;
Const
  procName='Get_Tracking';
begin
  LogEnterProc(procName);
  result :=Get_Tracking_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_TrackingRate: Integer;
Const
  procName='Get_TrackingRate';
begin
  LogEnterProc(procName);
  result:=fTrackingRate;
  LogEndProc(procName);
end;

function TTelescope.Get_TrackingRates: ITrackingRates;
Const
  procName='Get_TrackingRates';
var
  TrackingRates: TTrackingRates;
begin
  LogEnterProc(procName);
  TrackingRates := TTrackingRates.Create;
  result := TrackingRates;
  LogEndProc(procName);
end;

function TTelescope.Get_UTCDate: TDateTime;
Const
  procName='Get_UTCDate';
begin
  LogEnterProc(procName);
  result := now - OffsetFromUTC;
  LogEndProc(procName);
end;

procedure TTelescope.AbortSlew;
Const
  procName='AbortSlew';
begin
  LogEnterProc(procName);
  if fParked then
    raise EoleSysError.Create('Telescope is parked', $80040401, 0);
  AbortSlew_Core;
  LogEndProc(procName);
end;

procedure TTelescope.CommandBlind;
Const
  procName='CommandBlind';
begin
  LogEnterProc(procName);
  raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;

procedure TTelescope.CommandBool;
Const
  procName='CommandBool';
begin
  LogEnterProc(procName);
  raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;

procedure TTelescope.CommandString;
Const
  procName='CommandString';
begin
  LogEnterProc(procName);
  raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;


procedure TTelescope.FindHome;
Const
  procName='FindHome';
begin
  LogEnterProc(procName);
  raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;

procedure TTelescope.MoveAxis(Axe: TelescopeAxes; Rate: Double);
Const
  procName='MoveAxis';
var
  VMini,Vmaxi,VAbs:double;
begin
  LogEnterProc(procName);
  LogProc(procName,format('Axe=%d Rate=%6.4f',[Axe,Rate]));
  WriteToTrace(Format('MoveAxis Axe=%d Rate=%6.4f',[Axe,Rate]));
  if (Axe=AxisTertiary) then raise EoleSysError.Create('not implemented', $80040401, 0);
  if fParked then
    raise EoleSysError.Create('Telescope is parked', $80040401, 0);
  if Freespeed then
  begin
    Vmini:=0;
    VMaxi:=g_Rate[Axe,0].fMaximum;
  end
  else
  begin
    VMini:=g_Rate[Axe,0].fMinimum;
    VMini:=g_Rate[Axe,1].fMinimum;
    VMini:=g_Rate[Axe,2].fMinimum;
    VMaxi:=g_Rate[Axe,0].fMaximum;
    VMaxi:=g_Rate[Axe,1].fMaximum;
    VMaxi:=g_Rate[Axe,2].fMaximum;
  end;
  VAbs:=Abs(Rate);
//  if ((VAbs>0) and (VAbs<Vmini)) or (VAbs>VMaxi) then raise EoleSysError.Create('not implemented', $80040401, 0);

  MoveAxis_Core(Axe,Rate);
  LogEndProc(procName);
end;

procedure TTelescope.Park;
Const
  procName='Park';
begin
  LogEnterProc(procName);
  Park_Core;
  LogEndProc(procName);
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


function MoveTelescopeSub(Direction: TDirection; Speed: TSpeed;HandleGerMount:Boolean): Boolean;

var
  astring: shortstring ;
  LSpeeds: Tspeeds     ;
  OutC   : Integer     ;

Const
  procName='MoveTelescope';


begin
  LogEnterProc_DLL(ProcName);
  result := ERROR;


  If (InterlockedCompareExchange(Stopping,1,1)=1) then   // Do not enter because stopping is pending
  begin
   result := NOERROR;
   Logproc(procName,'Exits because a stopping is still pending');
   LogEndProc_DLL(ProcName);
   Exit;
  end;

  SpeedsSection.Enter;
  LSpeeds:=Speeds;
  SpeedsSection.Leave;

  Logproc(procName,'Move_Telescope start');

  //  Monture allemande ***********************************************
  //  Do not handle for mount correction
  If GerMountSetup.Monture_Allemande and TelescopeOuest and HandleGerMount then
  begin
      case Direction of
        DNord  : Direction:=DSud  ;
        DSud   : Direction:=DNord ;
      end;
  end;
  // ***************************

  Try

      case Direction of
        DNord: begin
                // On a demandé d'aller vers le Nord : Delta augmente
            case Speed of
              SMax: begin //Fournir la vitesse VMax :
                  while IsAxisSlewing_BackLash(C_Delta) do WaitMainthread(procName);

                  astring := 'X' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
                  sendcommand(astring, 0, 1);
                  LSpeeds.SpeedDelta := SMax;
                end;
              SMedium: begin //Fournir la vitesse VMed :
                  while IsAxisSlewing_BackLash(C_Delta) do WaitMainthread(procName);

                  astring := 'G' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
                  sendcommand(astring, 0, 1);
                  LSpeeds.SpeedDelta := SMedium;
                end;
              SSideral: begin // Fournir la vitesse VMin :
                  while IsAxisSlewing_BackLash(C_Delta) do WaitMainthread(procName);

                  astring := 'D' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
                  sendcommand(astring, 0, 1);
                  LSpeeds.SpeedDelta := SSideral;
                end;
            end;
          end;

        DSud: begin
                // On a demandé d'aller vers le Sud : Delta diminue
            case Speed of
              SMax: begin //Fournir la vitesse VMax :
                  while IsAxisSlewing_BackLash(C_Delta) do WaitMainthread(procName);

                  astring := 'W' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
                  sendcommand(astring, 0, 1);
                  LSpeeds.SpeedDelta := SMax;
                end;
              SMedium: begin //Fournir la vitesse VMed :
                  while IsAxisSlewing_BackLash(C_Delta) do WaitMainthread(procName);

                  astring := 'F' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
                  sendcommand(astring, 0, 1);
                  LSpeeds.SpeedDelta := SMedium;
                end;
              SSideral: begin // Fournir la vitesse VMin :
                  while IsAxisSlewing_BackLash(C_Delta) do WaitMainthread(procName);

                  astring := 'Q' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
                  sendcommand(astring, 0, 1);
                  LSpeeds.SpeedDelta := SSideral;
                end;
            end;
          end;

        DEst: begin
                // On a demandé d'aller vers l'Est : Alpha augmente
            case Speed of
              SMax: begin //Fournir la vitesse VMax :
                  while IsAxisSlewing_BackLash(C_Alpha) do WaitMainthread(procName);         // Attend la fin de rampe

                  astring := 'W' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
                  sendcommand(astring, 0, 0);
                  LSpeeds.SpeedAlpha := SMax;
                end;
              SMedium: begin //Fournir la vitesse VMed :
                  while IsAxisSlewing_BackLash(C_Alpha) do WaitMainthread(procName);

                  astring := 'F' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
                  sendcommand(astring, 0, 0);
                  LSpeeds.SpeedAlpha := SMedium;
                end;
              SSideral: begin // Fournir la vitesse VMin :
                  while IsAxisSlewing_BackLash(C_Alpha) do WaitMainthread(procName);

                  astring := 'Q' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
                  sendcommand(astring, 0, 0);
                  LSpeeds.SpeedAlpha := SSideral;
                end;
            end;
          end;

        DOuest: begin
                 // On a demandé d'aller vers l'Ouest : Alpha diminue
            case Speed of
              SMax: begin //Fournir la vitesse VMax :
                  while IsAxisSlewing_BackLash(C_Alpha) do WaitMainthread(procName);

                  astring := 'X' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
                  sendcommand(astring, 0, 0);
                  LSpeeds.SpeedAlpha := SMax;
                end;
              SMedium: begin //Fournir la vitesse VMed :
                  while IsAxisSlewing_BackLash(C_Alpha) do WaitMainthread(procName);

                  astring := 'G' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
                  sendcommand(astring, 0, 0);
                  LSpeeds.SpeedAlpha := SMedium;
                end;
              SSideral: begin // Fournir la vitesse VMin :
                  while IsAxisSlewing_BackLash(C_Alpha) do WaitMainthread(procName);

                  astring := 'D' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
                  sendcommand(astring, 0, 0);
                  LSpeeds.SpeedAlpha := SSideral;
                end;
            end;
          end;
      end;


  Finally
  End;

  result := NOERROR;

  Logproc(procName,'Move_Telescope end');

  SpeedsSection.Enter;
  Speeds:=LSpeeds;
  SpeedsSection.Leave;

  LogEndProc_DLL(ProcName);
end;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function PulseGuideAscom(RaInd, DecInd, MsRa, MsDec: Word): Boolean; stdcall;
//   RaInd=0 = ALpha+
//   RaInd=1 = ALpha-
Const
 NoFliphandlingDueToGermanMount=False;
var
  astring: shortstring ;
  b:byte;
  l:longint;
begin
  Try
  Result := False;
  if PulseGuideFirmware then
  begin
    If (MsRa>0) then
    begin
      l:=MsRa;
      astring:='Y';
      b:=(l shr 24) and $FF;
      If (RaInd=0) then
      begin
        b:=(b or $80);
        LEDE.Green;
      end
      else LEDO.Green;
      astring:=astring+AnsiChar(b);
      b:=(l shr 16) and $FF;
      astring:=astring+AnsiChar(b);
      b:=(l shr 8) and $FF;
      astring:=astring+AnsiChar(b);
      b:=l and $FF;
      astring:=astring+AnsiChar(b);
      sendcommand(astring, 0,C_Alpha);
      TimerAlphaPulse.StopOrderAlpha:=true;
      TimerAlphaPulse.StopOrderDecli:=false;
      TimerAlphaPulse.Interval := MsRa;
      TimerAlphaPulse.Enabled  := True;
      TimerAlphaPulse.IsPulse  := True;
    end;
    If (MsDec>0) then
    begin
      l:=MsDec;
      astring:='Y';
      b:=(l shr 24) and $FF;
      If not(DecInd=0) then
      begin
        b:=(b or $80);
        LEDS.Green;
      end
      else LEDN.Green;
      astring:=astring+AnsiChar(b);
      b:=(l shr 16) and $FF;
      astring:=astring+AnsiChar(b);
      b:=(l shr 8) and $FF;
      astring:=astring+AnsiChar(b);
      b:=l and $FF;
      astring:=astring+AnsiChar(b);
      sendcommand(astring, 0,C_Delta);
      TimerDecliPulse.Interval := MsDec;
      TimerDecliPulse.StopOrderAlpha:=false;
      TimerDecliPulse.Interval := MsDec;
      TimerDecliPulse.Enabled  := True;
      TimerDecliPulse.IsPulse  := True;
    end;
  end
  else
  begin
    If (MsRa>0) then
    begin
      If (RaInd=0) then LEDE.Green
      else LEDO.Green;
      If (RaInd=0) then MoveTelescopeSub(DEst  , SSideral, NoFliphandlingDueToGermanMount)
                 else MoveTelescopeSub(DOuest, SSideral, NoFliphandlingDueToGermanMount);

      TimerAlphaPulse.Interval := MsRa;
      TimerAlphaPulse.StopOrderAlpha:=true;
      TimerAlphaPulse.StopOrderDecli:=false;
      TimerAlphaPulse.Enabled  := True;
      TimerAlphaPulse.IsPulse  := True;
    end;

    if (MsDec>0) then
    begin
      If (DecInd=0) then LEDN.Green
      else LEDS.Green;
      If (DecInd=0) then MoveTelescopeSub(DNord, SSideral, NoFliphandlingDueToGermanMount)
                  else MoveTelescopeSub(DSud , SSideral, NoFliphandlingDueToGermanMount);

      TimerDecliPulse.Interval := MsDec;
      TimerDecliPulse.StopOrderAlpha:=false;
      TimerDecliPulse.StopOrderDecli:=true;
      TimerDecliPulse.Enabled  := True;
      TimerDecliPulse.IsPulse  := True;
    end;
  end;

  Result := True;
  Except
  End;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


procedure TTelescope.PulseGuide(Direction: GuideDirections; Duration: Integer);
Const
  procName='PulseGuide';
begin
  LogEnterProc(procName);
  if fParked then
    raise EoleSysError.Create('Telescope is parked', $80040401, 0)
  else
  begin
    case Direction of
      guideNorth: PulseGuideAscom(0, 0, 0, Duration);
      guideSouth: PulseGuideAscom(0, 1, 0, Duration);
      guideEast: PulseGuideAscom(0, 0, Duration, 0);
      guideWest: PulseGuideAscom(1, 0, Duration, 0);
    end;
  end;
  LogEndProc(procName);
end;

procedure TTelescope.Set_Connected(Value: WordBool);
Const
  procName='Set_Connected';
begin
  LogEnterProc(procName);
  Set_Connected_Core(Value);
  LogEndProc(procName);
end;

procedure TTelescope.Set_DeclinationRate(Value: Double);
Var
  V_rad_par_s:double;
Const
  procName='Set_DeclinationRate';
begin
  LogEnterProc(procName+FloatToStr(Value));
  V_rad_par_s:=DegToRad(Value/3600);
  SetFreeSpeed(V_rad_par_s,C_Delta);
  LogEndProc(procName);
end;

procedure TTelescope.Set_DoesRefraction(Value: WordBool);
Const
  procName='Set_DoesRefraction';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.Set_GuideRateDeclination(Value: Double);
Const
  procName='Set_GuideRateDeclination';
begin
  LogEnterProc(procName);
  raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;

procedure TTelescope.Set_GuideRateRightAscension(Value: Double);
Const
  procName='Set_GuideRateRightAscension';
begin
  LogEnterProc(procName);
  raise EoleSysError.Create('not implemented', $80040400, 0);
  LogEndProc(procName);
end;

procedure TTelescope.Set_RightAscensionRate(Value: Double);
Var
  V_s_par_sids,V_s_par_s,V_rad_par_s:double;
Const
  procName='Set_RightAscensionRate';
begin
  LogEnterProc(procName+FloatToStr(Value));
  V_s_par_sids:=15-Value;
  V_s_par_s:=V_s_par_s/0.9972695677;
  V_rad_par_s:=DegToRad(V_s_par_s/3600);
  SetFreeSpeed(V_rad_par_s,C_Alpha);
  LogEndProc(procName);
end;

procedure TTelescope.Set_SideOfPier(Value: Integer);
Const
  procName='Set_SideOfPier';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.Set_SiteElevation(Value: Double);
Const
  procName='Set_SiteElevation';
begin
  LogEnterProc(procName+FloatToStr(Value));
  if ((Value<-300) or (Value>10000)) then raise EoleSysError.Create('not implemented', $80040401, 0);
  Lieu.Alt:=Value;
  LogEndProc(procName);
end;

procedure TTelescope.Set_SiteLatitude(Value: Double);
Const
  procName='Set_SiteLatitude';
begin
  LogEnterProc(procName+FloatToStr(Value));
  if ((Value<-90) or (Value>90)) then raise EoleSysError.Create('not implemented', $80040401, 0);
  Lieu.Lat:=DegRad(Value);
  LogEndProc(procName);
end;

procedure TTelescope.Set_SiteLongitude(Value: Double);
Const
  procName='Set_SiteLongitude';
begin
  LogEnterProc(procName+FloatToStr(Value));
  if ((Value<-180) or (Value>180)) then raise EoleSysError.Create('not implemented', $80040401, 0);
  Lieu.Long:=-DegRad(Value);
  LogEndProc(procName);
end;

procedure TTelescope.Set_SlewSettleTime(Value: Integer);
Const
  procName='Set_SlewSettleTime';
begin
  LogEnterProc(procName);
  if Value<0 then raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;

procedure TTelescope.Set_TargetDeclination(Value: Double);
Const
  procName='Set_TargetDeclination';
begin
  LogEnterProc(procName);
  TargetDECOK:=true;
  Set_TargetDeclination_Core(Value);
  LogEndProc(procName+' '+FloatToStr(Value));
end;

procedure TTelescope.Set_TargetRightAscension(Value: Double);
Const
  procName='Set_TargetRightAscension';
begin
  LogEnterProc(procName);
  TargetRAOK:=true;
  Set_TargetRightAscension_Core(Value);
  LogEndProc(procName+' '+FloatToStr(Value));
end;

procedure TTelescope.Set_Tracking(Value: WordBool);
Const
  procName='Set_Tracking';
var
  astring   : shortstring;
begin
  LogEnterProc(procName);
  if (Value=true) and (ftracking=false) then
  begin
    Try
      astring := 'N' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0); // Commande No Park
      sendcommand(astring, 0, 0);
    finally
    end;
    ftracking:=true;
  end;
  if (Value=false) and (ftracking=true) then
  begin
    astring := 'P' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0); // Commande Park pour AD
    sendcommand(astring, 0, 0);
    astring := 'R' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0); // Commande vitesse = 0 en DEC;
    sendcommand(astring, 0, 1);
    ftracking:=false;
  end;
  //ftracking
  LogEndProc(procName);
end;

procedure TTelescope.Set_TrackingRate(Value: Integer);
Const
  procName='Set_TrackingRate';
begin
  LogEnterProc(procName);
  if (Value<0) or (Value>3) then raise EMathError.Create('InvalidValueException');
  fTrackingRate:=Value;
  LogEndProc(procName);
end;

procedure TTelescope.Set_UTCDate(Value: TDateTime);
Const
  procName='Set_UTCDate';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.SetPark;
Const
  procName='SetPark';
begin
  LogEnterProc(procName);
  SetPark_Core;
  LogEndProc(procName);
end;

procedure TTelescope.SetupDialog;
Const
  procName='SetupDialog';
begin
  LogEnterProc(procName);
  SetupDialog_Core;
  LogEndProc(procName);
end;

procedure TTelescope.SlewToAltAz;
Const
  procName='SlewToAltAz';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.SlewToAltAzAsync;
Const
  procName='SlewToAltAzAsync';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.SlewToCoordinates(RightAscension, Declination: Double);
Const
  procName='SlewToCoordinates';
begin
  LogEnterProc(procName);
  SlewToCoordinates_Core(RightAscension, Declination);
  LogEndProc(procName);
end;

procedure TTelescope.SlewToCoordinatesAsync(RightAscension, Declination: Double);
Const
  procName='SlewToCoordinatesAsync';
var
  Alpha, Delta: double;
begin
  LogEnterProc(procName);
  SlewToCoordinatesAsync_Core(RightAscension, Declination);
  LogEndProc(procName);
end;

procedure TTelescope.SlewToTarget;
Const
  procName='SlewToTarget';
begin
  LogEnterProc(procName);
  SlewToTarget_Core;
  LogEndProc(procName);
end;

procedure TTelescope.SlewToTargetAsync;
Const
  procName='SlewToTargetAsync';
begin
  LogEnterProc(procName);
  SlewToTargetAsync_Core;
  LogEndProc(procName);
end;

procedure TTelescope.SyncToAltAz;
Const
  procName='SyncToAltAz';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.SyncToCoordinates(RightAscension, Declination: Double);
Const
  procName='SyncToCoordinates';
begin
  LogEnterProc(procName);
  SyncToCoordinates_Core(RightAscension, Declination);
  LogEndProc(procName);
end;

procedure TTelescope.SyncToTarget;
Const
  procName='SyncToTarget';
begin
  LogEnterProc(procName);
  SyncToTarget_Core;
  LogEndProc(procName);
end;

procedure TTelescope.Unpark;
Const
  procName='Unpark';
begin
  LogEnterProc(procName);
  Unpark_Core;
  LogEndProc(procName);
end;

function TTelescope.Method: HResult;
begin
  result:=S_FALSE;
end;

function TTelescope.Get_SupportedActions: OleVariant;
begin
  Result:=g_ActionsList;
end;

function TTelescope.Get_PECCodeur: Integer;
begin
  result:=fCodeurPec;
end;

function TTelescope.Get_RawPositionAlpha_arcsecCodeurs: Double;
var
  Temp: double;
Const
  procName='Get_RawPositionAlpha_arcsecCodeurs';
begin
  LogEnterProc(procName);
  PECSection.Enter;
  Try
    if (fCodeurPEC < fCodeurPEC_Old) then
      temp := fCodeurPEC + SpeedIntMCMT.MPasParTour_AD - fCodeurPEC_Old
    else
      temp := fCodeurPEC - fCodeurPEC_Old;
    LogProc('RawPositionAlpha_arcsecCodeurs fcodeur',IntToStr(fCodeurPEC));
    temp                   := 3600 * (360 / SpeedIntMCMT.Reduc_AD) * frac(temp / SpeedIntMCMT.MPasParTour_AD);
    LogProc('RawPositionAlpha_arcsecCodeurs temp',FloatToStr(temp));
    fCodeur_Arcsec := fCodeur_Arcsec + temp;
    Result                 := fCodeur_Arcsec;
    LogProc('RawPositionAlpha_arcsecCodeurs result',FloatToStr(Result));
    fCodeurPEC_Old           := fCodeurPEC;
  Finally
    PECSection.Leave;
  End;
  LogEndProc(procName);
end;

function TTelescope.Get_RawPositionAlphaInit_arcsecCodeurs: Double;
begin
  PECSection.Enter;
  Try
    fCodeurPEC_Old           := fCodeurPEC;
    fCodeur_Arcsec := 3600 * (360 / SpeedIntMCMT.Reduc_AD) * frac(fCodeurPEC / SpeedIntMCMT.MPasParTour_AD);
    result                     := 0;
  Finally
    PECSection.Leave;
  End;
end;

function TTelescope.Get_RawPositionDelta_arcsecCodeurs: Double;
begin
  result := 0;
end;

function TTelescope.Get_RawPositionDeltaInit_arcsecCodeurs: Double;
begin
  result := 0;
end;

function TTelescope.Get_DestinationSideOfPier(RightAscension, Declination: Double): PierSide;
Begin
 Result:=Get_DestinationSideOfPier_Core(RightAscension, Declination);
end;

initialization
  TAutoObjectFactory.Create(ComServer, TTelescope, Class_Telescope,
    ciMultiInstance, tmApartment);
end.
