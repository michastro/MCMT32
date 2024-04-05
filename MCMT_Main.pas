unit MCMT_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, MCMT32_ASCOM_TLB,Vcl.Buttons,Core,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Samples.Spin,UnitCalcul,RADECtranfos,LEDUnit;


type
t=class(tobject);
  TForm2 = class(TForm)
    Button1: TButton;
    MemoTrace: TMemo;
    PanelRaquette: TPanel;
    TrackBarSpeed: TTrackBar;
    ButtonEast: TBitBtn;
    ButtonNorth: TBitBtn;
    ButtonSouth: TBitBtn;
    ButtonWest: TBitBtn;
    Label1: TLabel;
    PanelParkUnpark: TPanel;
    LabelPark: TLabel;
    RadioButtonParkPositionPresente: TRadioButton;
    RadioButtonParkPositionManuelle: TRadioButton;
    SpinEditParkAHh: TSpinEdit;
    SpinEditParkAHm: TSpinEdit;
    SpinEditParkDECd: TSpinEdit;
    SpinEditParkDECm: TSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ButtonParkUnpark: TButton;
    LabelRA: TLabel;
    TimerCoord: TTimer;
    LabelDEC: TLabel;
    LabelAzimuth: TLabel;
    LabelHauteur: TLabel;
    LabelRA2000: TLabel;
    LabelDEC2000: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Ecran: TImage;
    CheckBoxScroll: TCheckBox;
    ButtonExtensionDroite: TButton;
    ButtonExtensionBasse: TButton;
    LabelFactVitesse: TLabel;
    LabelCodeur: TLabel;
    LabelCodeur_Arcsec: TLabel;
    RadioGroup1: TRadioGroup;
    RadioButtonSideral: TRadioButton;
    RadioButtonLunaire: TRadioButton;
    RadioButtonSolaire: TRadioButton;
    Label10: TLabel;
    BitBtnStop: TBitBtn;
    BitBtnSideral: TBitBtn;
    BitBtnMarche: TBitBtn;
    BitBtnArret: TBitBtn;
    LabelSideral: TLabel;
    procedure ButtonEastMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonEastMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonSouthMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonSouthMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure ButtonWestMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonWestMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonNorthMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonNorthMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButtonParkPositionClick(Sender: TObject);
    procedure ButtonParkUnparkClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBoxTraceClick(Sender: TObject);
    procedure TimerCoordTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonExtensionDroiteClick(Sender: TObject);
    procedure ButtonExtensionBasseClick(Sender: TObject);
    procedure RadioButtonLunaireMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButtonSideralMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButtonSolaireMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtnStopClick(Sender: TObject);
    procedure BitBtnSideralClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;
  XEcran,YEcran:integer;
  InitparamConstant_RADECtranfos:TInitparamConstant_RADECtranfos;
  InitparamVariables_RADECtranfos:TInitparamVariables_RADECtranfos;
  RADECtranfos:TRADECtranfos;

Const
  FRENCH    = (SUBLANG_FRENCH     shl 10) or LANG_FRENCH ;
  ENGLISH   = (SUBLANG_ENGLISH_US shl 10) or LANG_ENGLISH;

function LoadNewResourceModule(Locale: LCID): Longint;


implementation
uses Telescope_Unit,VarGlobal,Utils,System.Win.Registry,Comm;

resourcestring
  StrSalut = 'Salut';
{$R *.dfm}
type
  TAsInheritedReader = class(TReader)
  public
    procedure ReadPrefix(var Flags: TFilerFlags; var AChildPos: Integer); override;
  end;

////////////////////////////////////////////////////////////////////////////////////////

procedure TAsInheritedReader.ReadPrefix(var Flags: TFilerFlags; var AChildPos: Integer);
begin
  inherited ReadPrefix(Flags, AChildPos);
  Include(Flags, ffInherited);
end;

////////////////////////////////////////////////////////////////////////////////////////

function SetResourceHInstance(NewInstance:Longint):Longint;
var
  CurModule: PLibModule;

begin
  CurModule := LibModuleList; // Var globale
  Result    := 0;

  while (CurModule<>nil) do
  begin
    if (CurModule.Instance=HInstance) then
    begin
      if (CurModule.ResInstance<>CurModule.Instance) then
        FreeLibrary(CurModule.ResInstance);

      CurModule.ResInstance := NewInstance;
      Result                := NewInstance;

      Exit;
    end;
    CurModule := CurModule.Next;
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////

function LoadNewResourceModule(Locale: LCID): Longint;
var
  FileName  : array [0..260] of char;
  P         : PChar;
  LocaleName: array[0..4] of Char;
  NewInst   : Longint;

begin
  GetModuleFileName(HInstance, FileName, SizeOf(FileName));
  GetLocaleInfo(Locale, LOCALE_SABBREVLANGNAME, LocaleName, SizeOf(LocaleName));
  P := PChar(@FileName) + lstrlen(FileName);

  while (P^ <> '.') and (P <> @FileName) do Dec(P);
  NewInst := 0;
  Result  := 0;

  if (P<>@FileName) then
  begin
    Inc(P);
    if (LocaleName[0]<>#0) then
    begin
      // Then look for a potential language/country translation
      lstrcpy(P, LocaleName);
      NewInst := LoadLibraryEx(FileName, 0, LOAD_LIBRARY_AS_DATAFILE);  // Load ENU file
      if (NewInst=0) then
      begin
        // Finally look for a language only translation
        LocaleName[2] := #0;
        lstrcpy(P, LocaleName);
        NewInst := LoadLibraryEx(FileName, 0, LOAD_LIBRARY_AS_DATAFILE);
      end;
    end;
  end;

  if (NewInst<>0) then
    Result := SetResourceHInstance(NewInst) ; // Remplace toute les ressources par les nouvelles (strings ect).
end;


////////////////////////////////////////////////////////////////////////////////////////

function InternalReloadComponentRes(const ResName: string; HInst: THandle; var Instance: TComponent): Boolean;
var
  HRsrc            : THandle;
  ResStream        : TResourceStream;
  AsInheritedReader: TAsInheritedReader;

begin                   { avoid possible EResNotFound exception }

  if HInst = 0 then HInst := HInstance;
  HRsrc  := FindResource(HInst, PChar(ResName), RT_RCDATA);
  Result := HRsrc <> 0;
  if not Result then Exit;

  ResStream := TResourceStream.Create(HInst, ResName, RT_RCDATA);
  try
    AsInheritedReader := TAsInheritedReader.Create(ResStream, 4096);
    try
      Instance := AsInheritedReader.ReadRootComponent(Instance);
    finally
      AsInheritedReader.Free;
    end;
  finally
    ResStream.Free;
  end;

  Result := True;
end;

////////////////////////////////////////////////////////////////////////////////////////

function ReloadInheritedComponent(Instance: TComponent; RootAncestor: TClass): Boolean;

  function InitComponent(ClassType: TClass): Boolean;
  begin
    Result := False;
    if (ClassType = TComponent) or (ClassType = RootAncestor) then Exit;

    Result := InitComponent(ClassType.ClassParent);
    Result := InternalReloadComponentRes(ClassType.ClassName, FindResourceHInstance(
                                         FindClassHInstance(ClassType)), Instance) or Result;
  end;

begin
  Result := InitComponent(Instance.ClassType);
end;

////////////////////////////////////////////////////////////////////////////////////////

procedure ReinitializeForms;
var
  Count: Integer;
  I    : Integer;
  Form : TForm  ;

begin
  Count := Screen.FormCount;
  for I := 0 to Count - 1 do
  begin
    Form := Screen.Forms[I];
    ReloadInheritedComponent(Form, TForm);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////

procedure TForm2.BitBtnSideralClick(Sender: TObject);
var
  Bitmap: TBitmap;
  astring   : shortstring;
begin
 if fTracking then
 begin
   STOP_ALL_Telescope;
   fTracking:=false;
   BitBtnSideral.Glyph:=BitBtnArret.Glyph;
   LabelSideral.Color:=clRed;
 end
 else
 begin
   BitBtnSideral.Glyph:=BitBtnMarche.Glyph;
   LabelSideral.Color:=clGreen;
       Try
      astring := 'N' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0); // Commande No Park
      sendcommand(astring, 0, 0);
    finally
    end;
    fTracking:=true;
 end;
end;

procedure TForm2.BitBtnStopClick(Sender: TObject);
begin
  StopSlewing(0);
  StopSlewing(1);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  if langage_french then
  begin
    Langage_French:=false;
    LoadNewResourceModule(ENGLISH);
    ReinitializeForms;
    Button1.Caption:='Français'
  end
  else
  begin
    Langage_French:=true;
//    LoadNewResourceModule(FRENCH);
    ReinitializeForms;
    Button1.Caption:='English'
  end;
end;

/////////////////////////////////////////////////////////////////////////

procedure CalculeGraphique(H,A:double;var x,y:integer);
begin
  x:=100-round((90-RadToDeg(H))*sin(A));
  y:=100-round((90-RadToDeg(H))*cos(A));
end;

///////////////////////////////////////////////////////////////////////////

procedure TForm2.Button2Click(Sender: TObject);
begin
  fTrackingRate:=1;
end;

procedure TForm2.ButtonEastMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Speed:double;
begin
  case TrackBarSpeed.Position of
    0: Speed:=Pas2DegAD(SpeedIntMCMT.V_Corr_P_AD);
    1: Speed:=Pas2DegAD(SpeedIntMCMT.V_Point_L_AD);
    2: Speed:=Pas2DegAD(SpeedIntMCMT.V_Point_R_AD);
  end;
  MoveAxis_Core(axisPrimary,Speed);
end;

procedure TForm2.ButtonEastMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  MoveAxis_Core(axisPrimary,0);
  ButtonExtensionDroite.SetFocus;
end;

procedure TForm2.ButtonExtensionBasseClick(Sender: TObject);
begin
  if ExtensionBasseRaquette then
  begin
    Form2.Height:=456;
    ButtonExtensionBasse.Caption:='▼';
    ButtonExtensionDroite.Enabled:=true;
  end
  else
  begin
    Form2.Height:=715;
    ButtonExtensionBasse.Caption:='▲';
    ButtonExtensionDroite.Enabled:=false;
  end;
  ExtensionBasseRaquette:=not(ExtensionBasseRaquette);

end;

procedure TForm2.ButtonExtensionDroiteClick(Sender: TObject);
begin
  if ExtensionDroiteRaquette then
  begin
    Form2.Width:=246;
    ButtonExtensionDroite.Caption:='►';
    ButtonExtensionBasse.Enabled:=false;
  end
  else
  begin
    Form2.Width:=558;
    ButtonExtensionDroite.Caption:='◄';
    ButtonExtensionBasse.Enabled:=true;
  end;
  ExtensionDroiteRaquette:=not(ExtensionDroiteRaquette);
end;

procedure TForm2.ButtonNorthMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Speed:double;
begin
  case TrackBarSpeed.Position of
    0: Speed:=Pas2DegDEC(SpeedIntMCMT.V_Corr_P_DEC);
    1: Speed:=Pas2DegDEC(SpeedIntMCMT.V_Point_L_DEC);
    2: Speed:=Pas2DegDEC(SpeedIntMCMT.V_Point_R_DEC);
  end;
  MoveAxis_Core(axisSecondary,Speed);
end;

procedure TForm2.ButtonNorthMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  MoveAxis_Core(axisSecondary,0);
  ButtonExtensionDroite.SetFocus;
end;

procedure TForm2.ButtonParkUnparkClick(Sender: TObject);
var
  Alpha: double;
begin
  if fparked then
  begin
    ButtonParkUnpark.Caption:='Park';
    Unpark_Core;
  end
  else
  begin
    ButtonParkUnpark.Caption:='Unpark';
    if RadioButtonParkPositionPresente.Checked then
    begin
      Alpha := Get_RightAscension_Core;
      fParkAH :=Get_SiderealTime_Core- Alpha;
      fParkDelta := Get_Declination_Core;
      Park_Core;
    end
    else
    begin
      fParkAH:=Abs(SpinEditParkAHh.Value)+SpinEditParkAHm.Value/60;
      if SpinEditParkAHh.Value<0 then fParkAH:=-fParkAH;
      fParkDelta:=Abs(SpinEditParkDECd.Value)+SpinEditParkDECm.Value/60;
      if SpinEditParkDECd.Value<0 then fParkDelta:=-fParkDelta;
      Park_Core;
    end;
  end;
end;

procedure TForm2.ButtonSouthMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Speed:double;
begin
  case TrackBarSpeed.Position of
    0: Speed:=Pas2DegDEC(SpeedIntMCMT.V_Corr_P_DEC);
    1: Speed:=Pas2DegDEC(SpeedIntMCMT.V_Point_L_DEC);
    2: Speed:=Pas2DegDEC(SpeedIntMCMT.V_Point_R_DEC);
  end;
  MoveAxis_Core(axisSecondary,-Speed);
end;

procedure TForm2.ButtonSouthMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  MoveAxis_Core(axisSecondary,0);
  ButtonExtensionDroite.SetFocus;
end;

procedure TForm2.ButtonWestMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Speed:double;
begin
  case TrackBarSpeed.Position of
    0: Speed:=Pas2DegAD(SpeedIntMCMT.V_Corr_P_AD);
    1: Speed:=Pas2DegAD(SpeedIntMCMT.V_Point_L_AD);
    2: Speed:=Pas2DegAD(SpeedIntMCMT.V_Point_R_AD);
  end;
  MoveAxis_Core(axisPrimary,-Speed);
end;

procedure TForm2.ButtonWestMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  MoveAxis_Core(axisPrimary,0);
  ButtonExtensionDroite.SetFocus;
end;

procedure TForm2.CheckBoxTraceClick(Sender: TObject);
begin
  TraceEnabled:=not(TraceEnabled);
  if TraceEnabled then
  begin
    Form2.Width:=553;
    Form2.Height:=724;
  end
  else
  begin
    Form2.Width:=264;
    Form2.Height:=493;
  end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RADECtranfos.Destroy;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  Reg: TRegistry;
begin
  Form2.Caption:='MCMT32 V'+ReturnVersionDLL_str(3);
  try
    Reg:=TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    if not (Reg.OpenKey('SOFTWARE\MCMT32\', False)) then
      Reg.OpenKey('SOFTWARE\MCMT32\', True);
    TraceEnabled:=False;
    if Reg.ValueExists('TraceEnabled') then
      TraceEnabled:= Reg.ReadBool('TraceEnabled');
    ChoixPark:=False;
    if Reg.ValueExists('ChoixPark') then
      ChoixPark:= Reg.ReadBool('ChoixPark');
    Reg.CloseKey;
  Finally
    Reg.Free;
  end;
  if TraceEnabled then
  begin
    Width:=553;
    Height:=724;
  end
  else
  begin
    Width:=553;
    Height:=493;
  end;
  if ChoixPark then RadioButtonParkPositionManuelle.checked:=true
  else RadioButtonParkPositionPresente.checked:=true;

  SpinEditParkAHm.Enabled:=ChoixPark;
  SpinEditParkDECd.Enabled:=ChoixPark;
  SpinEditParkDECm.Enabled:=ChoixPark;
  Label2.Enabled:=ChoixPark;
  Label3.Enabled:=ChoixPark;
  Label4.Enabled:=ChoixPark;
  Label5.Enabled:=ChoixPark;
  Label6.Enabled:=ChoixPark;
  Label7.Enabled:=ChoixPark;
  LEDN:=TLED.CreateLED(98,4);
  LEDS:=TLED.CreateLED(98,172);
  LEDE:=TLED.CreateLED(10,80);
  LEDO:=TLED.CreateLED(188,80);
//  LEDSlewing:=TLED.CreateLED(280,230);
  Ecran.Width:=200;
  Ecran.Height:=200;
  With Ecran.Canvas do
  begin
//    SetSize(200,200);
    Brush.Color:=clBlue;
    Rectangle(0,0,200,200);
    Pen.Color:=clBlack;
    Brush.Color:=clBlack;
    Ellipse(10,10,190,190);
    Pen.Color:=clWhite;
    MoveTo(95,100);
    LineTo(105,100);
    MoveTo(100,95);
    LineTo(100,105);
    MoveTo(10,100);
    LineTo(20,100);
    MoveTo(190,100);
    LineTo(180,100);
    MoveTo(100,10);
    LineTo(100,20);
    MoveTo(100,180);
    LineTo(100,190);
    Font.Color:=clWhite;
    Font.Size:=10;
    TextOut(23,92,'E');
    TextOut(167,92,'O');
    TextOut(97,25,'N');
    TextOut(97,160,'S');
    TextOut(97,105,'Z');
  end;
  InitparamConstant_RADECtranfos.geodetic_Latitude:=Lieu.Lat;
  InitparamConstant_RADECtranfos.geodetic_Longitude:=Lieu.Long;
  InitparamConstant_RADECtranfos.Elevation_meter:=Lieu.Alt;
  InitparamVariables_RADECtranfos.Temperature_celcius:=15;
  InitparamVariables_RADECtranfos.Pression_mb:=1013.25;
  InitparamVariables_RADECtranfos.Relative_Humidity0_1:=0.5;
  InitparamVariables_RADECtranfos.Wavelength_microns:=0.55;
  RADECtranfos:=TRADECtranfos.create(InitparamConstant_RADECtranfos,InitparamVariables_RADECtranfos);
  RADECtranfos.Precession_Active:=true;
  RADECtranfos.Nutation_Active:=true;
  RADECtranfos.Refraction_Active:=false;
  RADECtranfos.Diurnal_Active:=true;
  TimerCoord.Enabled:=false;
  ExtensionDroiteRaquette:=False;
  Form2.Width:=246;
  ButtonExtensionDroite.Caption:='►';
  ExtensionBasseRaquette:=False;
  Form2.Height:=456;
  ButtonExtensionBasse.Caption:='▼';
  ExtensionBasseRaquette:=False;
  Form2.Left:=10;
end;

procedure TForm2.RadioButtonLunaireMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  fTrackingDemande:=1;
end;

procedure TForm2.RadioButtonParkPositionClick(Sender: TObject);
var
  Reg: TRegistry;
begin
  if RadioButtonParkPositionPresente.checked then
  begin
    ChoixPark:=False;
    try
      Reg:=TRegistry.Create;
      Reg.RootKey := HKEY_CURRENT_USER;
      if not (Reg.OpenKey('SOFTWARE\MCMT32\', False)) then
        Reg.OpenKey('SOFTWARE\MCMT32\', True);
      Reg.WriteBool('ChoixPark',ChoixPark);
      Reg.CloseKey;
    Finally
      Reg.Free;
    end;
    SpinEditParkAHh.Enabled:=false;
    SpinEditParkAHm.Enabled:=false;
    SpinEditParkDECd.Enabled:=false;
    SpinEditParkDECm.Enabled:=false;
    Label2.Enabled:=false;
    Label3.Enabled:=false;
    Label4.Enabled:=false;
    Label5.Enabled:=false;
    Label6.Enabled:=false;
    Label7.Enabled:=false;
  end
  else
  begin
    ChoixPark:=true;
    try
      Reg:=TRegistry.Create;
      Reg.RootKey := HKEY_CURRENT_USER;
      if not (Reg.OpenKey('SOFTWARE\MCMT32\', False)) then
        Reg.OpenKey('SOFTWARE\MCMT32\', True);
      Reg.WriteBool('ChoixPark',ChoixPark);
      Reg.CloseKey;
    Finally
      Reg.Free;
    end;
    SpinEditParkAHh.Enabled:=true;
    SpinEditParkAHm.Enabled:=true;
    SpinEditParkDECd.Enabled:=true;
    SpinEditParkDECm.Enabled:=true;
    Label2.Enabled:=true;
    Label3.Enabled:=true;
    Label4.Enabled:=true;
    Label5.Enabled:=true;
    Label6.Enabled:=true;
    Label7.Enabled:=true;
  end;
end;

procedure TForm2.RadioButtonSideralMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  fTrackingDemande:=0;
end;

procedure TForm2.RadioButtonSolaireMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  fTrackingDemande:=2;
end;

procedure TForm2.TimerCoordTimer(Sender: TObject);
var RA,RAh,RAm,RAs,DC,DCd,DCm,DCs:double;
    Hauteur,Azimuth,AirMass:extended;
begin
    RA:=Get_RightAscension_Core;
    RAh:=trunc(RA);
    RAm:=trunc((RA-RAh)*60);
    RAs:=(RA-RAh-RAm/60)*3600;
    LabelRA.Caption:=format('RA:%2.0fh%2.0fm%4.2fs',[RAh,RAm,RAs]);
    DC:=Get_Declination_Core;
    DCd:=trunc(DC);
    DCm:=trunc((DC-DCd)*60);
    DCs:=(DC-DCd-DCm/60)*3600;
    LabelDEC.Caption:=format('DEC:%2.0f°%2.0fm%4.2fs',[DCd,Abs(DCm),Abs(DCs)]);
    CalculeAZAFromAlphaDelta(HourToRad(RA),DegToRad(DC),Lieu.Lat,Lieu.Long,Now+SpeedIntMCMT.GMT/24,Hauteur,Azimuth,AirMass);
    LabelAzimuth.Caption:=format('Az:%5.2f°',[RadToDeg(Azimuth)]);
    LabelHauteur.Caption:=format('Ht:%5.2f°',[RadToDeg(Hauteur)]);
    RADECtranfos.ConvertRADECobs_to_RADEC2000(Now,HourToRad(RA),DegToRad(DC),RA,DC);
    RA:=RadToHour(RA);
    DC:=RadToDEG(DC);
    RAh:=trunc(RA);
    RAm:=trunc((RA-RAh)*60);
    RAs:=(RA-RAh-RAm/60)*3600;
    LabelRA2000.Caption:=format('RA:%2.0fh%2.0fm%4.2fs',[RAh,RAm,RAs]);
    DCd:=trunc(DC);
    DCm:=trunc((DC-DCd)*60);
    DCs:=(DC-DCd-DCm/60)*3600;
    LabelDEC2000.Caption:=format('DEC:%2.0f°%2.0fm%4.2fs',[DCd,Abs(DCm),Abs(DCs)]);
    LabelFactVitesse.Caption:=format('Fact:%1.6f',[fFactVitesse]);//5.4
    LabelCodeur.Caption:=format('Codeur:%d',[fCodeurPEC]);
    LabelCodeur_Arcsec.Caption:=format('Cod:%6.2f',[fCodeur_Arcsec]);//5.4
    Ecran.Canvas.MoveTo(XEcran,YEcran);
    CalculeGraphique(Hauteur,Azimuth,XEcran,YEcran);
    Ecran.Canvas.Pen.Color:=clWhite;
    if FirstPlot then FirstPlot:=false
    else Ecran.Canvas.LineTo(XEcran,YEcran);
    if IsMCMTSlewing(0) then
    begin
//      LEDO.Grey;
//      LEDE.Grey;
//      LEDSlewing.Red;
    end
    else
    begin
//      LEDSlewing.Grey;
    end;
end;

end.
