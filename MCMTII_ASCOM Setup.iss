;
; Script generated by the ASCOM Driver Installer Script Generator 6.0.0.0
; Generated by Michel Meunier on 11/04/2013 (UTC)
;
[Setup]
AppName=ASCOM MCMTII_ASCOM Telescope Driver
AppVerName=ASCOM MCMTII_ASCOM Telescope Driver 1.0.1
AppVersion=1.0.1
AppPublisher=Michel Meunier <michel.meunier100@orange.fr>
AppPublisherURL=mailto:michel.meunier100@orange.fr
AppSupportURL=http://tech.groups.yahoo.com/group/ASCOM-Talk/
AppUpdatesURL=http://ascom-standards.org/
VersionInfoVersion=1.0.0
MinVersion=0,5.0.2195sp4
DefaultDirName="{cf}\ASCOM\Telescope"
DisableDirPage=yes
DisableProgramGroupPage=yes
OutputDir="."
OutputBaseFilename="MCMTII_ASCOM Setup"
Compression=lzma
SolidCompression=yes
; Put there by Platform if Driver Installer Support selected
WizardImageFile="C:\Program Files (x86)\ASCOM\Platform 6 Developer Components\Installer Generator\Resources\WizardImage.bmp"
LicenseFile="C:\Program Files (x86)\ASCOM\Platform 6 Developer Components\Installer Generator\Resources\CreativeCommons.txt"
; {cf}\ASCOM\Uninstall\Telescope folder created by Platform, always
UninstallFilesDir="{cf}\ASCOM\Uninstall\Telescope\MCMTII_ASCOM"

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Dirs]
Name: "{cf}\ASCOM\Uninstall\Telescope\MCMTII_ASCOM"
; TODO: Add subfolders below {app} as needed (e.g. Name: "{app}\MyFolder")

[Files]
Source: "E:\ASCOM\MCMT32New\MCMT32_ASCOM.exe"; DestDir: "{app}" ;AfterInstall: RegASCOM()
; Require a read-me HTML to appear after installation, maybe driver's Help doc
Source: "E:\ASCOM\MCMT32New\Notice.txt"; DestDir: "{app}"; Flags: isreadme
; TODO: Add other files needed by your driver here (add subfolders above)

;Only if COM Local Server
[Run]
Filename: "{app}\MCMT32_ASCOM.exe"; Parameters: "/regserver"




;Only if COM Local Server
[UninstallRun]
Filename: "{app}\MCMT32_ASCOM.exe"; Parameters: "/unregserver"



;  DCOM setup for COM local Server, needed for TheSky
[Registry]
; TODO: If needed set this value to the Telescope CLSID of your driver (mind the leading/extra '{')
#define AppClsid "{{4870235d-b904-42fb-a0ce-723a87839b88}"

; set the DCOM access control for TheSky on the Telescope interface
Root: HKCR; Subkey: CLSID\{#AppClsid}; ValueType: string; ValueName: AppID; ValueData: {#AppClsid}
Root: HKCR; Subkey: AppId\{#AppClsid}; ValueType: string; ValueData: "ASCOM MCMT32_ASCOM Telescope Driver"
Root: HKCR; Subkey: AppId\{#AppClsid}; ValueType: string; ValueName: AppID; ValueData: {#AppClsid}
Root: HKCR; Subkey: AppId\{#AppClsid}; ValueType: dword; ValueName: AuthenticationLevel; ValueData: 1
; set the DCOM key for the executable as a whole
Root: HKCR; Subkey: AppId\MCMT32_ASCOM.exe; ValueType: string; ValueName: AppID; ValueData: {#AppClsid}
; CAUTION! DO NOT EDIT - DELETING ENTIRE APPID TREE WILL BREAK WINDOWS!
Root: HKCR; Subkey: AppId\{#AppClsid}; Flags: uninsdeletekey
Root: HKCR; Subkey: AppId\MCMT32_ASCOM.exe; Flags: uninsdeletekey

[CODE]
//
// Before the installer UI appears, verify that the (prerequisite)
// ASCOM Platform 6.0 or greater is installed, including both Helper
// components. Utility is required for all types (COM and .NET)!
//
function InitializeSetup(): Boolean;
var
   U : Variant;
   H : Variant;
begin
   Result := FALSE;  // Assume failure
   // check that the DriverHelper and Utilities objects exist, report errors if they don't
   try
      H := CreateOLEObject('DriverHelper.Util');
   except
      MsgBox('The ASCOM DriverHelper object has failed to load, this indicates a serious problem with the ASCOM installation', mbInformation, MB_OK);
   end;
   try
      U := CreateOLEObject('ASCOM.Utilities.Util');
   except
      MsgBox('The ASCOM Utilities object has failed to load, this indicates that the ASCOM Platform has not been installed correctly', mbInformation, MB_OK);
   end;
   Result:=true;
   if(not Result) then
      MsgBox('The ASCOM Platform 6.0 or greater is required for this driver.', mbInformation, MB_OK);
end;

//
// Register and unregister the driver with the Chooser
// We already know that the Helper is available
//
procedure RegASCOM();
var
   P: Variant;
begin
   P := CreateOleObject('ASCOM.Utilities.Profile');
   P.DeviceType := 'Telescope';
   P.Register('MCMT32_ASCOM.Telescope', 'MCMTII ASCOM Driver');
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
var
   P: Variant;
begin
   if CurUninstallStep = usUninstall then
   begin
     P := CreateOleObject('ASCOM.Utilities.Profile');
     P.DeviceType := 'Telescope';
     P.Unregister('MCMT32_ASCOM.Telescope');
  end;
end;
