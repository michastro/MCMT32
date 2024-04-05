program MCMT32_ASCOM;

uses
  Vcl.Forms,
  MCMT_Main in 'MCMT_Main.pas' {Form2},
  MCMT32_ASCOM_TLB in 'MCMT32_ASCOM_TLB.pas',
  Telescope_Unit in 'Telescope_Unit.pas' {Telescope: CoClass},
  Rate_Unit in 'Rate_Unit.pas' {Rate: CoClass},
  AxisRates_Unit in 'AxisRates_Unit.pas' {Rates: CoClass},
  TrackingRates_Unit in 'TrackingRates_Unit.pas' {TrackingRatesCol: CoClass},
  VarGlobal in 'VarGlobal.pas',
  Setup32 in 'Setup32.pas' {SetupTelescope},
  COMM in 'COMM.pas',
  Utils in 'Utils.pas',
  scan_mcmt in 'scan_mcmt.pas' {Form_scan_mcmt},
  FinderCom_Unit in 'FinderCom_Unit.pas',
  ProcessBox_mcmtII in 'ProcessBox_mcmtII.pas' {ProcessingBox},
  Etat_Telescope in 'Etat_Telescope.pas' {Form_Etat_Telescope},
  FeuRouge in 'FeuRouge.pas' {Form_FeuRouge},
  FeuVert in 'FeuVert.pas' {Form_FeuVert},
  Core in 'Core.pas',
  Simulateur in 'Simulateur.pas',
  UnitCalcul in 'UnitCalcul.pas',
  RADECtranfos in 'RADECtranfos.pas',
  PAP_math in 'PAP_math.pas',
  mscorlib_TLB in 'mscorlib_TLB.pas',
  EnumeratorTrackingUnit in 'EnumeratorTrackingUnit.pas' {RateEnum: CoClass},
  LEDUnit in 'LEDUnit.pas',
  RateEnumUnit in 'RateEnumUnit.pas';

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  //  Application.CreateForm(TFormConsole, FormConsole);
//  Application.CreateForm(TForm_FeuRouge, Form_FeuRouge);
//  Application.CreateForm(TForm_FeuVert, Form_FeuVert);
  Application.Run;
end.
