unit SetupII;
{R+}
//////////////////////////////////////////////////////////
///    Fiche des paramètres à donner au télescope   //////
///              lors du démarrage                  //////
///////////////////////////////////////////////////////////

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, COMM, IniFiles, Spin, HiresTim,
  Editnbre, PanelLongLat, NumberEdit, jpeg,VarGlobal;

type
  TSetupTelescope = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    OpenDialog1: TOpenDialog;
    Panel12: TPanel;
    ProgressBarProgrammer: TProgressBar;
    Panel13: TPanel;
    ButtonOurvrir: TButton;
    Panel14: TPanel;
    ButtonVersion: TButton;
    Panel15: TPanel;
    ButtonProgrammer: TButton;
    RadioGroupAxe: TRadioGroup;
    Panel16: TPanel;
    ButtonCancel: TButton;
    SaveDialog1: TSaveDialog;
    OpenDialog2: TOpenDialog;
    CheckBoxProgAuto: TCheckBox;
    TabSheet4: TTabSheet;
    GroupBox8: TGroupBox;
    EditResolAlpha: TEdit;
    Panel17: TPanel;
    ButtonEvaluer: TButton;
    Panel18: TPanel;
    ButtonUtiliser: TButton;
    GroupBox9: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    EditResolDelta: TEdit;
    LabelResolAlpha: TLabel;
    LabelResolDelta: TLabel;
    LabelVitSid: TLabel;
    LabelVitGuidage: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label2VitCorrAlpha: TLabel;
    Label2VitCorrDelta: TLabel;
    LabelVitPointLentAlpha: TLabel;
    LabelVitPointLentDelta: TLabel;
    LabelVitPointRapideAlpha: TLabel;
    LabelVitPointRapideDelta: TLabel;
    Panel19: TPanel;
    ButtonActuel: TButton;
    Timer1: TTimer;
    InfoProgramme: TPanel;
    GroupBox1: TGroupBox;
    Edit_V_Guidage_AD: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Edit_V_Corr_P_AD: TEdit;
    Panel25: TPanel;
    Edit_V_Corr_M_AD: TEdit;
    Panel26: TPanel;
    Edit_V_Point_L_AD: TEdit;
    Panel27: TPanel;
    Edit_V_Point_R_AD: TEdit;
    Panel29: TPanel;
    CheckBox_PEC: TCheckBox;
    GroupBox4: TGroupBox;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    GroupBox10: TGroupBox;
    Panel35: TPanel;
    Panel36: TPanel;
    Edit_V_Guidage_DEC: TEdit;
    Edit_V_Corr_P_DEC: TEdit;
    Edit_V_Corr_M_DEC: TEdit;
    Edit_V_Point_L_DEC: TEdit;
    Edit_V_Point_R_DEC: TEdit;
    Edit_Resol_DEC: TEdit;
    CheckBox_DIR_DEC: TCheckBox;
    Panel37: TPanel;
    Panel10: TPanel;
    Button1: TButton;
    Panel11: TPanel;
    Button2: TButton;
    GroupBoxCOMSELECT: TGroupBox;
    ComboBoxNumCOM: TComboBox;
    SpinEdit_A_Guidage_DEC: TSpinEdit;
    SpinEdit_A_Lent_DEC: TSpinEdit;
    SpinEdit_A_Rapide_DEC: TSpinEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    ComboBox_Accel_AD: TComboBox;
    ComboBox_Accel_DEC: TComboBox;
    AfficheNomFichier: TPanel;
    HiResTimer1: THiResTimer;
    TabSheet2: TTabSheet;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    NbreEditLongDeg: NbreEdit;
    Label2: TLabel;
    NbreEditLongMin: NbreEdit;
    Label4: TLabel;
    NbreEditLongSec: NbreEdit;
    Label9: TLabel;
    NbreEditLongSec100: NbreEdit;
    Label6: TLabel;
    CheckBoxEast: TCheckBox;
    Altitude: TLabel;
    NbreEditAltitude: NbreEdit;
    m: TLabel;
    Label1: TLabel;
    NbreEditLatDeg: NbreEdit;
    Label3: TLabel;
    NbreEditLatMin: NbreEdit;
    NbreEditLatSec: NbreEdit;
    Label10: TLabel;
    NbreEditLatSec100: NbreEdit;
    Label7: TLabel;
    CheckBoxSouth: TCheckBox;
    Label5: TLabel;
    Label16: TLabel;
    Edit_Resol_AD: TEdit;
    Panel28: TPanel;
    Panel3: TPanel;
    CheckBox_DIR_AD: TCheckBox;
    GroupBox2: TGroupBox;
    SpinEdit_A_Guidage_AD: TSpinEdit;
    SpinEdit_A_Lent_AD: TSpinEdit;
    SpinEdit_A_Rapide_AD: TSpinEdit;
    GroupBox3: TGroupBox;
    Panel4: TPanel;
    Button_Lire: TButton;
    Panel5: TPanel;
    Button_Ecrire: TButton;
    GroupBox7: TGroupBox;
    Panel6: TPanel;
    Button_Sauver: TButton;
    Panel7: TPanel;
    Button_Charger: TButton;
    TabSheet6: TTabSheet;
    GroupBoxMontureFourche: TGroupBox;
    Image_meridien: TImage;
    Image_antimeridien: TImage;
    RadioGroupAlgorithmePointage: TRadioGroup;
    TabSheet5: TTabSheet;
    RadioGroup_Mode_Correction_Delta: TRadioGroup;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    NbreEditBacklash: NbreEdit;
    ComboBoxPauseBacklash: TComboBox;
    CheckBoxActivateBacklash: TCheckBox;
    GroupBox_Parametres_Correction_Jeux: TGroupBox;
    RadioGroupTypeMonture: TRadioGroup;
    RadioGroup_Raquette: TRadioGroup;
    GroupBoxMontureAllemande: TGroupBox;
    Image_Pied: TImage;
    Image_Zenith_Est: TImage;
    Image_Zenith_Ouest: TImage;
    GroupBox6: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    SpinEdit_Degagement_Est: TSpinEdit;
    RadioGroupEtatTelescope: TRadioGroup;
    CheckBox_Retournement_Autorise: TCheckBox;
    GroupBox_Declinaisons_critiques: TGroupBox;
    Label28: TLabel;
    SpinEdit_Declinaison_critique_Est: TSpinEdit;
    Label30: TLabel;
    Label31: TLabel;
    SpinEdit_Declinaison_critique_Ouest: TSpinEdit;
    Label23: TLabel;
    TabSheetASCOM_PEC_KING: TTabSheet;
    Label61: TLabel;
    GroupBox19: TGroupBox;
    CheckBoxActivateKing: TCheckBox;
    GroupBox20: TGroupBox;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    CheckBoxActivatePEC: TCheckBox;
    NbreEditPeriode_PEC_0: NbreEdit;
    NbreEditPeriode_PEC_1: NbreEdit;
    NbreEditPeriode_PEC_2: NbreEdit;
    NbreEditPeriode_PEC_3: NbreEdit;
    NbreEditPhase_PEC_0: NbreEdit;
    NbreEditPhase_PEC_1: NbreEdit;
    NbreEditPhase_PEC_2: NbreEdit;
    NbreEditPhase_PEC_3: NbreEdit;
    NbreEditAmplitude_PEC_0: NbreEdit;
    NbreEditAmplitude_PEC_1: NbreEdit;
    NbreEditAmplitude_PEC_2: NbreEdit;
    NbreEditAmplitude_PEC_3: NbreEdit;
    CheckBoxLogFile: TCheckBox;
    CheckBoxAutoCOM: TCheckBox;
    NbreEditPortSerieForced: NbreEdit;
    TabSheet7: TTabSheet;
    GroupBox11: TGroupBox;
    ImageMOXA: TImage;
    GroupBox12: TGroupBox;
    CheckBoxPurgCOMM: TCheckBox;
    Label32: TLabel;
    GroupBox13: TGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    SpinEdit_Degagement_Ouest: TSpinEdit;
    Label17: TLabel;
    Image_Pied_HemisphereSud: TImage;
    Label21: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label26: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label42: TLabel;
    Label37: TLabel;
    NumberEditWriteTimeOutms: NbreEdit;
    NumberEditReadTimeoutMs: NbreEdit;
    Label27: TLabel;
    ButtonApplyLatLong: TButton;
    procedure Button_LireClick(Sender: TObject);
    procedure Button_EcrireClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ButtonVersionClick(Sender: TObject);
    procedure ButtonOurvrirClick(Sender: TObject);
    procedure ButtonProgrammerClick(Sender: TObject);
    function  Communication(Const Hcom:Thandle;Instr: byte; VysBuff: Ansistring): boolean;
    procedure ButtonCancelClick(Sender: TObject);
    procedure ButtonEvaluerClick(Sender: TObject);
    procedure ButtonActuelClick(Sender: TObject);
    procedure ButtonUtiliserClick(Sender: TObject);
    procedure Button_SauverClick(Sender: TObject);
    procedure Button_ChargerClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroupEtatTelescopeClick(Sender: TObject);
    procedure RadioGroupTypeMontureClick(Sender: TObject);
    procedure RadioGroupAlgorithmePointageClick(Sender: TObject);
    procedure CheckBoxActivateBacklashClick(Sender: TObject);
    procedure CheckBox_Retournement_AutoriseClick(Sender: TObject);
    procedure CheckBoxActivatePECMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure CheckBoxLogFileClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBoxAutoCOMClick(Sender: TObject);
    procedure ButtonApplyLatLongClick(Sender: TObject);
  Private
    { Private declarations }
    Flatitude:Double;
  public
    { Public declarations }
    creating:Boolean;
    Function Return_PortCOM:Integer;
    Constructor create(Aowner:Tcomponent;Latitude:Double); reintroduce;
  end;

var
  ProgramCancel: Boolean;

  codeuralpha,
  codeurdelta: longint;

  vit_a_guide,
  vit_d_guide,
  vit_a_cor_p,
  vit_a_cor_m,
  vit_d_cor_p,
  vit_d_cor_m,
  vit_a_rap,
  vit_a_lent,
  vit_d_rap,
  vit_d_lent: double;


const // Protocole de programmation BootLoader
  READ      = $E0;
  RACK      = $E1;

  WRITEBOOT = $E3;
  WOK       = $E4;
  WBAD      = $E5;

  DATA_OK   = $E7;
  DAT_BAD   = $E8;

  IDENT     = $F0;
  IDACK     = $EB;

  DONE      = $ED;



implementation

Uses Utils;

{$R *.DFM}

ResourceString
 R_LogWarning='Attention, ceci va générer un fichier texte de debugging et peut ralentir le système ! Continuer ?';




Constructor TSetupTelescope.create(Aowner:Tcomponent;Latitude:Double);
begin
 Inherited create(Aowner);
 Flatitude:=Latitude;
end;


Function TSetupTelescope.Return_PortCOM:Integer;
Var AutoFindCOM:Boolean;
Begin
 AutoFindCOM:= CheckBoxAutoCOM.Checked;
 if AutoFindCOM then
  Result     := StrToInt(ComboBoxNumCOM.text)
 else
  Result     := StrToInt(NbreEditPortSerieForced.text);
end;


procedure TSetupTelescope.Button_LireClick(Sender: TObject);
var
  astring, receivestring: ShortString;
  anum                  : longword;
  Ok_open               : Boolean;
  Hcom                  : Thandle;
  NumCOM                : Byte   ;

begin
  //Connaitre le port COM utilisé
  NumCOM := Return_PortCOM;
  //Vérification des ports COM
  try

    Open_Cod_Eng(NumCOM,Ok_open); // Ouvrir le port COM
    try
      if Ok_open then
      begin
        CleanCOMs;

        if (deviceready(0)=1) then
        begin
          astring       := 'K' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
          receivestring := sendcommand(astring, 48, 0);

          if (receivestring<>'') then
          begin
            Button_Ecrire.Enabled := false;
            Button_Sauver.Enabled := false;
            Button_Charger.Enabled:= false;
            Button1.Enabled       := false;
            Button2.Enabled       := false;
{$IFDEF MCMT32}
            if (ord(receivestring[4]) <> 0) or (ord(receivestring[3]) <> 0) or (ord(receivestring[2]) <> 0) or (ord(receivestring[1]) <> 0) then
              Edit_V_Guidage_AD.text := Format('%1.3f',[80000000 /(ord(receivestring[4]) * 16777216+
                                                                  ord(receivestring[3]) * 65536 +
                                                                  ord(receivestring[2]) * 256 +
                                                                  ord(receivestring[1]))])
            else
              Edit_V_Guidage_AD.text := '0';

            if (ord(receivestring[8]) <> 0) or (ord(receivestring[7]) <> 0) or (ord(receivestring[6]) <> 0) or (ord(receivestring[5]) <> 0) then
              Edit_V_Corr_P_AD.text := Format('%1.2f',[80000000 / (ord(receivestring[8]) * 16777216+
                                                                  ord(receivestring[7]) * 65536 +
                                                                  ord(receivestring[6]) * 256 +
                                                                  ord(receivestring[5]))])
            else
              Edit_V_Corr_P_AD.text := '0';

            if (ord(receivestring[12]) <> 0) or (ord(receivestring[11]) <> 0) or (ord(receivestring[10]) <> 0) or (ord(receivestring[9]) <> 0) then
              Edit_V_Corr_M_AD.text := Format('%1.2f',[80000000 / (ord(receivestring[12]) * 16777216+
                                                                  ord(receivestring[11]) * 65536 +
                                                                  ord(receivestring[10]) * 256 +
                                                                  ord(receivestring[9]))])
            else
              Edit_V_Corr_M_AD.text := '0';

            if (ord(receivestring[16]) <> 0) or (ord(receivestring[15]) <> 0) or (ord(receivestring[14]) <> 0) or (ord(receivestring[13]) <> 0) then
              Edit_V_Point_L_AD.text := Format('%1.2f',[80000000 / (ord(receivestring[16]) * 16777216+
                                                                  ord(receivestring[15]) * 65536 +
                                                                  ord(receivestring[14]) * 256 +
                                                                  ord(receivestring[13]))])
            else
              Edit_V_Point_L_AD.text := '0';

            if (ord(receivestring[20]) <> 0) or (ord(receivestring[19]) <> 0) or (ord(receivestring[18]) <> 0) or (ord(receivestring[17]) <> 0) then
              Edit_V_Point_R_AD.text := Format('%1.2f',[80000000 / (ord(receivestring[20]) * 16777216+
                                                                  ord(receivestring[19]) * 65536 +
                                                                  ord(receivestring[18]) * 256 +
                                                                  ord(receivestring[17]))])
            else
              Edit_V_Point_R_AD.text := '0';

            ComboBox_Accel_AD.ItemIndex := ord(receivestring[21]);
            if ord(receivestring[22]) = 1 then CheckBox_DIR_AD.Checked := true
                                          else CheckBox_DIR_AD.Checked := false;

            SpinEdit_A_Guidage_AD.value := 25 * (ord(receivestring[34]) + 1);
            SpinEdit_A_Lent_AD.value    := 25 * (ord(receivestring[35]) + 1);
            SpinEdit_A_Rapide_AD.value  := 25 * (ord(receivestring[36]) + 1);

            anum := 25600 * (ord(receivestring[38]) * 256 + ord(receivestring[39]));
            Edit_Resol_AD.text := IntToStr(anum);

            if ord(receivestring[43]) = 1 then RadioGroup_Raquette.ItemIndex := 1
                                          else RadioGroup_Raquette.ItemIndex := 0;
{$ELSE}
            if (ord(receivestring[2]) <> 0) or (ord(receivestring[1]) <> 0) then
              Edit_V_Guidage_AD.text := Format('%1.3f',[625000 / (ord(receivestring[3]) / 10 +
                                                                  ord(receivestring[2]) * 256 +
                                                                  ord(receivestring[1]))])
            else
              Edit_V_Guidage_AD.text := '0';

            if (ord(receivestring[5]) <> 0) or (ord(receivestring[4]) <> 0) then
              Edit_V_Corr_P_AD.text := Format('%1.2f',[625000 / (ord(receivestring[5]) * 256 +
                                                                 ord(receivestring[4]))])
            else
              Edit_V_Corr_P_AD.text := '0';

            if (ord(receivestring[7]) <> 0) or (ord(receivestring[6]) <> 0) then
              Edit_V_Corr_M_AD.text := Format('%1.2f',[625000 / (ord(receivestring[7]) * 256 +
                                                                 ord(receivestring[6]))])
            else
              Edit_V_Corr_M_AD.text := '0';

            if (ord(receivestring[9]) <> 0) or (ord(receivestring[8]) <> 0) then
              Edit_V_Point_L_AD.text := Format('%1.2f',[(625000 / (ord(receivestring[9]) * 256 +
                                                                   ord(receivestring[8])) * 8)])
            else
              Edit_V_Point_L_AD.text := '0';

            if (ord(receivestring[11]) <> 0) or (ord(receivestring[10]) <> 0) then
              Edit_V_Point_R_AD.text := Format('%1.2f',[(625000 / (ord(receivestring[11]) * 256 +
                                                                   ord(receivestring[10])) * 32)])
            else
              Edit_V_Point_R_AD.text := '0';

            ComboBox_Accel_AD.ItemIndex := ord(receivestring[12]);
            if ord(receivestring[13]) = 1 then CheckBox_DIR_AD.Checked := true
                                          else CheckBox_DIR_AD.Checked := false;

            SpinEdit_A_Guidage_AD.value := 25 * (ord(receivestring[25]) + 1);
            SpinEdit_A_Lent_AD.value    := 25 * (ord(receivestring[26]) + 1);
            SpinEdit_A_Rapide_AD.value  := 25 * (ord(receivestring[27]) + 1);

            anum := 25600 * (ord(receivestring[29]) * 256 + ord(receivestring[30]));
            Edit_Resol_AD.text := IntToStr(anum);

            if ord(receivestring[32]) = 1 then RadioGroup_Raquette.ItemIndex := 1
                                          else RadioGroup_Raquette.ItemIndex := 0;
{$ENDIF}
            if ord(receivestring[48]) = 1 then CheckBox_PEC.Checked := true
                                          else CheckBox_PEC.Checked := false;

            Button_Ecrire.Enabled  := true;
            Button_Sauver.Enabled  := true;
            Button_Charger.Enabled := true;
            Button1.Enabled        := true;
            Button2.Enabled        := true;
          end
          else
            ShowMessage('Erreur deviceready du device ' + inttostr(0) + ' ' + inttostr(NumCOM) + '!');
        end;

        CleanCOMs;

        If (deviceready(1) = 1) then
        begin

          astring       := 'K' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
          receivestring := sendcommand(astring, 48, 1);

          If (receivestring<>'') then
          begin
            Button_Ecrire.Enabled  := false;
            Button_Sauver.Enabled  := false;
            Button_Charger.Enabled := false;
            Button1.Enabled        := false;
            Button2.Enabled        := false;
{$IFDEF MCMT32}
            if (ord(receivestring[4]) <> 0) or (ord(receivestring[3]) <> 0) or (ord(receivestring[2]) <> 0) or (ord(receivestring[1]) <> 0) then
              Edit_V_Guidage_DEC.text := Format('%1.3f',[80000000 /(ord(receivestring[4]) * 16777216+
                                                                  ord(receivestring[3]) * 65536 +
                                                                  ord(receivestring[2]) * 256 +
                                                                  ord(receivestring[1]))])
            else
              Edit_V_Guidage_DEC.text := '0';

            if (ord(receivestring[8]) <> 0) or (ord(receivestring[7]) <> 0) or (ord(receivestring[6]) <> 0) or (ord(receivestring[5]) <> 0) then
              Edit_V_Corr_P_DEC.text := Format('%1.2f',[80000000 / (ord(receivestring[8]) * 16777216+
                                                                  ord(receivestring[7]) * 65536 +
                                                                  ord(receivestring[6]) * 256 +
                                                                  ord(receivestring[5]))])
            else
              Edit_V_Corr_P_DEC.text := '0';

            if (ord(receivestring[12]) <> 0) or (ord(receivestring[11]) <> 0) or (ord(receivestring[10]) <> 0) or (ord(receivestring[9]) <> 0) then
              Edit_V_Corr_M_DEC.text := Format('%1.2f',[80000000 /(ord(receivestring[12]) * 16777216+
                                                                  ord(receivestring[11]) * 65536 +
                                                                  ord(receivestring[10]) * 256 +
                                                                  ord(receivestring[9]))])
            else
              Edit_V_Corr_M_DEC.text := '0';

            if (ord(receivestring[16]) <> 0) or (ord(receivestring[15]) <> 0) or (ord(receivestring[14]) <> 0) or (ord(receivestring[13]) <> 0) then
              Edit_V_Point_L_DEC.text := Format('%1.2f',[80000000 / (ord(receivestring[16]) * 16777216+
                                                                  ord(receivestring[15]) * 65536 +
                                                                  ord(receivestring[14]) * 256 +
                                                                  ord(receivestring[13]))])
            else
              Edit_V_Point_L_DEC.text := '0';

            if (ord(receivestring[20]) <> 0) or (ord(receivestring[19]) <> 0) or (ord(receivestring[18]) <> 0) or (ord(receivestring[17]) <> 0) then
              Edit_V_Point_R_DEC.text := Format('%1.2f',[80000000 / (ord(receivestring[20]) * 16777216+
                                                                  ord(receivestring[19]) * 65536 +
                                                                  ord(receivestring[18]) * 256 +
                                                                  ord(receivestring[17]))])
            else
              Edit_V_Point_R_DEC.text := '0';

            ComboBox_Accel_DEC.ItemIndex := ord(receivestring[21]);

            if ord(receivestring[22]) = 1 then CheckBox_DIR_DEC.Checked := true
                                          else CheckBox_DIR_DEC.Checked := false;

            SpinEdit_A_Guidage_DEC.value := 25 * (ord(receivestring[34]) + 1);
            SpinEdit_A_Lent_DEC.value    := 25 * (ord(receivestring[35]) + 1);
            SpinEdit_A_Rapide_DEC.value  := 25 * (ord(receivestring[36]) + 1);

            anum := 25600 * (ord(receivestring[38]) * 256 + ord(receivestring[39]));
{$ELSE}
            if (ord(receivestring[2]) <> 0) or (ord(receivestring[1]) <> 0) then
              Edit_V_Guidage_DEC.text := Format('%1.2f',[625000 / (ord(receivestring[2]) * 256 +
                                                                   ord(receivestring[1]))])
            else
              Edit_V_Guidage_DEC.text := '0';

            if (ord(receivestring[5]) <> 0) or (ord(receivestring[4]) <> 0) then
              Edit_V_Corr_P_DEC.text := Format('%1.2f',[625000 / (ord(receivestring[5]) * 256 +
                                                                  ord(receivestring[4]))])
            else
              Edit_V_Corr_P_DEC.text := '0';

            if (ord(receivestring[7]) <> 0) or (ord(receivestring[6]) <> 0) then
              Edit_V_Corr_M_DEC.text := Format('%1.2f',[625000 / (ord(receivestring[7]) * 256 +
                                                                  ord(receivestring[6]))])
            else
              Edit_V_Corr_M_DEC.text := '0';

            if (ord(receivestring[9]) <> 0) or (ord(receivestring[8]) <> 0) then
              Edit_V_Point_L_DEC.text := Format('%1.2f',[(625000 / (ord(receivestring[9]) * 256 +
                                                                    ord(receivestring[8])) * 8)])
            else
              Edit_V_Point_L_DEC.text := '0';

            if (ord(receivestring[11]) <> 0) or (ord(receivestring[10]) <> 0) then
              Edit_V_Point_R_DEC.text := Format('%1.2f',[(625000 / (ord(receivestring[11]) * 256 +
                                                                    ord(receivestring[10])) * 32)])
            else
              Edit_V_Point_R_DEC.text := '0';

            ComboBox_Accel_DEC.ItemIndex := ord(receivestring[12]);

            if ord(receivestring[13]) = 1 then CheckBox_DIR_DEC.Checked := true
                                          else CheckBox_DIR_DEC.Checked := false;

            SpinEdit_A_Guidage_DEC.value := 25 * (ord(receivestring[25]) + 1);
            SpinEdit_A_Lent_DEC.value    := 25 * (ord(receivestring[26]) + 1);
            SpinEdit_A_Rapide_DEC.value  := 25 * (ord(receivestring[27]) + 1);

            anum := 25600 * (ord(receivestring[29]) * 256 + ord(receivestring[30]));
{$ENDIF}
            Edit_Resol_DEC.text := IntToStr(anum);

            Button_Ecrire.Enabled := true;
            Button_Sauver.Enabled := true;
            Button_Charger.Enabled:= true;
            Button1.Enabled       := true;
            Button2.Enabled       := true;

          end
          else
            ShowMessage('Erreur deviceready du device ' + inttostr(1) + ' ' + inttostr(NumCOM) + '!');
        end;

        CleanCOMs;

      end;
     // Il n'y a pas de réponse donc ce n'est pas la peine de lire le Buffer !

    finally
     CloseCom;
    end;
  finally
  end;
end;



procedure TSetupTelescope.Button_EcrireClick(Sender: TObject);
var
  astring      : ShortString;
  anum         : integer;
  MSB, LSB     : byte;
  number       : longword;
  ok           : Boolean;
  hCom         : Thandle;
  NumCOM       : Byte   ;


  function CalcValue(bstring: ShortString): integer;
  var
    temp: integer;

  begin
    if strtofloat(bstring) > 0 then
    begin
{$IFDEF MCMT32}
      try
        CalcValue := round((80000000 / strtofloat(bstring)));
      except
        CalcValue :=0;
      end;
{$ELSE}
      temp := round((625000 / strtofloat(bstring)));
      if temp>65535 then CalcValue:= 65535 else CalcValue := temp;
{$ENDIF}
    end
    else
      CalcValue := 0;
  end;

begin
  //Connaitre le port COM utilisé
  NumCOM := Return_PortCOM;
  try
    Open_Cod_Eng(NumCOM,ok); // Ouvrir le port COM
    try
      if (ok) and (deviceready(0) = 1) and (deviceready(1) = 1) then
      begin
        Button_Ecrire.Enabled  := false;
        Button_Lire.Enabled    := false;
        Button_Sauver.Enabled  := false;
        Button_Charger.Enabled := false;
        Button1.Enabled        := false;
        Button2.Enabled        := false;

        CleanCOMs;

        While deviceready(0) <> 1 do ;

        anum    := CalcValue(AnsiString(Edit_V_Guidage_AD.text));
{$IFDEF MCMT32}
        astring := 'l' + AnsiChar(VM_Guidage) + AnsiChar(HH(anum)) + AnsiChar(LH(anum))
            + AnsiChar(HL(anum))+ AnsiChar(LL(anum));
{$ELSE}
        astring := 'L' + AnsiChar(0) + AnsiChar(anum) + AnsiChar(anum shr 8) + AnsiChar(0);
        sendcommand(astring, 0, 0);
        while deviceready(0) <> 1 do ;

        if strtofloat(Edit_V_Guidage_AD.text) > 0 then
          anum := round(10 * frac(625000 / strtofloat(Edit_V_Guidage_AD.text)))
        else
          anum := 0;
        astring := 'L' + AnsiChar(2) + AnsiChar(anum) + AnsiChar(anum shr 8) + AnsiChar(0);
{$ENDIF}
        sendcommand(astring, 0, 0);
        while deviceready(0) <> 1 do ;

        anum := CalcValue(Edit_V_Corr_P_AD.text);
{$IFDEF MCMT32}
        astring := 'l' + AnsiChar(VM_Corec_Plus) + AnsiChar(HH(anum)) + AnsiChar(LH(anum))
            + AnsiChar(HL(anum))+ AnsiChar(LL(anum));
        sendcommand(Hcom,astring, 0, 0);
        while deviceready(Hcom,0) <> 1 do ;

        anum := CalcValue(Edit_V_Corr_M_AD.text);
        astring := 'l' + AnsiChar(VM_Corec_Moins) + AnsiChar(HH(anum)) + AnsiChar(LH(anum))
            + AnsiChar(HL(anum))+ AnsiChar(LL(anum));
        sendcommand(Hcom,astring, 0, 0);
        while deviceready(Hcom,0) <> 1 do ;

        anum := CalcValue(Edit_V_Point_L_AD.text);
        astring := 'l' + AnsiChar(VM_Lent) + AnsiChar(HH(anum)) + AnsiChar(LH(anum))
            + AnsiChar(HL(anum))+ AnsiChar(LL(anum));
        sendcommand(Hcom,astring, 0, 0);
        while deviceready(Hcom,0) <> 1 do ;

        anum := CalcValue(Edit_V_Point_R_AD.text);
        astring := 'l' + AnsiChar(VM_Rapide) + AnsiChar(HH(anum)) + AnsiChar(LH(anum))
            + AnsiChar(HL(anum))+ AnsiChar(LL(anum));
        sendcommand(Hcom,astring, 0, 0);
        while deviceready(Hcom,0) <> 1 do ;

        anum := ComboBox_Accel_AD.ItemIndex;
        if anum = -1 then anum := 0;
        astring := 'L' + AnsiChar(VM_Acce) + AnsiChar(anum) + AnsiChar(0) + AnsiChar(0);
{$ELSE}
        astring := 'L' + AnsiChar(3) + AnsiChar(anum) + AnsiChar(anum shr 8) + AnsiChar(0);
        sendcommand(astring, 0, 0);
        while deviceready(0) <> 1 do ;

        anum := CalcValue(Edit_V_Corr_M_AD.text);
        astring := 'L' + AnsiChar(5) + AnsiChar(anum) + AnsiChar(anum shr 8) + AnsiChar(0);
        sendcommand(astring, 0, 0);
        while deviceready(0) <> 1 do ;

        anum := 8 * CalcValue(Edit_V_Point_L_AD.text);
        astring := 'L' + AnsiChar(7) + AnsiChar(anum) + AnsiChar(anum shr 8) + AnsiChar(0);
        sendcommand(astring, 0, 0);
        while deviceready(0) <> 1 do ;

        anum := 32 * CalcValue(Edit_V_Point_R_AD.text);
        astring := 'L' + AnsiChar(9) + AnsiChar(anum) + AnsiChar(anum shr 8) + AnsiChar(0);
        sendcommand(astring, 0, 0);
        while deviceready(0) <> 1 do ;

        anum := ComboBox_Accel_AD.ItemIndex;
        if anum = -1 then anum := 0;
        astring := 'L' + AnsiChar(11) + AnsiChar(anum) + AnsiChar(0) + AnsiChar(0);
{$ENDIF}
        sendcommand(astring, 0, 0);
        while deviceready(0) <> 1 do ;

        if CheckBox_DIR_AD.Checked = true then
          anum := 1
        else
          anum := 0;
{$IFDEF MCMT32}
        astring := 'L' + AnsiChar(Dir_Guidage) + AnsiChar(anum) + AnsiChar(0) + AnsiChar(0);
        sendcommand(Hcom,astring, 0, 0);
        while deviceready(Hcom,0) <> 1 do ;

        astring := 'L' + AnsiChar(Courant_Guidage) + AnsiChar((SpinEdit_A_Guidage_AD.value div 25) - 1) + AnsiChar(0) + AnsiChar(0);
        sendcommand(Hcom,astring, 0, 0);
        while deviceready(Hcom,0) <> 1 do ;

        astring := 'L' + AnsiChar(Courant_Lent) + AnsiChar((SpinEdit_A_Lent_AD.value div 25) - 1) + AnsiChar(0) + AnsiChar(0);
        sendcommand(Hcom,astring, 0, 0);
        while deviceready(Hcom,0) <> 1 do ;

        astring := 'L' + AnsiChar(Courant_Rapide) + AnsiChar((SpinEdit_A_Rapide_AD.value div 25) - 1) + AnsiChar(0) + AnsiChar(0);
        sendcommand(Hcom,astring, 0, 0);
        while deviceready(Hcom,0) <> 1 do ;
{$ELSE}
        astring := 'L' + AnsiChar(12) + AnsiChar(anum) + AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, 0);
        while deviceready(0) <> 1 do ;

        astring := 'L' + AnsiChar(24) + AnsiChar((SpinEdit_A_Guidage_AD.value div 25) - 1) + AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, 0);
        while deviceready(0) <> 1 do ;

        astring := 'L' + AnsiChar(25) + AnsiChar((SpinEdit_A_Lent_AD.value div 25) - 1) + AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, 0);
        while deviceready(0) <> 1 do ;

        astring := 'L' + AnsiChar(26) + AnsiChar((SpinEdit_A_Rapide_AD.value div 25) - 1) + AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, 0);
        while deviceready(0) <> 1 do ;
{$ENDIF}
        try
          number := StrToInt(Edit_Resol_AD.text);
        except
          number := 0;
        end;
        number := number div 25600;
        MSB := (abs(number) shr 8) and $FF;
        LSB := abs(number) and $FF;
{$IFDEF MCMT32}
        astring := 'L' + AnsiChar(37) + AnsiChar(MSB) + AnsiChar(0) + AnsiChar(0);
        sendcommand(Hcom,astring, 0, 0);
        while deviceready(Hcom,0) <> 1 do ;

        astring := 'L' + AnsiChar(38) + AnsiChar(LSB) + AnsiChar(0) + AnsiChar(0);
        sendcommand(Hcom,astring, 0, 0);
        while deviceready(Hcom,0) <> 1 do ;

        anum :=RadioGroup_Raquette.ItemIndex;
        astring := 'L' + AnsiChar(Raq_type_can_address) + AnsiChar(anum) + AnsiChar(0) + AnsiChar(0);
        sendcommand(Hcom,astring, 0, 0);
        while deviceready(Hcom,0) <> 1 do ;

        if CheckBox_PEC.Checked = true then
          anum := 1
        else
          anum := 0;
        astring := 'L' + AnsiChar(PEC_ENABLED) + AnsiChar(anum) + AnsiChar(0) + AnsiChar(0);
        sendcommand(Hcom,astring, 0, 0);
        while deviceready(Hcom,0) <> 1 do ;
{$ELSE}
        astring := 'L' + AnsiChar(28) + AnsiChar(MSB) + AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, 0);
        while deviceready(0) <> 1 do ;

        astring := 'L' + AnsiChar(29) + AnsiChar(LSB) + AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, 0);
        while deviceready(0) <> 1 do ;

        anum :=RadioGroup_Raquette.ItemIndex;
        astring := 'L' + AnsiChar(31) + AnsiChar(anum) + AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, 0);
        while deviceready(0) <> 1 do ;

        if CheckBox_PEC.Checked = true then
          anum := 1
        else
          anum := 0;
        astring := 'L' + AnsiChar(47) + AnsiChar(anum) + AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, 0);
        while deviceready(0) <> 1 do ;
{$ENDIF}
//******************************************************************************
        CleanCOMs;

        while deviceready(1) <> 1 do ;
        anum := CalcValue(Edit_V_Guidage_DEC.text);
{$IFDEF MCMT32}
        astring := 'l' + AnsiChar(VM_Guidage) + AnsiChar(HH(anum)) + AnsiChar(LH(anum))
            + AnsiChar(HL(anum))+ AnsiChar(LL(anum));
{$ELSE}
        astring := 'L' + AnsiChar(0) + AnsiChar(anum) + AnsiChar(anum shr 8) + AnsiChar(0);
{$ENDIF}
        sendcommand(astring, 0, 1);
        while deviceready(1) <> 1 do ;
        anum := CalcValue(Edit_V_Corr_P_DEC.text);
{$IFDEF MCMT32}
        astring := 'l' + AnsiChar(VM_Corec_Plus) + AnsiChar(HH(anum)) + AnsiChar(LH(anum))
            + AnsiChar(HL(anum))+ AnsiChar(LL(anum));
{$ELSE}
        astring := 'L' + AnsiChar(3) + AnsiChar(anum) + AnsiChar(anum shr 8) + AnsiChar(0);
{$ENDIF}
        sendcommand(astring, 0, 1);
        while deviceready(1) <> 1 do ;
        anum := CalcValue(Edit_V_Corr_M_DEC.text);
{$IFDEF MCMT32}
        astring := 'l' + AnsiChar(VM_Corec_Moins) + AnsiChar(HH(anum)) + AnsiChar(LH(anum))
            + AnsiChar(HL(anum))+ AnsiChar(LL(anum));
{$ELSE}
        astring := 'L' + AnsiChar(5) + AnsiChar(anum) + AnsiChar(anum shr 8) + AnsiChar(0);
{$ENDIF}
        sendcommand(astring, 0, 1);
        while deviceready(1) <> 1 do ;
{$IFDEF MCMT32}
        anum := CalcValue(Edit_V_Point_L_DEC.text);
        astring := 'l' + AnsiChar(VM_Lent) + AnsiChar(HH(anum)) + AnsiChar(LH(anum))
            + AnsiChar(HL(anum))+ AnsiChar(LL(anum));
{$ELSE}
        anum := 8 * CalcValue(Edit_V_Point_L_DEC.text);
        astring := 'L' + AnsiChar(7) + AnsiChar(anum) + AnsiChar(anum shr 8) + AnsiChar(0);
{$ENDIF}
        sendcommand(astring, 0, 1);
        while deviceready(1) <> 1 do ;
{$IFDEF MCMT32}
        anum := CalcValue(Edit_V_Point_R_DEC.text);
        astring := 'l' + AnsiChar(VM_Rapide) + AnsiChar(HH(anum)) + AnsiChar(LH(anum))
            + AnsiChar(HL(anum))+ AnsiChar(LL(anum));
{$ELSE}
        anum := 32 * CalcValue(Edit_V_Point_R_DEC.text);
        astring := 'L' + AnsiChar(9) + AnsiChar(anum) + AnsiChar(anum shr 8) + AnsiChar(0);
{$ENDIF}
        sendcommand(astring, 0, 1);
        while deviceready(1) <> 1 do ;
        anum := ComboBox_Accel_DEC.ItemIndex;
        if anum = -1 then anum := 0;
{$IFDEF MCMT32}
        astring := 'L' + AnsiChar(VM_Acce) + AnsiChar(anum) + AnsiChar(0) + AnsiChar(0);
{$ELSE}
        astring := 'L' + AnsiChar(11) + AnsiChar(anum) + AnsiChar(0) + AnsiChar(0);
{$ENDIF}
        sendcommand(astring, 0, 1);
        while deviceready(1) <> 1 do ;
        if CheckBox_DIR_DEC.Checked = true then
          anum := 1
        else
          anum := 0;
{$IFDEF MCMT32}
        astring := 'L' + AnsiChar(Dir_Guidage) + AnsiChar(anum) + AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, 1);
        while deviceready(1) <> 1 do ;

        astring := 'L' + AnsiChar(Courant_Guidage) + AnsiChar((SpinEdit_A_Guidage_DEC.value div 25) - 1) + AnsiChar(0) + AnsiChar(0);
        sendcommand(Hcom,astring, 0, 1);
        while deviceready(Hcom,1) <> 1 do ;

        astring := 'L' + AnsiChar(Courant_Lent) + AnsiChar((SpinEdit_A_Lent_DEC.value div 25) - 1) + AnsiChar(0) + AnsiChar(0);
        sendcommand(Hcom,astring, 0, 1);
        while deviceready(Hcom,1) <> 1 do ;

        astring := 'L' + AnsiChar(Courant_Rapide) + AnsiChar((SpinEdit_A_Rapide_DEC.value div 25) - 1) + AnsiChar(0) + AnsiChar(0);
        sendcommand(Hcom,astring, 0, 1);
        while deviceready(Hcom,1) <> 1 do ;
{$ELSE}
        astring := 'L' + AnsiChar(12) + AnsiChar(anum) + AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, 1);
        while deviceready(1) <> 1 do ;
        astring := 'L' + AnsiChar(24) + AnsiChar((SpinEdit_A_Guidage_DEC.value div 25) - 1) + AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, 1);
        while deviceready(1) <> 1 do ;
        astring := 'L' + AnsiChar(25) + AnsiChar((SpinEdit_A_Lent_DEC.value div 25) - 1) + AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, 1);
        while deviceready(1) <> 1 do ;
        astring := 'L' + AnsiChar(26) + AnsiChar((SpinEdit_A_Rapide_DEC.value div 25) - 1) + AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, 1);
        while deviceready(1) <> 1 do ;
{$ENDIF	}
        try
          number := StrToInt(Edit_Resol_DEC.text);
        except
          number := 0;
        end;
        number := number div 25600;
        MSB := (abs(number) shr 8) and $FF;
        LSB := abs(number) and $FF;
{$IFDEF MCMT32}
        astring := 'L' + AnsiChar(37) + AnsiChar(MSB) + AnsiChar(0) + AnsiChar(0);
        sendcommand(Hcom,astring, 0, 1);
        while deviceready(Hcom,1) <> 1 do ;

        astring := 'L' + AnsiChar(38) + AnsiChar(LSB) + AnsiChar(0) + AnsiChar(0);
        sendcommand(Hcom,astring, 0, 1);
        while deviceready(Hcom,1) <> 1 do ;

        anum :=RadioGroup_Raquette.ItemIndex;
        astring := 'L' + AnsiChar(Raq_type_can_address) + AnsiChar(anum) + AnsiChar(0) + AnsiChar(0);
        sendcommand(Hcom,astring, 0, 1);
        while deviceready(Hcom,1) <> 1 do ;
{$ELSE}
        astring := 'L' + AnsiChar(28) + AnsiChar(MSB) + AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, 1);
        while deviceready(1) <> 1 do ;
        astring := 'L' + AnsiChar(29) + AnsiChar(LSB) + AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, 1);
        while deviceready(1) <> 1 do ;

        anum:= RadioGroup_Raquette.ItemIndex;
        astring := 'L' + AnsiChar(31) + AnsiChar(anum) + AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, 1);
{$ENDIF}
      end
      else
        ShowMessage('Erreur deviceready de MCMT ' + ' ' + inttostr(NumCOM) + '!');

//******************************************************************************

         // Il n'y a pas de réponse donc ce n'est pas la peine de lire le Buffer !
      Button_Ecrire.Enabled := true;
      Button_Lire.Enabled := true;
      Button_Sauver.Enabled := true;
      Button_Charger.Enabled := true;
      Button1.Enabled := true;
      Button2.Enabled := true;

    finally
     CloseCom;
    end;
  finally
  end;
end;

procedure TSetupTelescope.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
end;

procedure TSetupTelescope.ButtonVersionClick(Sender: TObject);
var
  astring,
  receivestring: ShortString;
  device   : integer;
  ok       : Boolean;
  Hcom     : Thandle;
  NumCOM   : Byte   ;

begin
  AfficheNomFichier.Caption := 'Requete en cours....';
  AfficheNomFichier.Refresh;
  device := RadioGroupAxe.ItemIndex;

  //Connaitre le port COM utilisé
  NumCOM := Return_PortCOM;
  try
    Open_Cod_Eng(NumCOM,ok); // Ouvrir le port COM
    try
      if ok then
      begin
        CleanCOMs;

        if deviceready(device) = 1 then
        begin
          astring := 'V' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
          receivestring := sendcommand(astring, 80, device);
          if receivestring <> '' then
            AfficheNomFichier.Caption := receivestring
          else
            AfficheNomFichier.Caption := 'Version introuvable';
        end
        else
          ShowMessage('Erreur deviceready du device ' + inttostr(device) + ' ' + inttostr(NumCOM) + '!');
      end;
         // Il n'y a pas de réponse donc ce n'est pas la peine de lire le Buffer !

    finally
      CloseCom;
    end;
  finally
  end;
end;



procedure TSetupTelescope.ButtonOurvrirClick(Sender: TObject);
var
  DeviceIni: TIniFile;
begin
  DeviceIni := TIniFile.Create('mcmtii.ini');
  with DeviceIni do
  begin
    OpenDialog1.FileName := ReadString('Configuration', 'FirmwareFile', '');
  end;
  DeviceIni.free;

  if OpenDialog1.Execute then { Display Open dialog box }
  begin
    AfficheNomFichier.caption := OpenDialog1.FileName; { File selected in dialog box }
    ButtonProgrammer.enabled := true;
  end;
end;

procedure TSetupTelescope.ButtonProgrammerClick(Sender: TObject);
var
  NbOfBytesWrite, NbOfBytesRead: LongWord;
  RecBuff: array[0..79] of byte;
  SendBuff: array[0..79] of byte;
  fic_prog: textfile;
  astring, receivestring: shortstring;
  device: integer;
  OkProg, autostart: Boolean;
  Data: Ansistring;
  ComOK, EndOfRecord: boolean;
  NumberOfLines, LineNumber: integer;
  ok:Boolean;
  Hcom :Thandle;
  NumCOM  : Byte;
  MAJ     : Boolean;

begin
  InfoProgramme.caption     := '';
  ButtonProgrammer.Enabled  := false;
  ButtonOurvrir.Enabled     := false;
  ButtonVersion.Enabled     := false;
  Button1.Enabled           := false;
  Button2.Enabled           := false;
  Button_Lire.Enabled       := false;
  Button_Ecrire.Enabled     := false;
  Button_Sauver.Enabled     := false;
  Button_Charger.Enabled    := false;
  OkProg                    := true;

  ProgramCancel         := false;
  ButtonCancel.enabled  := true ;

  ProgressBarProgrammer.position := 0;
  assignfile(fic_prog, OpenDialog1.FileName);
  device:=0;


  if OkProg then
  begin
    MAJ := true;

    //Connaitre le port COM utilisé
    NumCOM := Return_PortCOM;

    try
      Open_Cod_Eng(NumCOM,ok); // Ouvrir le port COM
      try
        if ok then
        begin

          CleanCOMs;
          device := RadioGroupAxe.ItemIndex;

          if not CheckBoxProgAuto.checked then
          begin
            ShowMessage('Mettez le module sous tension!');
          end
          else
          begin
            CleanCOMs;

            if deviceready(device) = 1 then
            begin
              astring := 'M' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
              receivestring := sendcommand(astring, 0, device);
            end;
          end;

          AutoStart := false;
          RecBuff[0] := 0;
          while (not AutoStart) and (not ProgramCancel) do
          begin
                  //Application.ProcessMessages;
            SendBuff[0] := IDENT + device;
            WriteFile(hCom, SendBuff, 1, NbOfBytesWrite, nil);
            ReadFile(hCom, RecBuff, 1, NbOfBytesRead, nil); //receive IDACK
            if (NbOfBytesRead = 1) and (RecBuff[0] = IDACK) then
              AutoStart := true;
          end;

          ComOK := false;
          if AutoStart and (not ProgramCancel) then
          begin
            ComOK := true;
            InfoProgramme.caption := 'Programmation en cours...';
          end;

          if ComOK then
          begin
            NumberOfLines := 0;
            Reset(fic_prog);

            while not EOF(fic_prog) do
            begin
              Readln(fic_prog, Data); //Number of lines
              NumberOfLines := NumberOfLines + 1;
            end;

            EndOfRecord := false;
            LineNumber := 0;
            Reset(fic_prog);

            while not (EOF(fic_prog)) and (ComOK) and (not EndOfRecord) do
            begin
              if ProgramCancel then
                ComOK := false;

              Readln(fic_prog, Data); //Read one line
              LineNumber := LineNumber + 1;
              ProgressBarProgrammer.position := (LineNumber * 100) div NumberOfLines;

              if (Length(Data) <> 0) then
              begin
                if (Data[1] = ':') then
                begin
                  if ((Data[8] = '0') and (Data[9] = '0')) then
                  begin // if Data Record then send
                    if not Communication(Hcom,WRITEBOOT, Data) then ComOK := false;
                  end
                  else
                  begin
                    if ((Data[8] = '0') and (Data[9] = '1')) then
                    begin
                      EndOfRecord := true; // End of File Record
                    end;
                  end;
                end
                else
                begin
                  ComOK := false;
                  Application.MessageBox(PChar('Hex file error !' + #10 + #13 + 'Line number ' + IntToStr(LineNumber) + ' does not begin with the colon !'), 'Information', MB_OK);
                end;
              end
              else
              begin
                ComOK := false;
                Application.MessageBox(PChar('Hex file error !' + #10 + #13 + 'Empty line number ' + IntToStr(LineNumber) + ' !'), 'Information', MB_OK);
              end;
            end;

            if ComOK then
            begin
              if Communication(hcom,DONE, Data) then
              begin
                ProgressBarProgrammer.position := 100;
                InfoProgramme.caption := 'Programmation réussie et terminée !';
                Beep();
                Timer1.Enabled := true;
                while Timer1.Enabled do
                begin
                  Application.ProcessMessages;
                end;
              end
              else
              begin
                ComOK := false;
              end;
            end;

            if ProgramCancel then
            begin
              InfoProgramme.caption := 'Programmation interrompue !';
            end
            else
            begin
              if not ComOK then
              begin
                Application.MessageBox('Erreur de transfert !', 'Information', MB_OK);
              end;
            end;
            EscapeCommFunction(hCom, CLRDTR); // trigger pin = 1
            CloseFile(fic_prog);
          end
          else
          begin
            if not ProgramCancel then
            begin
              Application.MessageBox('Timeout of communication, ' + #13 + #10 + 'please check port and ready of PIC for download !', 'Information', MB_OK);
            end
            else
              InfoProgramme.caption := 'Programmation interrompue !';
          end;
        end;

        ButtonCancel.enabled := false;
        ButtonProgrammer.Enabled := true;
        Button1.Enabled := true;
        Button2.Enabled := true;
        ButtonOurvrir.Enabled := true;
        ButtonVersion.Enabled := true;
        Button_Lire.Enabled := true;
        Button_Ecrire.Enabled := true;
        Button_Sauver.Enabled := true;
        Button_Charger.Enabled := true;

         // Il n'y a pas de réponse donc ce n'est pas la peine de lire le Buffer !

      finally
        CloseCom;
      end;
    finally
      MAJ := false;
    end;
  end
  else
    ShowMessage('Impossible de lancer la mise à jour du device ' + inttostr(device) + ' ' + inttostr(NumCOM) + '!');
end;

function TSetupTelescope.Communication(Const Hcom:Thandle;Instr: byte; VysBuff: Ansistring): boolean;
var
  Sended          : dword;
  Received        : dword;
  CheckSum        : byte;
  NumberOfData, N, Pointer: byte;
  RecBuff         : array[0..40] of byte;
  SendBuff        : array[0..40] of byte;
  SendLength      : byte;
  RecLength       : byte;
  Code, I, J      : integer;
  fSuccess        : boolean;
  Address         : word;

begin
  {$R-}

  fSuccess      := True;
  Communication := True;

  SendBuff[0] := Instr;
  SendLength  := 1;
  RecLength   := 1;

  if Instr = WRITEBOOT then
  begin

    Val('$' + VysBuff[4] + VysBuff[5], I, Code);
    Val('$' + VysBuff[6] + VysBuff[7], J, Code);
    Address := ((I * 256) + J) div 2;

    if (Address >= $2000) and (Address < $2100) then
    begin //don't send address from 0x2000 to 0x20FF
      Communication := True;
      exit;
    end;

    SendBuff[1] := Address div 256; //high byte of address
    SendBuff[2] := Address - (SendBuff[1] * 256); //low byte of address
    Val('$' + VysBuff[2] + VysBuff[3], I, Code);
    NumberOfData := I;
    SendBuff[3] := NumberOfData; //number of data
    CheckSum := 0;

    for N := 1 to NumberOfData div 2 do
    begin
      Pointer := (N - 1) * 4;
      Val('$' + VysBuff[12 + Pointer] + VysBuff[13 + Pointer], I, Code);
      SendBuff[5 + ((N - 1) * 2)] := I; //high byte of instruction
      CheckSum := CheckSum + I;
      Val('$' + VysBuff[10 + Pointer] + VysBuff[11 + Pointer], I, Code);
      SendBuff[6 + ((N - 1) * 2)] := I; //low byte of instruction
      CheckSum := CheckSum + I;
    end;

    SendBuff[4] := CheckSum; //checksum
    SendLength := 5 + NumberOfData;
    RecLength := 2; //wait for 2 bytes
  end;

  Application.ProcessMessages;

  CleanCOMs;
  WriteFile(hCom, SendBuff, SendLength, Sended, nil); //send
  ReadFile(hCom, RecBuff, RecLength, Received, nil); //receive

  if (Received > 0) then
    case Instr of
      IDENT: if RecBuff[0] = IDACK then Communication := True
        else Communication := False;
      WRITEBOOT: if ((RecBuff[0] = DATA_OK) and (RecBuff[1] = WOK)) then Communication := True
        else Communication := False;
      DONE: if RecBuff[0] = WOK then Communication := True
        else Communication := False;
    end
  else fSuccess := False;

  CleanCOMs;
  if (not fSuccess) then
  begin
    Application.MessageBox('Timeout of communication !', 'Information', MB_OK);
    Communication := false;
  end;
  {$R+}
end;

procedure TSetupTelescope.ButtonApplyLatLongClick(Sender: TObject);
begin
  FLatitude:=StrToFloat(NbreEditLatSec100.Text)/100;
  FLatitude:=(FLatitude+StrToFloat(NbreEditLatSec.Text))/60;
  FLatitude:=(FLatitude+StrToFloat(NbreEditLatMin.Text))/60;
  FLatitude:=(FLatitude+StrToFloat(NbreEditLatDeg.Text))/180*pi;
  if CheckBoxSouth.Checked then FLatitude:=-FLatitude;
  RadioGroupEtatTelescopeClick(Self);
end;

procedure TSetupTelescope.ButtonCancelClick(Sender: TObject);
begin
  ProgramCancel := true;
end;

procedure TSetupTelescope.Button_SauverClick(Sender: TObject);
var
  DeviceIni: TIniFile;
  NumCom   : Byte;

begin
  if SaveDialog1.Execute then { Display Save dialog box }
  begin
    DeviceIni := TIniFile.Create(SaveDialog1.FileName);
    with DeviceIni do
    begin
      NumCom := Return_PortCOM;

      WriteInteger('Configuration','Port',        NumCOM);
      WriteBool   ('Parameters',   'DIR_AD',      CheckBox_DIR_AD.Checked);
      WriteBool   ('Parameters',   'DIR_DEC',     CheckBox_DIR_DEC.checked);
      WriteBool   ('Parameters',   'PEC_AD',      CheckBox_PEC.checked);
      WriteBool   ('Parameters',   'Raq_Can'    , (RadioGroup_Raquette.ItemIndex=1));
      WriteInteger('Parameters',   'Resol_AD',    strtoint(Edit_Resol_AD.text));
      WriteInteger('Parameters',   'Resol_DEC',   strtoint(Edit_Resol_DEC.text));
      WriteString ('Parameters',   'ReducAlpha',  EditResolAlpha.text);
      WriteString ('Parameters',   'ReducDelta',  EditResolDelta.text);
      WriteString ('Parameters',   'V_Guidage_AD',Edit_V_Guidage_AD.text);
      WriteString ('Parameters',   'V_Guidage_DEC',Edit_V_Guidage_DEC.text);
      WriteString ('Parameters',   'V_Corr_P_AD', Edit_V_Corr_P_AD.text);
      WriteString ('Parameters',   'V_Corr_P_DEC',Edit_V_Corr_P_DEC.text);
      WriteString ('Parameters',   'V_Corr_M_AD', Edit_V_Corr_M_AD.text);
      WriteString ('Parameters',   'V_Corr_M_DEC',Edit_V_Corr_M_DEC.text);
      WriteString ('Parameters',   'V_Point_L_AD',Edit_V_Point_L_AD.text);
      WriteString ('Parameters',   'V_Point_L_DEC', Edit_V_Point_L_DEC.text);
      WriteString ('Parameters',   'V_Point_R_AD',  Edit_V_Point_R_AD.text);
      WriteString ('Parameters',   'V_Point_R_DEC', Edit_V_Point_R_DEC.text);
      WriteString ('Parameters',   'Accel_AD',      inttostr(ComboBox_Accel_AD.ItemIndex));
      WriteString ('Parameters',   'Accel_DEC',     inttostr(ComboBox_Accel_DEC.ItemIndex));
      WriteInteger('Parameters',   'A_Guidage_AD',  SpinEdit_A_Guidage_AD.value);
      WriteInteger('Parameters',   'A_Guidage_DEC', SpinEdit_A_Guidage_DEC.value);
      WriteInteger('Parameters',   'A_Lent_AD',   SpinEdit_A_Lent_AD.value);
      WriteInteger('Parameters',   'A_Lent_DEC',  SpinEdit_A_Lent_DEC.value);
      WriteInteger('Parameters',   'A_Rapide_AD', SpinEdit_A_Rapide_AD.value);
      WriteInteger('Parameters',   'A_Rapide_DEC',SpinEdit_A_Rapide_DEC.value);
    end;
    DeviceIni.free;
  end;
end;

procedure TSetupTelescope.Button_ChargerClick(Sender: TObject);
var
  DeviceIni: TIniFile;
  NumCom   : Byte;

begin
  if OpenDialog2.Execute then { Display Open dialog box }
  begin
    DeviceIni := TIniFile.Create(OpenDialog2.FileName);
    with DeviceIni do
    begin
      NumCOM                    := ReadInteger('Configuration', 'Port', 1);
      CheckBox_DIR_AD.Checked   := ReadBool('Parameters', 'DIR_AD', False);
      CheckBox_DIR_DEC.checked  := ReadBool('Parameters', 'DIR_DEC', False);
      CheckBox_PEC.checked      := ReadBool('Parameters', 'PEC_AD', False);
      if ReadBool('Parameters', 'Raq_Can', False)  then RadioGroup_Raquette.ItemIndex:=1                                  //JLH
                                                   else RadioGroup_Raquette.ItemIndex:=0;
      Edit_Resol_AD.text        := inttostr(ReadInteger('Parameters', 'Resol_AD', 4608000));
      Edit_Resol_DEC.text       := inttostr(ReadInteger('Parameters', 'Resol_DEC', 4608000));
      EditResolAlpha.text       := ReadString('Parameters', 'ReducAlpha', '360');
      EditResolDelta.text       := ReadString('Parameters', 'ReducDelta', '360');
      Edit_V_Guidage_AD.text    := ReadString('Parameters', 'V_Guidage_AD', '1');
      Edit_V_Guidage_DEC.text   := ReadString('Parameters', 'V_Guidage_DEC', '1');
      Edit_V_Corr_P_AD.text     := ReadString('Parameters', 'V_Corr_P_AD', '1');
      Edit_V_Corr_P_DEC.text    := ReadString('Parameters', 'V_Corr_P_DEC', '1');
      Edit_V_Corr_M_AD.text     := ReadString('Parameters', 'V_Corr_M_AD', '1');
      Edit_V_Corr_M_DEC.text    := ReadString('Parameters', 'V_Corr_M_DEC', '1');
      Edit_V_Point_L_AD.text    := ReadString('Parameters', 'V_Point_L_AD', '1');
      Edit_V_Point_L_DEC.text   := ReadString('Parameters', 'V_Point_L_DEC', '1');
      Edit_V_Point_R_AD.text    := ReadString('Parameters', 'V_Point_R_AD', '1');
      Edit_V_Point_R_DEC.text   := ReadString('Parameters', 'V_Point_R_DEC', '1');
      ComboBox_Accel_AD.ItemIndex := strtoint(ReadString('Parameters', 'Accel_AD', '0'));
      ComboBox_Accel_DEC.ItemIndex := strtoint(ReadString('Parameters', 'Accel_DEC', '0'));
      SpinEdit_A_Guidage_AD.value := ReadInteger('Parameters', 'A_Guidage_AD', 25);
      SpinEdit_A_Guidage_DEC.value := ReadInteger('Parameters', 'A_Guidage_DEC', 25);
      SpinEdit_A_Lent_AD.value := ReadInteger('Parameters', 'A_Lent_AD', 25);
      SpinEdit_A_Lent_DEC.value := ReadInteger('Parameters', 'A_Lent_DEC', 25);
      SpinEdit_A_Rapide_AD.value := ReadInteger('Parameters', 'A_Rapide_AD', 25);
      SpinEdit_A_Rapide_DEC.value := ReadInteger('Parameters', 'A_Rapide_DEC', 25);
    end;
    DeviceIni.free;
  end;
end;

procedure TSetupTelescope.ButtonEvaluerClick(Sender: TObject);
var
  codeura, codeurd: longint;
  vita, vitd: double;
begin
  ButtonUtiliser.enabled := true;
  codeura := strtoint(EditResolAlpha.text) * 25600;
  codeuralpha := codeura;
  codeurd := strtoint(EditResolDelta.text) * 25600;
  codeurdelta := codeurd;
  LabelResolAlpha.caption := 'Résolution codeur = ' + inttostr(codeura) + ' µPas/tour ' + Format('%1.2f "/µpas',[360*3600/codeura]);
  LabelResolDelta.caption := 'Résolution codeur = ' + inttostr(codeurd) + ' µPas/tour ' + Format('%1.2f "/µpas',[360*3600/codeurd]);
  vita := codeura / 86164.101;
  vit_a_guide := vita;
  vitd := codeurd / 86164.101;
  vit_d_guide := 0;
  vit_a_cor_p := 1.25 * vita;
  vit_a_cor_m := 0.8 * vita;
  vit_d_cor_p := 0.37 * vitd;
  vit_d_cor_m := 0.37 * vitd;
  vit_a_rap := codeura / 180;
  vit_d_rap := codeurd / 180;
  vit_a_lent := codeura / 3600;
  vit_d_lent := codeurd / 3600;
  LabelVitSid.caption               := 'Vit. Sidérale = ' + floattostrf(vit_a_guide, ffFixed, 6, 6) + ' uPas/sec =>' + floattostrf(vit_a_guide * 1296000 / codeura, ffFixed, 6, 1) + ' sec d''arc/sec';
  Label2VitCorrAlpha.caption        := 'Vit. Correction = ' + floattostrf(vit_a_cor_p, ffFixed, 6, 3) + ' uPas/sec=>' + floattostrf(vit_a_cor_p * 1296000 / codeura, ffFixed, 6, 1) + ' sec d''arc/sec';
  LabelVitPointLentAlpha.caption    := 'Vit. Pointage Lente  = ' + floattostrf(codeura / 3600, ffFixed, 6, 1) + ' uPas/sec => 0,1°/sec';
  LabelVitPointRapideAlpha.caption  := 'Vit. Pointage Rapide  = ' + floattostrf(codeura / 180, ffFixed, 6, 1) + ' uPas/sec => 2°/sec';
  LabelVitGuidage.caption           := 'Vit. Guidage = 0 uPas/sec => 0 sec d''arc/sec';
  Label2VitCorrDelta.caption        := 'Vit. Correction = ' + floattostrf(vit_d_cor_p, ffFixed, 6, 3) + ' uPas/sec =>' + floattostrf(vit_d_cor_p * 1296000 / codeura, ffFixed, 6, 1) + ' sec d''arc/sec';
  LabelVitPointLentDelta.caption    := 'Vit. Pointage Lente  = ' + floattostrf(codeurd / 3600, ffFixed, 6, 1) + ' uPas/sec => 0,1°/sec';
  LabelVitPointRapideDelta.caption  := 'Vit. Pointage Rapide  = ' + floattostrf(codeurd / 180, ffFixed, 6, 1) + ' uPas/sec => 2°/sec';
end;


procedure TSetupTelescope.ButtonActuelClick(Sender: TObject);
var
  codeura, codeurd: longint;
begin
  ButtonUtiliser.enabled := false;
  codeura := strtoint(Edit_Resol_AD.text);
  codeurd := strtoint(Edit_Resol_DEC.text);
  LabelResolAlpha.caption    := 'Résolution codeur = ' + inttostr(codeura) + ' uPas/tour '+ Format('%1.2f "/µpas',[360*3600/codeura]);
  LabelResolDelta.caption    := 'Résolution codeur = ' + inttostr(codeurd) + ' uPas/tour '+ Format('%1.2f "/µpas',[360*3600/codeurd]);
  LabelVitSid.caption        := 'Vit. Sidérale = '   + floattostrf(strtofloat(Edit_V_Guidage_AD.text), ffFixed, 6, 6) + ' uPas/sec =>' + floattostrf(strtofloat(Edit_V_Guidage_AD.text) * 1296000 / codeura, ffFixed, 6, 1) + ' sec d''arc/sec';
  Label2VitCorrAlpha.caption := 'Vit. Correction = ' + floattostrf(strtofloat(Edit_V_Corr_P_AD.text), ffFixed, 6, 3) + ' uPas/sec =>' + floattostrf(strtofloat(Edit_V_Corr_P_AD.text) * 1296000 / codeura, ffFixed, 6, 1) + ' sec d''arc/sec';
  LabelVitPointLentAlpha.caption   := 'Vit. Pointage Lente  = '  + floattostrf(strtofloat(Edit_V_Point_L_AD.text), ffFixed, 6, 1) + ' uPas/sec => ' + floattostrf(strtofloat(Edit_V_Point_L_AD.text) * 360 / codeura, ffFixed, 6, 1) + '°/sec';
  LabelVitPointRapideAlpha.caption := 'Vit. Pointage Rapide  = ' + floattostrf(strtofloat(Edit_V_Point_R_AD.text), ffFixed, 6, 1) + ' uPas/sec => ' + floattostrf(strtofloat(Edit_V_Point_R_AD.text) * 360 / codeura, ffFixed, 6, 1) + '°/sec';
  LabelVitGuidage.caption          := 'Vit. Guidage = '    + floattostrf(strtofloat(Edit_V_Guidage_DEC.text), ffFixed, 6, 6) + ' uPas/sec =>' + floattostrf(strtofloat(Edit_V_Guidage_DEC.text) * 1296000 / codeura, ffFixed, 6, 1) + ' sec d''arc/sec';
  Label2VitCorrDelta.caption       := 'Vit. Correction = ' + floattostrf(strtofloat(Edit_V_Corr_P_DEC.text), ffFixed, 6, 3) + ' uPas/sec =>' + floattostrf(strtofloat(Edit_V_Corr_P_DEC.text) * 1296000 / codeura, ffFixed, 6, 1) + ' sec d''arc/sec';
  LabelVitPointLentDelta.caption   := 'Vit. Pointage Lente  = '  + floattostrf(strtofloat(Edit_V_Point_L_DEC.text), ffFixed, 6, 1) + ' uPas/sec => ' + floattostrf(strtofloat(Edit_V_Point_L_DEC.text) * 360 / codeurd, ffFixed, 6, 1) + '°/sec';
  LabelVitPointRapideDelta.caption := 'Vit. Pointage Rapide  = ' + floattostrf(strtofloat(Edit_V_Point_R_DEC.text), ffFixed, 6, 1) + ' uPas/sec => ' + floattostrf(strtofloat(Edit_V_Point_R_DEC.text) * 360 / codeurd, ffFixed, 6, 1) + '°/sec';
end;

procedure TSetupTelescope.ButtonUtiliserClick(Sender: TObject);
begin
  Edit_Resol_AD.text   := inttostr(codeuralpha);
  Edit_Resol_DEC.text  := inttostr(codeurdelta);
  Edit_V_Guidage_AD.text  := Format('%1.3f',[vit_a_guide]);
  Edit_V_Guidage_DEC.text := Format('%1.2f',[vit_d_guide]);
  Edit_V_Corr_P_AD.text   := Format('%1.2f',[vit_a_cor_p]);
  Edit_V_Corr_P_DEC.text  := Format('%1.2f',[vit_d_cor_p]);
  Edit_V_Corr_M_AD.text   := Format('%1.2f',[vit_a_cor_m]);
  Edit_V_Corr_M_DEC.text  := Format('%1.2f',[vit_d_cor_m]);
  Edit_V_Point_L_AD.text  := Format('%1.2f',[vit_a_lent ]);
  Edit_V_Point_L_DEC.text := Format('%1.2f',[vit_d_lent ]);
  Edit_V_Point_R_AD.text  := Format('%1.2f',[vit_a_rap  ]);
  Edit_V_Point_R_DEC.text := Format('%1.2f',[vit_d_rap  ]);
end;

procedure TSetupTelescope.FormCreate(Sender: TObject);
Var ChemLog:String;
begin
 Creating:=True;

 ChemLog:=LocalAppDataPath;
 if ChemLog[Length(ChemLog)]<>'\' then ChemLog:=ChemLog+'\';
 ChemLog:=ChemLog+'MCMTII_log\';
 CheckBoxLogFile.Hint:='Il sera dans ce répertoire : '+ChemLog;
end;

procedure TSetupTelescope.FormShow(Sender: TObject);
begin
 PageControl1.ActivePage:=TabSheet1;
end;

procedure TSetupTelescope.CheckBoxActivatePECMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if CheckBoxActivatePEC.Checked then  // the CheckBox will became unchecked
    begin
      label62.Enabled:=true;
      label63.Enabled:=true;
      label64.Enabled:=true;
      label65.Enabled:=true;
      label66.Enabled:=true;
      label67.Enabled:=true;
      label68.Enabled:=true;

      NbreEditAmplitude_PEC_0.Enabled:=true;
      NbreEditAmplitude_PEC_1.Enabled:=true;
      NbreEditAmplitude_PEC_2.Enabled:=true;
      NbreEditAmplitude_PEC_3.Enabled:=true;
      NbreEditPeriode_PEC_0.Enabled:=true;
      NbreEditPeriode_PEC_1.Enabled:=true;
      NbreEditPeriode_PEC_2.Enabled:=true;
      NbreEditPeriode_PEC_3.Enabled:=true;
      NbreEditPhase_PEC_0.Enabled:=true;
      NbreEditPhase_PEC_1.Enabled:=true;
      NbreEditPhase_PEC_2.Enabled:=true;
      NbreEditPhase_PEC_3.Enabled:=true;
    end
  else
    begin
      label62.Enabled:=false;
      label63.Enabled:=false;
      label64.Enabled:=false;
      label65.Enabled:=false;
      label66.Enabled:=false;
      label67.Enabled:=false;
      label68.Enabled:=false;

      NbreEditAmplitude_PEC_0.Enabled:=false;
      NbreEditAmplitude_PEC_1.Enabled:=false;
      NbreEditAmplitude_PEC_2.Enabled:=false;
      NbreEditAmplitude_PEC_3.Enabled:=false;
      NbreEditPeriode_PEC_0.Enabled:=false;
      NbreEditPeriode_PEC_1.Enabled:=false;
      NbreEditPeriode_PEC_2.Enabled:=false;
      NbreEditPeriode_PEC_3.Enabled:=false;
      NbreEditPhase_PEC_0.Enabled:=false;
      NbreEditPhase_PEC_1.Enabled:=false;
      NbreEditPhase_PEC_2.Enabled:=false;
      NbreEditPhase_PEC_3.Enabled:=false;
    end;

end;


procedure TSetupTelescope.CheckBoxAutoCOMClick(Sender: TObject);
begin
  NbreEditPortSerieForced.Visible:=Not CheckBoxAutoCOM.Checked;
  ComboBoxNumCOM         .Visible:=    CheckBoxAutoCOM.Checked;
end;

procedure TSetupTelescope.CheckBoxLogFileClick(Sender: TObject);
begin
 if CheckBoxLogFile.Checked and not creating then
 begin
  if (MessageDlg(R_LogWarning,mtConfirmation,mbOkCancel,0)=MrCancel) then
  Begin
    CheckBoxLogFile.Checked:=False;
  end;
 end;
end;



procedure TSetupTelescope.RadioGroupEtatTelescopeClick(Sender: TObject);
begin

 if (Flatitude>0) then
 begin
   Image_Pied.Visible := true;
   Image_Pied_HemisphereSud.Visible := false ;
 end
 else
 begin
   Image_Pied.Visible := false;
   Image_Pied_HemisphereSud.Visible := true ;
 end;

 If (RadioGroupEtatTelescope.ItemIndex=0) then
 begin
    If (Flatitude>0) then
    begin
      Image_Zenith_Ouest.Visible := false;
      Image_Zenith_Est.Visible := true;
    end
    else
    begin
      Image_Zenith_Ouest.Visible := true;
      Image_Zenith_Est.Visible := false;
    end;
 end
 else
 begin
    If (Flatitude>0) then
    begin
     Image_Zenith_Ouest.Visible := true;
     Image_Zenith_Est.Visible := false;
    end
    else
    begin
     Image_Zenith_Ouest.Visible := false;
     Image_Zenith_Est.Visible := true;
    end;
 end;
end;



procedure TSetupTelescope.RadioGroupTypeMontureClick(Sender: TObject);
begin
if RadioGroupTypeMonture.ItemIndex=0
  then
    begin
    GroupBoxMontureAllemande.Visible := false;
    GroupBoxMontureFourche.Visible := true;
    end
  else
    begin
    GroupBoxMontureFourche.Visible := false;
    GroupBoxMontureAllemande.Visible := true;
    end;
end;



procedure TSetupTelescope.RadioGroupAlgorithmePointageClick(Sender: TObject);
begin
if RadioGroupAlgorithmePointage.ItemIndex=0
  then
    begin
    Image_Meridien.Visible := false;
    Image_Antimeridien.Visible := true;
    end
  else
    begin
    Image_Antimeridien.Visible := false;
    Image_Meridien.Visible := true;
    end;
end;



procedure TSetupTelescope.CheckBoxActivateBacklashClick(Sender: TObject);
begin
if CheckBoxActivateBacklash.Checked
  then GroupBox_Parametres_Correction_Jeux.Visible:=true
  else GroupBox_Parametres_Correction_Jeux.Visible:=false
end;



  procedure TSetupTelescope.CheckBox_Retournement_AutoriseClick(Sender: TObject);
begin
if CheckBox_Retournement_autorise.Checked
  then GroupBox_Declinaisons_critiques.Visible:=true
  else GroupBox_Declinaisons_critiques.Visible:=false
end;

end.

