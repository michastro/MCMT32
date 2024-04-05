program Copier;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Windows;

begin
  try
    { TODO -oUser -cConsole Main : Insérer du code ici }
    CopyFile(PChar('C:\Astro\ASCOM\MCMT32New\Win32\MCMT32Release\MCMT32_ASCOM.exe'),PChar('C:\Program Files (x86)\Common Files\ASCOM\Telescope\MCMT32_ASCOM.exe'), False);
   except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
