unit ASCOM_DeviceInterfaces_TLB;

// ************************************************************************ //
// AVERTISSEMENT
// -------
// Les types déclarés dans ce fichier ont été générés à partir de données lues
// depuis la bibliothèque de types. Si cette dernière (via une autre bibliothèque de types
// s'y référant) est explicitement ou indirectement ré-importée, ou la commande "Actualiser"
// de l'éditeur de bibliothèque de types est activée lors de la modification de la bibliothèque
// de types, le contenu de ce fichier sera régénéré et toutes les modifications
// manuellement apportées seront perdues.
// ************************************************************************ //

// $Rev: 52393 $
// Fichier généré le 09/09/2015 17:39:27 depuis la bibliothèque de types ci-dessous.

// ************************************************************************  //
// Biblio. types : C:\WINDOWS\assembly\GAC_MSIL\ASCOM.DeviceInterfaces\6.0.0.0__565de7938946fba7\ASCOM.DeviceInterfaces.tlb (1)
// LIBID : {5849AF17-3590-42FF-900E-7544D45C9825}
// LCID : 0
// Fichier d'aide : 
// Chaîne d'aide : ASCOM Device Interfaces for Platform 6
// DepndLst : 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // L'unité doit être compilée sans pointeur à type contrôlé.  
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, mscorlib_TLB, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Winapi.ActiveX;
  
// *********************************************************************//
// GUIDS déclarés dans la bibliothèque de types. Préfixes utilisés:        
//   Bibliothèques de types : LIBID_xxxx                                      
//   CoClasses              : CLASS_xxxx                                      
//   Interfaces DISP        : DIID_xxxx                                       
//   Interfaces Non-DISP    : IID_xxxx                                        
// *********************************************************************//
const
  // Versions mineure et majeure de la bibliothèque de types
  ASCOM_DeviceInterfacesMajorVersion = 6;
  ASCOM_DeviceInterfacesMinorVersion = 0;

  LIBID_ASCOM_DeviceInterfaces: TGUID = '{5849AF17-3590-42FF-900E-7544D45C9825}';

  DIID_IAxisRates: TGUID = '{E39480E6-9DBB-466E-9AA4-9D1B1EA8F849}';
  DIID_ICameraV2: TGUID = '{972CEBC6-0EBE-4EFC-99DD-CC5293FDE77B}';
  DIID_IDomeV2: TGUID = '{88CFA00C-DDD3-4B42-A1F0-9387E6823832}';
  DIID_IFilterWheelV2: TGUID = '{DCF3858D-D68E-45ED-8141-1C899B4B432A}';
  DIID_IFocuserV2: TGUID = '{E430C8A8-539E-4558-895D-A2F293D946E7}';
  DIID_IRate: TGUID = '{2E7CEEE4-B5C6-4E9A-87F4-80445700D123}';
  DIID_IRotatorV2: TGUID = '{692FA48C-4A30-4543-8681-DA0733758F11}';
  DIID_ISafetyMonitor: TGUID = '{90F92092-DD68-4AA5-845C-7061F328B73E}';
  DIID_ISwitchV2: TGUID = '{71A6CA6B-A86B-4EBB-8DA3-6D91705177A3}';
  DIID_ITelescopeV3: TGUID = '{A007D146-AE3D-4754-98CA-199FEC03CF68}';
  DIID_ITrackingRates: TGUID = '{35C65270-9582-410D-93CB-A660C5C99D9D}';
  DIID_IVideoFrame: TGUID = '{EA1D5478-7263-43F8-B708-78783A48158C}';
  DIID_IVideo: TGUID = '{00A394A5-BCB0-449D-A46B-81A02824ADC5}';

// *********************************************************************//
// Déclaration d'énumérations définies dans la bibliothèque de types                    
// *********************************************************************//
// Constantes pour enum AlignmentModes
type
  AlignmentModes = TOleEnum;
const
  AlignmentModes_algAltAz = $00000000;
  AlignmentModes_algPolar = $00000001;
  AlignmentModes_algGermanPolar = $00000002;

// Constantes pour enum DriveRates
type
  DriveRates = TOleEnum;
const
  DriveRates_driveSidereal = $00000000;
  DriveRates_driveLunar = $00000001;
  DriveRates_driveSolar = $00000002;
  DriveRates_driveKing = $00000003;

// Constantes pour enum EquatorialCoordinateType
type
  EquatorialCoordinateType = TOleEnum;
const
  EquatorialCoordinateType_equOther = $00000000;
  EquatorialCoordinateType_equLocalTopocentric = $00000001;
  EquatorialCoordinateType_equJ2000 = $00000002;
  EquatorialCoordinateType_equJ2050 = $00000003;
  EquatorialCoordinateType_equB1950 = $00000004;

// Constantes pour enum GuideDirections
type
  GuideDirections = TOleEnum;
const
  GuideDirections_guideNorth = $00000000;
  GuideDirections_guideSouth = $00000001;
  GuideDirections_guideEast = $00000002;
  GuideDirections_guideWest = $00000003;

// Constantes pour enum TelescopeAxes
type
  TelescopeAxes = TOleEnum;
const
  TelescopeAxes_axisPrimary = $00000000;
  TelescopeAxes_axisSecondary = $00000001;
  TelescopeAxes_axisTertiary = $00000002;

// Constantes pour enum PierSide
type
  PierSide = TOleEnum;
const
  PierSide_pierEast = $00000000;
  PierSide_pierUnknown = $FFFFFFFF;
  PierSide_pierWest = $00000001;

// Constantes pour enum ShutterState
type
  ShutterState = TOleEnum;
const
  ShutterState_shutterOpen = $00000000;
  ShutterState_shutterClosed = $00000001;
  ShutterState_shutterOpening = $00000002;
  ShutterState_shutterClosing = $00000003;
  ShutterState_shutterError = $00000004;

// Constantes pour enum CameraStates
type
  CameraStates = TOleEnum;
const
  CameraStates_cameraIdle = $00000000;
  CameraStates_cameraWaiting = $00000001;
  CameraStates_cameraExposing = $00000002;
  CameraStates_cameraReading = $00000003;
  CameraStates_cameraDownload = $00000004;
  CameraStates_cameraError = $00000005;

// Constantes pour enum SensorType
type
  SensorType = TOleEnum;
const
  SensorType_Monochrome = $00000000;
  SensorType_Color = $00000001;
  SensorType_RGGB = $00000002;
  SensorType_CMYG = $00000003;
  SensorType_CMYG2 = $00000004;
  SensorType_LRGB = $00000005;

// Constantes pour enum VideoCameraFrameRate
type
  VideoCameraFrameRate = TOleEnum;
const
  VideoCameraFrameRate_Variable = $00000000;
  VideoCameraFrameRate_PAL = $00000001;
  VideoCameraFrameRate_NTSC = $00000002;

// Constantes pour enum VideoCameraState
type
  VideoCameraState = TOleEnum;
const
  VideoCameraState_videoCameraRunning = $00000000;
  VideoCameraState_videoCameraRecording = $00000001;
  VideoCameraState_videoCameraError = $00000002;

type

// *********************************************************************//
// Déclaration Forward des types définis dans la bibliothèque de types                     
// *********************************************************************//
  IAxisRates = dispinterface;
  ICameraV2 = dispinterface;
  IDomeV2 = dispinterface;
  IFilterWheelV2 = dispinterface;
  IFocuserV2 = dispinterface;
  IRate = dispinterface;
  IRotatorV2 = dispinterface;
  ISafetyMonitor = dispinterface;
  ISwitchV2 = dispinterface;
  ITelescopeV3 = dispinterface;
  ITrackingRates = dispinterface;
  IVideoFrame = dispinterface;
  IVideo = dispinterface;

// *********************************************************************//
// DispIntf :    IAxisRates
// Indicateurs : (4096) Dispatchable
// GUID :        {E39480E6-9DBB-466E-9AA4-9D1B1EA8F849}
// *********************************************************************//
  IAxisRates = dispinterface
    ['{E39480E6-9DBB-466E-9AA4-9D1B1EA8F849}']
    property Item[index: Integer]: IRate readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    procedure Dispose; dispid 1610743810;
    function GetEnumerator: IEnumVARIANT; dispid -4;
  end;

// *********************************************************************//
// DispIntf :    ICameraV2
// Indicateurs : (4096) Dispatchable
// GUID :        {972CEBC6-0EBE-4EFC-99DD-CC5293FDE77B}
// *********************************************************************//
  ICameraV2 = dispinterface
    ['{972CEBC6-0EBE-4EFC-99DD-CC5293FDE77B}']
    property Connected: WordBool dispid 1610743808;
    property Description: WideString readonly dispid 1610743810;
    property DriverInfo: WideString readonly dispid 1610743811;
    property DriverVersion: WideString readonly dispid 1610743812;
    property InterfaceVersion: Smallint readonly dispid 1610743813;
    property Name: WideString readonly dispid 1610743814;
    procedure SetupDialog; dispid 1610743815;
    function Action(const ActionName: WideString; const ActionParameters: WideString): WideString; dispid 1610743816;
    property SupportedActions: _ArrayList readonly dispid 1610743817;
    procedure CommandBlind(const Command: WideString; Raw: WordBool); dispid 1610743818;
    function CommandBool(const Command: WideString; Raw: WordBool): WordBool; dispid 1610743819;
    function CommandString(const Command: WideString; Raw: WordBool): WideString; dispid 1610743820;
    procedure Dispose; dispid 1610743821;
    procedure AbortExposure; dispid 1610743822;
    property BinX: Smallint dispid 1610743823;
    property BinY: Smallint dispid 1610743825;
    property CameraState: CameraStates readonly dispid 1610743827;
    property CameraXSize: Integer readonly dispid 1610743828;
    property CameraYSize: Integer readonly dispid 1610743829;
    property CanAbortExposure: WordBool readonly dispid 1610743830;
    property CanAsymmetricBin: WordBool readonly dispid 1610743831;
    property CanGetCoolerPower: WordBool readonly dispid 1610743832;
    property CanPulseGuide: WordBool readonly dispid 1610743833;
    property CanSetCCDTemperature: WordBool readonly dispid 1610743834;
    property CanStopExposure: WordBool readonly dispid 1610743835;
    property CCDTemperature: Double readonly dispid 1610743836;
    property CoolerOn: WordBool dispid 1610743837;
    property CoolerPower: Double readonly dispid 1610743839;
    property ElectronsPerADU: Double readonly dispid 1610743840;
    property FullWellCapacity: Double readonly dispid 1610743841;
    property HasShutter: WordBool readonly dispid 1610743842;
    property HeatSinkTemperature: Double readonly dispid 1610743843;
    property ImageArray: OleVariant readonly dispid 1610743844;
    property ImageArrayVariant: OleVariant readonly dispid 1610743845;
    property ImageReady: WordBool readonly dispid 1610743846;
    property IsPulseGuiding: WordBool readonly dispid 1610743847;
    property LastExposureDuration: Double readonly dispid 1610743848;
    property LastExposureStartTime: WideString readonly dispid 1610743849;
    property MaxADU: Integer readonly dispid 1610743850;
    property MaxBinX: Smallint readonly dispid 1610743851;
    property MaxBinY: Smallint readonly dispid 1610743852;
    property NumX: Integer dispid 1610743853;
    property NumY: Integer dispid 1610743855;
    property PixelSizeX: Double readonly dispid 1610743857;
    property PixelSizeY: Double readonly dispid 1610743858;
    procedure PulseGuide(Direction: GuideDirections; Duration: Integer); dispid 1610743859;
    property SetCCDTemperature: Double dispid 1610743860;
    procedure StartExposure(Duration: Double; Light: WordBool); dispid 1610743862;
    property StartX: Integer dispid 1610743863;
    property StartY: Integer dispid 1610743865;
    procedure StopExposure; dispid 1610743867;
    property BayerOffsetX: Smallint readonly dispid 1610743868;
    property BayerOffsetY: Smallint readonly dispid 1610743869;
    property CanFastReadout: WordBool readonly dispid 1610743870;
    property ExposureMax: Double readonly dispid 1610743871;
    property ExposureMin: Double readonly dispid 1610743872;
    property ExposureResolution: Double readonly dispid 1610743873;
    property FastReadout: WordBool dispid 1610743874;
    property Gain: Smallint dispid 1610743876;
    property GainMax: Smallint readonly dispid 1610743878;
    property GainMin: Smallint readonly dispid 1610743879;
    property Gains: _ArrayList readonly dispid 1610743880;
    property PercentCompleted: Smallint readonly dispid 1610743881;
    property ReadoutMode: Smallint dispid 1610743882;
    property ReadoutModes: _ArrayList readonly dispid 1610743884;
    property SensorName: WideString readonly dispid 1610743885;
    property SensorType: SensorType readonly dispid 1610743886;
  end;

// *********************************************************************//
// DispIntf :    IDomeV2
// Indicateurs : (4096) Dispatchable
// GUID :        {88CFA00C-DDD3-4B42-A1F0-9387E6823832}
// *********************************************************************//
  IDomeV2 = dispinterface
    ['{88CFA00C-DDD3-4B42-A1F0-9387E6823832}']
    property Connected: WordBool dispid 1610743808;
    property Description: WideString readonly dispid 1610743810;
    property DriverInfo: WideString readonly dispid 1610743811;
    property DriverVersion: WideString readonly dispid 1610743812;
    property InterfaceVersion: Smallint readonly dispid 1610743813;
    property Name: WideString readonly dispid 1610743814;
    procedure SetupDialog; dispid 1610743815;
    function Action(const ActionName: WideString; const ActionParameters: WideString): WideString; dispid 1610743816;
    property SupportedActions: _ArrayList readonly dispid 1610743817;
    procedure CommandBlind(const Command: WideString; Raw: WordBool); dispid 1610743818;
    function CommandBool(const Command: WideString; Raw: WordBool): WordBool; dispid 1610743819;
    function CommandString(const Command: WideString; Raw: WordBool): WideString; dispid 1610743820;
    procedure Dispose; dispid 1610743821;
    procedure AbortSlew; dispid 1610743822;
    property Altitude: Double readonly dispid 1610743823;
    property AtHome: WordBool readonly dispid 1610743824;
    property AtPark: WordBool readonly dispid 1610743825;
    property Azimuth: Double readonly dispid 1610743826;
    property CanFindHome: WordBool readonly dispid 1610743827;
    property CanPark: WordBool readonly dispid 1610743828;
    property CanSetAltitude: WordBool readonly dispid 1610743829;
    property CanSetAzimuth: WordBool readonly dispid 1610743830;
    property CanSetPark: WordBool readonly dispid 1610743831;
    property CanSetShutter: WordBool readonly dispid 1610743832;
    property CanSlave: WordBool readonly dispid 1610743833;
    property CanSyncAzimuth: WordBool readonly dispid 1610743834;
    procedure CloseShutter; dispid 1610743835;
    procedure FindHome; dispid 1610743836;
    procedure OpenShutter; dispid 1610743837;
    procedure Park; dispid 1610743838;
    procedure SetPark; dispid 1610743839;
    property ShutterStatus: ShutterState readonly dispid 1610743840;
    property Slaved: WordBool dispid 1610743841;
    property Slewing: WordBool readonly dispid 1610743843;
    procedure SlewToAltitude(Altitude: Double); dispid 1610743844;
    procedure SlewToAzimuth(Azimuth: Double); dispid 1610743845;
    procedure SyncToAzimuth(Azimuth: Double); dispid 1610743846;
  end;

// *********************************************************************//
// DispIntf :    IFilterWheelV2
// Indicateurs : (4096) Dispatchable
// GUID :        {DCF3858D-D68E-45ED-8141-1C899B4B432A}
// *********************************************************************//
  IFilterWheelV2 = dispinterface
    ['{DCF3858D-D68E-45ED-8141-1C899B4B432A}']
    property Connected: WordBool dispid 1610743808;
    property Description: WideString readonly dispid 1610743810;
    property DriverInfo: WideString readonly dispid 1610743811;
    property DriverVersion: WideString readonly dispid 1610743812;
    property InterfaceVersion: Smallint readonly dispid 1610743813;
    property Name: WideString readonly dispid 1610743814;
    procedure SetupDialog; dispid 1610743815;
    function Action(const ActionName: WideString; const ActionParameters: WideString): WideString; dispid 1610743816;
    property SupportedActions: _ArrayList readonly dispid 1610743817;
    procedure CommandBlind(const Command: WideString; Raw: WordBool); dispid 1610743818;
    function CommandBool(const Command: WideString; Raw: WordBool): WordBool; dispid 1610743819;
    function CommandString(const Command: WideString; Raw: WordBool): WideString; dispid 1610743820;
    procedure Dispose; dispid 1610743821;
    property FocusOffsets: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743822;
    property Names: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743823;
    property Position: Smallint dispid 1610743824;
  end;

// *********************************************************************//
// DispIntf :    IFocuserV2
// Indicateurs : (4096) Dispatchable
// GUID :        {E430C8A8-539E-4558-895D-A2F293D946E7}
// *********************************************************************//
  IFocuserV2 = dispinterface
    ['{E430C8A8-539E-4558-895D-A2F293D946E7}']
    property Connected: WordBool dispid 1610743808;
    property Description: WideString readonly dispid 1610743810;
    property DriverInfo: WideString readonly dispid 1610743811;
    property DriverVersion: WideString readonly dispid 1610743812;
    property InterfaceVersion: Smallint readonly dispid 1610743813;
    property Name: WideString readonly dispid 1610743814;
    procedure SetupDialog; dispid 1610743815;
    function Action(const ActionName: WideString; const ActionParameters: WideString): WideString; dispid 1610743816;
    property SupportedActions: _ArrayList readonly dispid 1610743817;
    procedure CommandBlind(const Command: WideString; Raw: WordBool); dispid 1610743818;
    function CommandBool(const Command: WideString; Raw: WordBool): WordBool; dispid 1610743819;
    function CommandString(const Command: WideString; Raw: WordBool): WideString; dispid 1610743820;
    procedure Dispose; dispid 1610743821;
    property Absolute: WordBool readonly dispid 1610743822;
    procedure Halt; dispid 1610743823;
    property IsMoving: WordBool readonly dispid 1610743824;
    property Link: WordBool dispid 1610743825;
    property MaxIncrement: Integer readonly dispid 1610743827;
    property MaxStep: Integer readonly dispid 1610743828;
    procedure Move(Position: Integer); dispid 1610743829;
    property Position: Integer readonly dispid 1610743830;
    property StepSize: Double readonly dispid 1610743831;
    property TempComp: WordBool dispid 1610743832;
    property TempCompAvailable: WordBool readonly dispid 1610743834;
    property Temperature: Double readonly dispid 1610743835;
  end;

// *********************************************************************//
// DispIntf :    IRate
// Indicateurs : (4096) Dispatchable
// GUID :        {2E7CEEE4-B5C6-4E9A-87F4-80445700D123}
// *********************************************************************//
  IRate = dispinterface
    ['{2E7CEEE4-B5C6-4E9A-87F4-80445700D123}']
    procedure Dispose; dispid 1610743808;
    property Maximum: Double dispid 1610743809;
    property Minimum: Double dispid 1610743811;
  end;

// *********************************************************************//
// DispIntf :    IRotatorV2
// Indicateurs : (4096) Dispatchable
// GUID :        {692FA48C-4A30-4543-8681-DA0733758F11}
// *********************************************************************//
  IRotatorV2 = dispinterface
    ['{692FA48C-4A30-4543-8681-DA0733758F11}']
    property Connected: WordBool dispid 1610743808;
    property Description: WideString readonly dispid 1610743810;
    property DriverInfo: WideString readonly dispid 1610743811;
    property DriverVersion: WideString readonly dispid 1610743812;
    property InterfaceVersion: Smallint readonly dispid 1610743813;
    property Name: WideString readonly dispid 1610743814;
    procedure SetupDialog; dispid 1610743815;
    function Action(const ActionName: WideString; const ActionParameters: WideString): WideString; dispid 1610743816;
    property SupportedActions: _ArrayList readonly dispid 1610743817;
    procedure CommandBlind(const Command: WideString; Raw: WordBool); dispid 1610743818;
    function CommandBool(const Command: WideString; Raw: WordBool): WordBool; dispid 1610743819;
    function CommandString(const Command: WideString; Raw: WordBool): WideString; dispid 1610743820;
    procedure Dispose; dispid 1610743821;
    property CanReverse: WordBool readonly dispid 1610743822;
    procedure Halt; dispid 1610743823;
    property IsMoving: WordBool readonly dispid 1610743824;
    procedure Move(Position: Single); dispid 1610743825;
    procedure MoveAbsolute(Position: Single); dispid 1610743826;
    property Position: Single readonly dispid 1610743827;
    property Reverse: WordBool dispid 1610743828;
    property StepSize: Single readonly dispid 1610743830;
    property TargetPosition: Single readonly dispid 1610743831;
  end;

// *********************************************************************//
// DispIntf :    ISafetyMonitor
// Indicateurs : (4096) Dispatchable
// GUID :        {90F92092-DD68-4AA5-845C-7061F328B73E}
// *********************************************************************//
  ISafetyMonitor = dispinterface
    ['{90F92092-DD68-4AA5-845C-7061F328B73E}']
    property Connected: WordBool dispid 1610743808;
    property Description: WideString readonly dispid 1610743810;
    property DriverInfo: WideString readonly dispid 1610743811;
    property DriverVersion: WideString readonly dispid 1610743812;
    property InterfaceVersion: Smallint readonly dispid 1610743813;
    property Name: WideString readonly dispid 1610743814;
    procedure SetupDialog; dispid 1610743815;
    function Action(const ActionName: WideString; const ActionParameters: WideString): WideString; dispid 1610743816;
    property SupportedActions: _ArrayList readonly dispid 1610743817;
    procedure CommandBlind(const Command: WideString; Raw: WordBool); dispid 1610743818;
    function CommandBool(const Command: WideString; Raw: WordBool): WordBool; dispid 1610743819;
    function CommandString(const Command: WideString; Raw: WordBool): WideString; dispid 1610743820;
    procedure Dispose; dispid 1610743821;
    property IsSafe: WordBool readonly dispid 1610743822;
  end;

// *********************************************************************//
// DispIntf :    ISwitchV2
// Indicateurs : (4096) Dispatchable
// GUID :        {71A6CA6B-A86B-4EBB-8DA3-6D91705177A3}
// *********************************************************************//
  ISwitchV2 = dispinterface
    ['{71A6CA6B-A86B-4EBB-8DA3-6D91705177A3}']
    property Connected: WordBool dispid 1610743808;
    property Description: WideString readonly dispid 1610743810;
    property DriverInfo: WideString readonly dispid 1610743811;
    property DriverVersion: WideString readonly dispid 1610743812;
    property InterfaceVersion: Smallint readonly dispid 1610743813;
    property Name: WideString readonly dispid 1610743814;
    procedure SetupDialog; dispid 1610743815;
    function Action(const ActionName: WideString; const ActionParameters: WideString): WideString; dispid 1610743816;
    property SupportedActions: _ArrayList readonly dispid 1610743817;
    procedure CommandBlind(const Command: WideString; Raw: WordBool); dispid 1610743818;
    function CommandBool(const Command: WideString; Raw: WordBool): WordBool; dispid 1610743819;
    function CommandString(const Command: WideString; Raw: WordBool): WideString; dispid 1610743820;
    procedure Dispose; dispid 1610743821;
    property MaxSwitch: Smallint readonly dispid 1610743822;
    function GetSwitchName(id: Smallint): WideString; dispid 1610743823;
    procedure SetSwitchName(id: Smallint; const Name: WideString); dispid 1610743824;
    function GetSwitchDescription(id: Smallint): WideString; dispid 1610743825;
    function CanWrite(id: Smallint): WordBool; dispid 1610743826;
    function GetSwitch(id: Smallint): WordBool; dispid 1610743827;
    procedure SetSwitch(id: Smallint; state: WordBool); dispid 1610743828;
    function MaxSwitchValue(id: Smallint): Double; dispid 1610743829;
    function MinSwitchValue(id: Smallint): Double; dispid 1610743830;
    function SwitchStep(id: Smallint): Double; dispid 1610743831;
    function GetSwitchValue(id: Smallint): Double; dispid 1610743832;
    procedure SetSwitchValue(id: Smallint; value: Double); dispid 1610743833;
  end;

// *********************************************************************//
// DispIntf :    ITelescopeV3
// Indicateurs : (4096) Dispatchable
// GUID :        {A007D146-AE3D-4754-98CA-199FEC03CF68}
// *********************************************************************//
  ITelescopeV3 = dispinterface
    ['{A007D146-AE3D-4754-98CA-199FEC03CF68}']
    property Connected: WordBool dispid 1610743808;
    property Description: WideString readonly dispid 1610743810;
    property DriverInfo: WideString readonly dispid 1610743811;
    property DriverVersion: WideString readonly dispid 1610743812;
    property InterfaceVersion: Smallint readonly dispid 1610743813;
    property Name: WideString readonly dispid 1610743814;
    procedure SetupDialog; dispid 1610743815;
    function Action(const ActionName: WideString; const ActionParameters: WideString): WideString; dispid 1610743816;
    property SupportedActions: _ArrayList readonly dispid 1610743817;
    procedure CommandBlind(const Command: WideString; Raw: WordBool); dispid 1610743818;
    function CommandBool(const Command: WideString; Raw: WordBool): WordBool; dispid 1610743819;
    function CommandString(const Command: WideString; Raw: WordBool): WideString; dispid 1610743820;
    procedure Dispose; dispid 1610743821;
    procedure AbortSlew; dispid 1610743822;
    property AlignmentMode: AlignmentModes readonly dispid 1610743823;
    property Altitude: Double readonly dispid 1610743824;
    property ApertureArea: Double readonly dispid 1610743825;
    property ApertureDiameter: Double readonly dispid 1610743826;
    property AtHome: WordBool readonly dispid 1610743827;
    property AtPark: WordBool readonly dispid 1610743828;
    function AxisRates(Axis: TelescopeAxes): IAxisRates; dispid 1610743829;
    property Azimuth: Double readonly dispid 1610743830;
    property CanFindHome: WordBool readonly dispid 1610743831;
    function CanMoveAxis(Axis: TelescopeAxes): WordBool; dispid 1610743832;
    property CanPark: WordBool readonly dispid 1610743833;
    property CanPulseGuide: WordBool readonly dispid 1610743834;
    property CanSetDeclinationRate: WordBool readonly dispid 1610743835;
    property CanSetGuideRates: WordBool readonly dispid 1610743836;
    property CanSetPark: WordBool readonly dispid 1610743837;
    property CanSetPierSide: WordBool readonly dispid 1610743838;
    property CanSetRightAscensionRate: WordBool readonly dispid 1610743839;
    property CanSetTracking: WordBool readonly dispid 1610743840;
    property CanSlew: WordBool readonly dispid 1610743841;
    property CanSlewAltAz: WordBool readonly dispid 1610743842;
    property CanSlewAltAzAsync: WordBool readonly dispid 1610743843;
    property CanSlewAsync: WordBool readonly dispid 1610743844;
    property CanSync: WordBool readonly dispid 1610743845;
    property CanSyncAltAz: WordBool readonly dispid 1610743846;
    property CanUnpark: WordBool readonly dispid 1610743847;
    property Declination: Double readonly dispid 1610743848;
    property DeclinationRate: Double dispid 1610743849;
    function DestinationSideOfPier(RightAscension: Double; Declination: Double): PierSide; dispid 1610743851;
    property DoesRefraction: WordBool dispid 1610743852;
    property EquatorialSystem: EquatorialCoordinateType readonly dispid 1610743854;
    procedure FindHome; dispid 1610743855;
    property FocalLength: Double readonly dispid 1610743856;
    property GuideRateDeclination: Double dispid 1610743857;
    property GuideRateRightAscension: Double dispid 1610743859;
    property IsPulseGuiding: WordBool readonly dispid 1610743861;
    procedure MoveAxis(Axis: TelescopeAxes; Rate: Double); dispid 1610743862;
    procedure Park; dispid 1610743863;
    procedure PulseGuide(Direction: GuideDirections; Duration: Integer); dispid 1610743864;
    property RightAscension: Double readonly dispid 1610743865;
    property RightAscensionRate: Double dispid 1610743866;
    procedure SetPark; dispid 1610743868;
    property SideOfPier: PierSide dispid 1610743869;
    property SiderealTime: Double readonly dispid 1610743871;
    property SiteElevation: Double dispid 1610743872;
    property SiteLatitude: Double dispid 1610743874;
    property SiteLongitude: Double dispid 1610743876;
    property Slewing: WordBool readonly dispid 1610743878;
    property SlewSettleTime: Smallint dispid 1610743879;
    procedure SlewToAltAz(Azimuth: Double; Altitude: Double); dispid 1610743881;
    procedure SlewToAltAzAsync(Azimuth: Double; Altitude: Double); dispid 1610743882;
    procedure SlewToCoordinates(RightAscension: Double; Declination: Double); dispid 1610743883;
    procedure SlewToCoordinatesAsync(RightAscension: Double; Declination: Double); dispid 1610743884;
    procedure SlewToTarget; dispid 1610743885;
    procedure SlewToTargetAsync; dispid 1610743886;
    procedure SyncToAltAz(Azimuth: Double; Altitude: Double); dispid 1610743887;
    procedure SyncToCoordinates(RightAscension: Double; Declination: Double); dispid 1610743888;
    procedure SyncToTarget; dispid 1610743889;
    property TargetDeclination: Double dispid 1610743890;
    property TargetRightAscension: Double dispid 1610743892;
    property Tracking: WordBool dispid 1610743894;
    property TrackingRate: DriveRates dispid 1610743896;
    property TrackingRates: ITrackingRates readonly dispid 1610743898;
    procedure Unpark; dispid 1610743899;
    property UTCDate: TDateTime dispid 1610743900;
  end;

// *********************************************************************//
// DispIntf :    ITrackingRates
// Indicateurs : (4096) Dispatchable
// GUID :        {35C65270-9582-410D-93CB-A660C5C99D9D}
// *********************************************************************//
  ITrackingRates = dispinterface
    ['{35C65270-9582-410D-93CB-A660C5C99D9D}']
    property Item[index: Integer]: DriveRates readonly dispid 0; default;
    property Count: Integer readonly dispid 1610743809;
    function GetEnumerator: IEnumVARIANT; dispid -4;
    procedure Dispose; dispid 1610743811;
  end;

// *********************************************************************//
// DispIntf :    IVideoFrame
// Indicateurs : (4096) Dispatchable
// GUID :        {EA1D5478-7263-43F8-B708-78783A48158C}
// *********************************************************************//
  IVideoFrame = dispinterface
    ['{EA1D5478-7263-43F8-B708-78783A48158C}']
    property ImageArray: OleVariant readonly dispid 1610743808;
    property PreviewBitmap: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743809;
    property FrameNumber: Int64 readonly dispid 1610743810;
    property ExposureDuration: Double readonly dispid 1610743811;
    property ExposureStartTime: WideString readonly dispid 1610743812;
    property ImageMetadata: _ArrayList readonly dispid 1610743813;
  end;

// *********************************************************************//
// DispIntf :    IVideo
// Indicateurs : (4096) Dispatchable
// GUID :        {00A394A5-BCB0-449D-A46B-81A02824ADC5}
// *********************************************************************//
  IVideo = dispinterface
    ['{00A394A5-BCB0-449D-A46B-81A02824ADC5}']
    property Connected: WordBool dispid 1610743808;
    property Description: WideString readonly dispid 1610743810;
    property DriverInfo: WideString readonly dispid 1610743811;
    property DriverVersion: WideString readonly dispid 1610743812;
    property InterfaceVersion: Smallint readonly dispid 1610743813;
    property Name: WideString readonly dispid 1610743814;
    function Action(const ActionName: WideString; const ActionParameters: WideString): WideString; dispid 1610743815;
    property SupportedActions: _ArrayList readonly dispid 1610743816;
    procedure Dispose; dispid 1610743817;
    property VideoCaptureDeviceName: WideString readonly dispid 1610743818;
    procedure SetupDialog; dispid 1610743819;
    property ExposureMax: Double readonly dispid 1610743820;
    property ExposureMin: Double readonly dispid 1610743821;
    property FrameRate: VideoCameraFrameRate readonly dispid 1610743822;
    property SupportedIntegrationRates: _ArrayList readonly dispid 1610743823;
    property IntegrationRate: Integer dispid 1610743824;
    property LastVideoFrame: IVideoFrame readonly dispid 1610743826;
    property SensorName: WideString readonly dispid 1610743827;
    property SensorType: SensorType readonly dispid 1610743828;
    property Width: Integer readonly dispid 1610743829;
    property Height: Integer readonly dispid 1610743830;
    property PixelSizeX: Double readonly dispid 1610743831;
    property PixelSizeY: Double readonly dispid 1610743832;
    property BitDepth: Integer readonly dispid 1610743833;
    property VideoCodec: WideString readonly dispid 1610743834;
    property VideoFileFormat: WideString readonly dispid 1610743835;
    property VideoFramesBufferSize: Integer readonly dispid 1610743836;
    function StartRecordingVideoFile(const PreferredFileName: WideString): WideString; dispid 1610743837;
    procedure StopRecordingVideoFile; dispid 1610743838;
    property CameraState: VideoCameraState readonly dispid 1610743839;
    property GainMax: Smallint readonly dispid 1610743840;
    property GainMin: Smallint readonly dispid 1610743841;
    property Gain: Smallint dispid 1610743842;
    property Gains: _ArrayList readonly dispid 1610743844;
    property GammaMax: Smallint readonly dispid 1610743845;
    property GammaMin: Smallint readonly dispid 1610743846;
    property Gamma: Smallint dispid 1610743847;
    property Gammas: _ArrayList readonly dispid 1610743849;
    property CanConfigureDeviceProperties: WordBool readonly dispid 1610743850;
    procedure ConfigureDeviceProperties; dispid 1610743851;
  end;

implementation

uses System.Win.ComObj;

end.
