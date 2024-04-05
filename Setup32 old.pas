unit Setup32;
{ R+ }
/// ///////////////////////////////////////////////////
/// Fiche des paramètres à donner au télescope   //////
/// lors du démarrage                            //////
/// ///////////////////////////////////////////////////

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, COMM, IniFiles, Spin, HiresTim,
  Editnbre, PanelLongLat, NumberEdit, jpeg, VarGlobal,
  ProcessBox_mcmtii;

type
  TSetupTelescope = class(TForm)
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    OpenDialog2: TOpenDialog;
    Timer1: TTimer;
    Pane_Entrees_Sorties: TPanel;
    Panel11: TPanel;
    Button2: TButton;
    GroupBoxCOMSELECT: TGroupBox;
    ComboBoxNumCOM: TComboBox;
    HiResTimer1: THiResTimer;
    Label16: TLabel;
    CheckBoxLogFile: TCheckBox;
    CheckBoxAutoCOM: TCheckBox;
    NbreEditPortSerieForced: NbreEdit;
    PageControl1: TPageControl;
    TabSheet_Parametres: TTabSheet;
    GroupBox_EEPROM: TGroupBox;
    Panel_Lire: TPanel;
    Button_Lire: TButton;
    Panel_Ecrire: TPanel;
    Button_Ecrire: TButton;
    GroupBox_Fichier: TGroupBox;
    Panel_Sauver: TPanel;
    Button_Sauver: TButton;
    Panel_Charger: TPanel;
    Button_Charger: TButton;
    TabSheet_Pointage: TTabSheet;
    TabSheet_Calcul: TTabSheet;
    Panel_Utiliser: TPanel;
    Button_Utiliser: TButton;
    Panel_Actuel: TPanel;
    Button_Actuel: TButton;
    TabSheet_Observatoire: TTabSheet;
    Label27: TLabel;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Altitude: TLabel;
    m: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    NbreEditLongDeg: NbreEdit;
    NbreEditLongMin: NbreEdit;
    NbreEditLongSec: NbreEdit;
    NbreEditLongSec100: NbreEdit;
    CheckBoxEast: TCheckBox;
    NbreEditAltitude: NbreEdit;
    NbreEditLatDeg: NbreEdit;
    NbreEditLatMin: NbreEdit;
    NbreEditLatSec: NbreEdit;
    NbreEditLatSec100: NbreEdit;
    CheckBoxSouth: TCheckBox;
    Button_Appliquer_LatLong: TButton;
    TabSheet_Jeux_mecaniques: TTabSheet;
    GroupBox_Parametres_Correction_Jeux: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    NbreEditBacklash: NbreEdit;
    ComboBoxPauseBacklash: TComboBox;
    RadioGroup_Mode_Correction_Delta: TRadioGroup;
    CheckBoxActivateBacklash: TCheckBox;
    TabSheet_Port_COM: TTabSheet;
    GroupBox11: TGroupBox;
    ImageMOXA: TImage;
    GroupBox12: TGroupBox;
    Label32: TLabel;
    CheckBoxPurgCOMM: TCheckBox;
    GroupBox13: TGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    NumberEditWriteTimeOutms: NbreEdit;
    NumberEditReadTimeoutMs: NbreEdit;
    TabSheet_Aide: TTabSheet;
    TabSheet_King_et_PEC: TTabSheet;
    GroupBox_King: TGroupBox;
    CheckBoxActivateKing: TCheckBox;
    Panel10: TPanel;
    Button1: TButton;
    RadioGroup_Raq_Can: TRadioGroup;
    RadioGroup_Monture: TRadioGroup;
    GroupBox_DEC: TGroupBox;
    Panel_V_Guidage_DEC: TPanel;
    Panel_V_Corr_P_DEC: TPanel;
    Panel_V_Corr_M_DEC: TPanel;
    Panel_V_Point_L_DEC: TPanel;
    Panel_V_Point_R_DEC: TPanel;
    Edit_V_Guidage_DEC: TEdit;
    Edit_V_Corr_P_DEC: TEdit;
    Edit_V_Corr_M_DEC: TEdit;
    Edit_V_Point_L_DEC: TEdit;
    Edit_V_Point_R_DEC: TEdit;
    Panel_Accel_DEC: TPanel;
    ComboBox_Accel_DEC: TComboBox;
    GroupBox_AD: TGroupBox;
    Edit_V_Guidage_AD: TEdit;
    Panel_V_Guidage_AD: TPanel;
    Pane_V_Corr_P_AD: TPanel;
    Edit_V_Corr_P_AD: TEdit;
    Panel_V_Corr_M_AD: TPanel;
    Edit_V_Corr_M_AD: TEdit;
    Pane_V_Point_L_AD: TPanel;
    Edit_V_Point_L_AD: TEdit;
    Panel_V_Point_R_AD: TPanel;
    Edit_V_Point_R_AD: TEdit;
    ComboBox_Accel_AD: TComboBox;
    Panel_Accel_AD: TPanel;
    Panel_DIR_AD: TPanel;
    CheckBox_DIR_AD: TCheckBox;
    GroupBox_aide_fourche_Pointage: TGroupBox;
    Label53: TLabel;
    Label46: TLabel;
    Label48: TLabel;
    Label51: TLabel;
    Label54: TLabel;
    Label58: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    GroupBox_Pointage_Fourche: TGroupBox;
    GroupBox_Algorithme_Pointage_Fourche: TGroupBox;
    GroupBox_Pointage_Rapide_Fourche: TGroupBox;
    Label88: TLabel;
    Image_Meridien_Algorithme_Rapide: TImage;
    Label93: TLabel;
    Label96: TLabel;
    GroupBox_Pointage_Prudent_Fourche: TGroupBox;
    Image_Meridien_Algorithme_Prudent: TImage;
    Label89: TLabel;
    RadioGroup_Algorithme_Pointage_Fourche: TRadioGroup;
    GroupBox_Parametres_Fourche: TGroupBox;
    Label70: TLabel;
    Label71: TLabel;
    SpinEdit_Declinaison_Polaire_Limite_Fourche: TSpinEdit;
    GroupBox_Delai_Decision_Fourche: TGroupBox;
    Label_secondes: TLabel;
    Label_DelaiDecision: TLabel;
    SpinEdit_Delai_Decision_Fourche: TSpinEdit;
    GroupBox_Pointage_Allemande: TGroupBox;
    GroupBox_Etat_Telescope_Allemande: TGroupBox;
    Image_Telescope_NonRetourne_Allemande: TImage;
    Image_Telescope_Retourne_Allemande: TImage;
    Image_Pied_HemisphereSud_Allemande: TImage;
    Image_Pied_Allemande: TImage;
    Label_Tube_Est_Allemande: TLabel;
    Label_Tube_Ouest_Allemande: TLabel;
    RadioGroup_Etat_Telescope_Allemande: TRadioGroup;
    GroupBox_Pointage_FerACheval: TGroupBox;
    Panel_Reduc_AD: TPanel;
    Edit_Reduc_AD: TEdit;
    Panel_Reduc_DEC: TPanel;
    Edit_Reduc_DEC: TEdit;
    GroupBox_Choix_Calcul: TGroupBox;
    Label_choix_AD: TLabel;
    Label_Choix_DEC: TLabel;
    Panel_Guidage_Choix: TPanel;
    Panel_Corr_P_Choix: TPanel;
    Panel_Point_L_Choix: TPanel;
    Panel_Point_R_Choix: TPanel;
    Panel_Corr_N_Choix: TPanel;
    Edit_V_Corr_P_AD_Calc: TEdit;
    Edit_V_Guidage_AD_Calc: TEdit;
    Edit_V_Guidage_DEC_Calc: TEdit;
    Edit_V_Corr_P_DEC_Calc: TEdit;
    Edit_V_Corr_M_AD_Calc: TEdit;
    Edit_V_Corr_M_DEC_Calc: TEdit;
    Edit_V_Point_L_AD_Calc: TEdit;
    Edit_V_Point_R_AD_Calc: TEdit;
    Edit_V_Point_L_DEC_Calc: TEdit;
    Edit_V_Point_R_DEC_Calc: TEdit;
    GroupBox_Resultats_Calcul: TGroupBox;
    Label_Resultats_DEC: TLabel;
    Label_Unites_Resultats: TLabel;
    Label_Unite_Resultats_Guidage: TLabel;
    Label_Unite_Resultats_Corr_P: TLabel;
    Label_Unite_Resultats_Point_L: TLabel;
    Label_Unite_Resultats_Point_R: TLabel;
    Label_Resultats_AD: TLabel;
    Label_Unite_Resultats_Corr_M: TLabel;
    Panel_Guidage_Resultats: TPanel;
    Panel_Corr_P_Resultats: TPanel;
    Panel_Point_L_Resultats: TPanel;
    Panel_Point_R_Resultats: TPanel;
    Panel_Resol_Resultats: TPanel;
    Panel_Corr_M_Resultats: TPanel;
    Edit_Resultats_Guidage_AD: TEdit;
    Edit_Resultats_Corr_P_AD: TEdit;
    Edit_Resultats_Corr_M_AD: TEdit;
    Edit_Resultats_Point_L_AD: TEdit;
    Edit_Resultats_Point_R_AD: TEdit;
    Edit_Resol_AD_Calc: TEdit;
    Edit_Resultats_Guidage_DEC: TEdit;
    Edit_Resultats_Corr_P_DEC: TEdit;
    Edit_Resultats_Corr_M_DEC: TEdit;
    Edit_Resultats_Point_L_DEC: TEdit;
    Edit_Resultats_Point_R_DEC: TEdit;
    Edit_Resol_DEC_Calc: TEdit;
    Label_Message_Calcul: TLabel;
    Label_Unite_Resultats_Resol: TLabel;
    Edit_Reduc_AD_Calc: TEdit;
    Edit_Reduc_DEC_Calc: TEdit;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Edit_Defaut_Guidage_AD: TEdit;
    Edit_Defaut_Guidage_DEC: TEdit;
    Edit_Defaut_Corr_P_AD: TEdit;
    Edit_Defaut_Corr_P_DEC: TEdit;
    Edit_Defaut_Corr_M_AD: TEdit;
    Edit_Defaut_Corr_M_DEC: TEdit;
    Edit_Defaut_Point_L_AD: TEdit;
    Edit_Defaut_Point_L_DEC: TEdit;
    Edit_Defaut_Point_R_AD: TEdit;
    Edit_Defaut_Point_R_DEC: TEdit;
    Panel_Retour_Defaut: TPanel;
    Button_Retour_Defaut: TButton;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label118: TLabel;
    Label117: TLabel;
    Label119: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label113: TLabel;
    Label40: TLabel;
    GroupBox_Parametres_critiques_Allemande: TGroupBox;
    LabelUniteAngleHoraireOuest: TLabel;
    LabelUniteAngleHoraireEst: TLabel;
    LabelAngleHoraireOuest: TLabel;
    LabelAngleHoraireEst: TLabel;
    LabelDeclinaisonOuest: TLabel;
    LabelDeclinaisonEst: TLabel;
    LabelUniteDeclinaisonOuest: TLabel;
    LabelUniteDeclinaisonEst: TLabel;
    SpinEdit_Angle_horaire_critique_Est_Allemande: TSpinEdit;
    SpinEdit_Angle_horaire_critique_Ouest_Allemande: TSpinEdit;
    SpinEdit_Declinaison_critique_Ouest_Allemande: TSpinEdit;
    SpinEdit_Declinaison_critique_Est_Allemande: TSpinEdit;
    GroupBox_Etat_Telescope_FerACheval: TGroupBox;
    Image_Telescope_Retourne_FerACheval: TImage;
    Image_Telescope_NonRetourne_FerACheval: TImage;
    Image_Pied_HemisphereSud_FerACheval: TImage;
    Image_Pied_FerACheval: TImage;
    Label_Telescope_NonRetourne_FerACheval: TLabel;
    Label_Telescope_Retourne_FerACheval: TLabel;
    RadioGroup_Etat_Telescope_FerACheval: TRadioGroup;
    GroupBox_Parametres_Limites_FerACheval: TGroupBox;
    LabelAngleHoraireLimiteEst_unite_FerACheval: TLabel;
    LabelDeclinaisonLimite_unite_FerACheval: TLabel;
    LabelAngleHoraireLimiteEst1_FerACheval: TLabel;
    LabelDeclinaisonLimite_FerACheval: TLabel;
    LabelAngleHoraireLimiteOuest1_FerACheval: TLabel;
    LabelAngleHoraireLimiteOuest_unite_FerACheval: TLabel;
    SpinEdit_DeclinaisonLimite_FerACheval: TSpinEdit;
    SpinEdit_AngleHoraireLimiteOuest_FerACheval: TSpinEdit;
    SpinEdit_AngleHoraireLimiteEst_FerACheval: TSpinEdit;
    GroupBox_Parametres_Pointage_FerACheval: TGroupBox;
    LabelRayon_FerACheval: TLabel;
    LabelRayonUnite_FerACheval: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label124: TLabel;
    Label_Anticipation_FerACheval: TLabel;
    Label121: TLabel;
    Label_Temps_de_Poursuite_Horaire_Minimal_FerACheval: TLabel;
    Label132: TLabel;
    SpinEdit_Rayon_Minimal_FerACheval: TSpinEdit;
    SpinEdit_Delai_Decision_FerACheval: TSpinEdit;
    SpinEdit_Anticipation_Retournement_FerACheval: TSpinEdit;
    CheckBox_Optimiser_Poursuite_FerACheval: TCheckBox;
    GroupBox_Parametres_pointage_Allemande: TGroupBox;
    LabelAngleHoraireUnite: TLabel;
    LabelRayon: TLabel;
    LabelRayonUnite: TLabel;
    Label97: TLabel;
    Label95: TLabel;
    Label120: TLabel;
    Label_Temps_de_Poursuite_Horaire_Minimal_Allemande: TLabel;
    Label122: TLabel;
    SpinEdit_Angle_Horaire_Retournement_Allemande: TSpinEdit;
    SpinEdit_Rayon_Minimal_Allemande: TSpinEdit;
    SpinEdit_Delai_Decision_Allemande: TSpinEdit;
    CheckBox_Optimiser_Poursuite_Allemande: TCheckBox;
    GroupBox_aide_allemande_Parametres: TGroupBox;
    Label31: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label60: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label69: TLabel;
    Label80: TLabel;
    GroupBox_aide_allemande_Pointage: TGroupBox;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label101: TLabel;
    Label107: TLabel;
    Label106: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    GroupBox_aide_fourche_Parametres: TGroupBox;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label_Delai_Decision1: TLabel;
    Label_Delai_Decision2: TLabel;
    Label_Delai_Decision3: TLabel;
    Label91: TLabel;
    Label94: TLabel;
    GroupBox_aide_FerACheval_Parametres: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    Label55: TLabel;
    Label57: TLabel;
    Label72: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label73: TLabel;
    Label77: TLabel;
    GroupBox_aide_FerACheval_Pointage: TGroupBox;
    Label56: TLabel;
    Label59: TLabel;
    Label78: TLabel;
    Label17: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label52: TLabel;
    Label112: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    GroupBox20: TGroupBox;
    Label_Amplitude_PEC: TLabel;
    Label_Periode_PEC: TLabel;
    Label_Phase_PEC: TLabel;
    Label_Titre_PEC_0: TLabel;
    Label_Titre_PEC_1: TLabel;
    Label_Titre_PEC_2: TLabel;
    CheckBoxActivatePEC: TCheckBox;
    NbreEditPhase_PEC_0: NbreEdit;
    NbreEditPhase_PEC_1: NbreEdit;
    NbreEditPhase_PEC_2: NbreEdit;
    NbreEditAmplitude_PEC_0: NbreEdit;
    NbreEditAmplitude_PEC_1: NbreEdit;
    NbreEditAmplitude_PEC_2: NbreEdit;
    GroupBox_Retournement_Allemande: TGroupBox;
    Label_Consigne_Retournement_Allemande: TLabel;
    CheckBox_Retournement_Allemande: TCheckBox;
    GroupBox_Retournement_FerACheval: TGroupBox;
    Label_Consigne_Retournement_FerACheval: TLabel;
    CheckBox_Retournement_FerACheval: TCheckBox;
    Label123: TLabel;
    Label_Message_Reduction_AD: TLabel;
    Label_Message_Reduction_DEC: TLabel;
    Label_Message_Rotation_DEC: TLabel;
    Panel_DIR_DEC: TPanel;
    CheckBox_DIR_DEC: TCheckBox;
    Edit_Resol_AD: TEdit;
    Panel_Resol_AD: TPanel;
    Pane_Resol_DEC: TPanel;
    Edit_Resol_DEC: TEdit;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label68: TLabel;
    Label79: TLabel;
    Label87: TLabel;
    Label90: TLabel;
    Label92: TLabel;
    CheckBoxSimulator: TCheckBox;
    CheckBoxTrace: TCheckBox;
    CheckBoxFreeSpeed: TCheckBox;
    Panel12: TPanel;
    Panel13: TPanel;
    Edit_PasParTour_AD: TEdit;
    Edit_MPasParPas_AD: TEdit;
    Panel14: TPanel;
    Panel15: TPanel;
    Edit_PasParTour_DEC: TEdit;
    Edit_MPasParPas_DEC: TEdit;
    Label100: TLabel;
    Label_Titre_PEC_3: TLabel;
    NbreEditPhase_PEC_3: NbreEdit;
    NbreEditAmplitude_PEC_3: NbreEdit;
    LabelPeriodeFondamentale: TLabel;
    Label103: TLabel;
    SpinEditOrdre_PEC_0: TSpinEdit;
    SpinEditOrdre_PEC_1: TSpinEdit;
    SpinEditOrdre_PEC_2: TSpinEdit;
    SpinEditOrdre_PEC_3: TSpinEdit;
    LabelPeriode_PEC_0: TLabel;
    LabelPeriode_PEC_1: TLabel;
    LabelPeriode_PEC_2: TLabel;
    LabelPeriode_PEC_3: TLabel;
    CheckBoxMCMT2021: TCheckBox;
    procedure Button_LireClick(Sender: TObject);
    procedure Button_EcrireClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    function Communication(Const Hcom: Thandle; Instr: byte;
      VysBuff: Ansistring): boolean;
    procedure Evaluer_Resultats(Sender: TObject);
    procedure Button_ActuelClick(Sender: TObject);
    procedure Button_UtiliserClick(Sender: TObject);
    procedure Button_SauverClick(Sender: TObject);
    procedure Button_ChargerClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup_Etat_Telescope_AllemandeClick(Sender: TObject);
    procedure RadioGroup_Etat_Telescope_FerAChevalClick(Sender: TObject);
    procedure RadioGroup_MontureClick(Sender: TObject);
    procedure RadioGroup_Algorithme_Pointage_FourcheClick(Sender: TObject);
    procedure CheckBoxActivateBacklashClick(Sender: TObject);
    procedure CheckBoxLogFileClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBoxAutoCOMClick(Sender: TObject);
    procedure Button_Appliquer_LatLongClick(Sender: TObject);
    procedure Modification_angle_horaire_critique_Ouest_Allemande
      (Sender: TObject);
    procedure Modification_angle_horaire_critique_Est_Allemande
      (Sender: TObject);
    procedure CheckBoxActivatePECClick(Sender: TObject);
    procedure Modification_angle_horaire_limite_Est_FerACheval(Sender: TObject);
    procedure Modification_angle_horaire_limite_Ouest_FerACheval
      (Sender: TObject);
    procedure Visibilite_Delai_Decision_Fourche(Sender: TObject);
    procedure Button_Retour_DefautClick(Sender: TObject);
    procedure Edit_Reduc_AD_Change(Sender: TObject);
    procedure Edit_Reduc_DEC_Change(Sender: TObject);
    procedure SpinEdit_Angle_Horaire_Retournement_AllemandeChange
      (Sender: TObject);
    procedure CheckBox_Optimiser_Poursuite_AllemandeClick(Sender: TObject);
    procedure CheckBox_Optimiser_Poursuite_FerAChevalClick(Sender: TObject);
    procedure CheckBox_Retournement_AllemandeClick(Sender: TObject);
    procedure CheckBox_Retournement_FerAChevalClick(Sender: TObject);
    procedure SpinEdit_Anticipation_Retournement_FerAChevalChange
      (Sender: TObject);
    procedure OnChange_Edit_V_Guidage_AD(Sender: TObject);
    procedure OnChange_Edit_V_Guidage_AD_Calc(Sender: TObject);
    procedure OnChange_Edit_V_Guidage_DEC(Sender: TObject);
    procedure OnChange_Edit_V_Guidage_DEC_Calc(Sender: TObject);
    procedure CheckBoxFreeSpeedClick(Sender: TObject);
    procedure SpinEditOrdre_PEC_0Change(Sender: TObject);
    procedure SpinEditOrdre_PEC_1Change(Sender: TObject);
    procedure SpinEditOrdre_PEC_2Change(Sender: TObject);
    procedure SpinEditOrdre_PEC_3Change(Sender: TObject);

  Private
    { Private declarations }
    Flatitude: Double;
  public
    { Public declarations }
    creating: boolean;
    Function Return_PortCOM: Integer;
    Constructor create(Aowner: Tcomponent; Latitude: Double); reintroduce;
  end;

var
  ProgramCancel: boolean;

  Resol_AD, Resol_DEC: LongInt;
  Reduc_AD, Reduc_DEC: Double;
  Vitesse_AD, Vitesse_DEC: Double;
  ProcessingBox: TProcessingBox;

const // Protocole de programmation BootLoader
  READ = $E0;
  RACK = $E1;

  WRITEBOOT = $E3;
  WOK = $E4;
  WBAD = $E5;

  DATA_OK = $E7;
  DAT_BAD = $E8;

  IDENT = $F0;
  IDACK = $EB;

  DONE = $ED;

  MicroPas = 25600;
  V_Guidage_Max = 100000; // Sinon il est possible de planter gravement MCMT
  Reduction_Max = 65535; // codage de la partie entière sur deux octets

  NbreDecimalesGuidage = 5;
  NbreDecimalesCorrection = 1;
  NbreDecimalesPoint_L = 0;
  NbreDecimalesPoint_R = 0;
  NbreDecimalesGuidage_sid = 7;
  NbreDecimalesCorrection_sid = 2;
  NbreDecimalesPoint_L_deg = 2;
  NbreDecimalesPoint_R_deg = 1;

implementation

Uses Utils;

{$R *.DFM}

ResourceString
  R_LogWarning = 'Attention, ceci va générer un fichier texte de debugging ' +
    'et peut ralentir le système ! Continuer ?';

Constructor TSetupTelescope.create(Aowner: Tcomponent; Latitude: Double);
begin
  Inherited create(Aowner);
  Flatitude := Latitude;
end;

// *************************************************************************
// *************************************************************************
// Les procédures qui suivent sont spécifiques pour Mcmt32
// *************************************************************************
// *************************************************************************

procedure TSetupTelescope.Button_LireClick(Sender: TObject);
var
  astring, receivestring: ShortString;
  Ok_open: boolean;
  Hcom: Thandle;
  NumCOM: byte;
  ValueLong: LongInt;
  ValueInt: Integer;

begin
  // Connaitre le port COM utilisé
  NumCOM := Return_PortCOM;
  // Vérification des ports COM
  try

    Open_Cod_Eng(NumCOM, Ok_open); // Ouvrir le port COM
    try
      if Ok_open

      then
      begin
        CleanCOMs;

        // Axe ALPHA *******************************************************
        // *****************************************************************

        if (deviceready(C_Alpha) = 1) // C_Alpha = 0
        then
        begin
          astring := 'K' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) +
            AnsiChar(0);
          receivestring := sendcommand( astring, 48, C_Alpha);

          if (receivestring <> '') //

          then
          begin
            Button_Ecrire.Enabled := false;
            Button_Sauver.Enabled := false;
            Button_Charger.Enabled := false;
            Button1.Enabled := false;
            Button2.Enabled := false;

            // V_Guidage_AD en 0, 1, 2, 3
            ValueLong :=
              ((ord(receivestring[V_Guidage_EEprom + 4]) * 256 +
              ord(receivestring[V_Guidage_EEprom + 3])) * 256 +
              ord(receivestring[V_Guidage_EEprom + 2])) * 256 +
              ord(receivestring[V_Guidage_EEprom + 1]);
            if ValueLong <> 0 //
            then
              Edit_V_Guidage_AD.text := FloatToStrF(80000000 / ValueLong,
                ffFixed, 8, NbreDecimalesGuidage)
            else
              Edit_V_Guidage_AD.text := '0';

            // V_Corr_P_AD en 4, 5, 6, 7
            ValueLong :=
              ((ord(receivestring[V_Corr_P_EEprom + 4]) * 256 +
              ord(receivestring[V_Corr_P_EEprom + 3])) * 256 +
              ord(receivestring[V_Corr_P_EEprom + 2])) * 256 +
              ord(receivestring[V_Corr_P_EEprom + 1]);
            If ValueLong <> 0 //
            then
              Edit_V_Corr_P_AD.text := FloatToStrF(80000000 / ValueLong,
                ffFixed, 8, NbreDecimalesCorrection)
            else
              Edit_V_Corr_P_AD.text := '0';

            // V_Corr_M_AD en 8, 9, 10, 11
            ValueLong :=
              ((ord(receivestring[V_Corr_M_EEprom + 4]) * 256 +
              ord(receivestring[V_Corr_M_EEprom + 3])) * 256 +
              ord(receivestring[V_Corr_M_EEprom + 2])) * 256 +
              ord(receivestring[V_Corr_M_EEprom + 1]);
            If ValueLong <> 0 //
            then
              Edit_V_Corr_M_AD.text := FloatToStrF(80000000 / ValueLong,
                ffFixed, 8, NbreDecimalesCorrection)
            else
              Edit_V_Corr_M_AD.text := '0';

            // V_Point_L_AD en 12, 13, 14, 15
            ValueLong :=
              ((ord(receivestring[V_Point_L_EEprom + 4]) * 256 +
              ord(receivestring[V_Point_L_EEprom + 3])) * 256 +
              ord(receivestring[V_Point_L_EEprom + 2])) * 256 +
              ord(receivestring[V_Point_L_EEprom + 1]);
            If ValueLong <> 0 //
            then
              Edit_V_Point_L_AD.text := FloatToStrF(80000000 / ValueLong,
                ffFixed, 8, NbreDecimalesPoint_L)
            else
              Edit_V_Point_L_AD.text := '0';

            // V_Point_R_AD en 16, 17, 18, 19
            ValueLong :=
              ((ord(receivestring[V_Point_R_EEprom + 4]) * 256 +
              ord(receivestring[V_Point_R_EEprom + 3])) * 256 +
              ord(receivestring[V_Point_R_EEprom + 2])) * 256 +
              ord(receivestring[V_Point_R_EEprom + 1]);
            if ValueLong <> 0 //
            then
              Edit_V_Point_R_AD.text := FloatToStrF(80000000 / ValueLong,
                ffFixed, 8, NbreDecimalesPoint_R)
            else
              Edit_V_Point_R_AD.text := '0';

            // Accel_AD en 20
            ComboBox_Accel_AD.ItemIndex := ord(receivestring[Accel_EEprom + 1]);

            // DIR_AD en 21
            if ord(receivestring[Dir_EEprom + 1]) = 1 //
            then
              CheckBox_DIR_AD.Checked := true
            else
              CheckBox_DIR_AD.Checked := false;

            //  MicroPas par pas en 22
            Edit_MPasParPas_AD.Text := IntToStr(ord(receivestring[MicroStep + 1]));

            //  Pas par Tour en 24
            Edit_PasParTour_AD.Text := IntToStr(ord(receivestring[Step + 1]));

            // Si transmission par vis sans fin, Reduc_AD en 37, 38
            // Si transmission par câble, la partie fractionnaire de Reduc_AD,
            // multipliée par 25600, se trouve en 39, 40

            Reduc_AD := ord(receivestring[Reduc_Trunc_EEprom + 1]) * 256 +
              ord(receivestring[Reduc_Trunc_EEprom + 2]);
            ValueInt := ord(receivestring[Reduc_Frac_EEprom + 1]) * 256 +
              ord(receivestring[Reduc_Frac_EEprom + 2]);
            if ValueInt = 0
            then // Le coefficient de réduction est entier ...
            begin
              Edit_Reduc_AD.text := IntToStr(Trunc(Reduc_AD));
              Label_Message_Reduction_AD.Caption :=
                '(Nombre de dents de la roue si entraînement par VIS SANS FIN)'
            end
            else // ou il ne l'est pas
            begin
              Edit_Reduc_AD.text := FloatToStrF(Reduc_AD, ffFixed, 8, 4);
              Label_Message_Reduction_AD.Caption :=
                '(Coefficient a priori non entier si entraînement par CÂBLE)'
            end;

            Resol_AD := Trunc(MicroPas * Reduc_AD);
            Edit_Resol_AD.text := IntToStr(Resol_AD);

            // Type de raquette en 42
            if ord(receivestring[Raq_Can_EEprom + 1]) = 1 //
            then
              RadioGroup_Raq_Can.ItemIndex := 1
            else
              RadioGroup_Raq_Can.ItemIndex := 0;

            Button_Ecrire.Enabled := true;
            Button_Sauver.Enabled := true;
            Button_Charger.Enabled := true;
            Button1.Enabled := true;
            Button2.Enabled := true;
          end
          else
            ShowMessage('Erreur deviceready du device ' + IntToStr(0) + ' ' +
              IntToStr(NumCOM) + '!');
        end;

        CleanCOMs;

        // Axe DELTA *******************************************************
        // *****************************************************************

        If (deviceready(C_Delta) = 1) // C_Delta = 1
        then
        begin
          astring := 'K' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) +
            AnsiChar(0);
          receivestring := sendcommand(astring, 48, C_Delta);

          If (receivestring <> '') //
          then
          begin
            Button_Ecrire.Enabled := false;
            Button_Sauver.Enabled := false;
            Button_Charger.Enabled := false;
            Button1.Enabled := false;
            Button2.Enabled := false;

            // V_Guidage_DEC en 0, 1, 2, 3
            ValueLong :=
              ((ord(receivestring[V_Guidage_EEprom + 4]) * 256 +
              ord(receivestring[V_Guidage_EEprom + 3])) * 256 +
              ord(receivestring[V_Guidage_EEprom + 2])) * 256 +
              ord(receivestring[V_Guidage_EEprom + 1]);
            if ValueLong <> 0 //
            then
              Edit_V_Guidage_DEC.text := FloatToStrF(80000000 / ValueLong,
                ffFixed, 8, NbreDecimalesGuidage)
            else
              Edit_V_Guidage_DEC.text := '0';

            // V_Corr_P_DEC en 4, 5, 6, 7
            ValueLong :=
              ((ord(receivestring[V_Corr_P_EEprom + 4]) * 256 +
              ord(receivestring[V_Corr_P_EEprom + 3])) * 256 +
              ord(receivestring[V_Corr_P_EEprom + 2])) * 256 +
              ord(receivestring[V_Corr_P_EEprom + 1]);
            if ValueLong <> 0 //
            then
              Edit_V_Corr_P_DEC.text := FloatToStrF(80000000 / ValueLong,
                ffFixed, 8, NbreDecimalesCorrection)
            else
              Edit_V_Corr_P_DEC.text := '0';

            // V_Corr_M_DEC en 8, 9, 10, 11
            ValueLong :=
              ((ord(receivestring[V_Corr_M_EEprom + 4]) * 256 +
              ord(receivestring[V_Corr_M_EEprom + 3])) * 256 +
              ord(receivestring[V_Corr_M_EEprom + 2])) * 256 +
              ord(receivestring[V_Corr_M_EEprom + 1]);
            if ValueLong <> 0 //
            then
              Edit_V_Corr_M_DEC.text := FloatToStrF(80000000 / ValueLong,
                ffFixed, 8, NbreDecimalesCorrection)
            else
              Edit_V_Corr_M_DEC.text := '0';

            // V_Point_L_DEC en 12, 13, 14, 15
            ValueLong :=
              ((ord(receivestring[V_Point_L_EEprom + 4]) * 256 +
              ord(receivestring[V_Point_L_EEprom + 3])) * 256 +
              ord(receivestring[V_Point_L_EEprom + 2])) * 256 +
              ord(receivestring[V_Point_L_EEprom + 1]);
            if ValueLong <> 0 //
            then
              Edit_V_Point_L_DEC.text := FloatToStrF(80000000 / ValueLong,
                ffFixed, 8, NbreDecimalesPoint_L)
            else
              Edit_V_Point_L_DEC.text := '0';

            // V_Point_R_DEC en 16, 17, 18, 19
            ValueLong :=
              ((ord(receivestring[V_Point_R_EEprom + 4]) * 256 +
              ord(receivestring[V_Point_R_EEprom + 3])) * 256 +
              ord(receivestring[V_Point_R_EEprom + 2])) * 256 +
              ord(receivestring[V_Point_R_EEprom + 1]);
            if ValueLong <> 0 //
            then
              Edit_V_Point_R_DEC.text := FloatToStrF(80000000 / ValueLong,
                ffFixed, 8, NbreDecimalesPoint_R)
            else
              Edit_V_Point_R_DEC.text := '0';

            // Accel_DEC en 20
            ComboBox_Accel_DEC.ItemIndex :=
              ord(receivestring[Accel_EEprom + 1]);

            // DIR_DEC en 21
            if ord(receivestring[Dir_EEprom + 1]) = 1 //
            then
              CheckBox_DIR_DEC.Checked := true
            else
              CheckBox_DIR_DEC.Checked := false;

            // Si transmission par vis sans fin, Reduc_DEC en 37, 38
            // Si transmission par câble, la partie fractionnaire de Reduc_DEC,
            // multipliée par 25600, se trouve en 39, 40

            Reduc_DEC := ord(receivestring[Reduc_Trunc_EEprom + 1]) * 256 +
              ord(receivestring[Reduc_Trunc_EEprom + 2]);
            ValueInt := ord(receivestring[Reduc_Frac_EEprom + 1]) * 256 +
              ord(receivestring[Reduc_Frac_EEprom + 2]);
            if ValueInt = 0
            then // Le coefficient de réduction est entier ...
            begin
              Edit_Reduc_DEC.text := IntToStr(Trunc(Reduc_DEC));
              Label_Message_Reduction_DEC.Caption :=
                '(Nombre de dents de la roue si entraînement par VIS SANS FIN)'
            end
            else // ou il ne l'est pas
            begin
              Edit_Reduc_DEC.text := FloatToStrF(Reduc_DEC, ffFixed, 8, 4);
              Label_Message_Reduction_DEC.Caption :=
                '(Coefficient a priori non entier si entraînement par CÂBLE)'
            end;

            Resol_DEC := Trunc(MicroPas * Reduc_DEC);
            Edit_Resol_DEC.text := IntToStr(Resol_DEC);

            Button_Ecrire.Enabled := true;
            Button_Sauver.Enabled := true;
            Button_Charger.Enabled := true;
            Button1.Enabled := true;
            Button2.Enabled := true;

          end
          else
            ShowMessage('Erreur deviceready du device ' + IntToStr(1) + ' ' +
              IntToStr(NumCOM) + '!');
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
  astring: ShortString;
  ValueInt: Integer;
  MSB, LSB: byte;
  ValueLong: LongInt;
  ok: boolean;
  Hcom: Thandle;
  NumCOM: byte;

  function CalcValue(bstring: ShortString): Integer;
  var
    temp: Integer;

  begin
    if StrToFloat(bstring) > 0 //
    then
    begin
      try
        CalcValue := round((80000000 / StrToFloat(bstring)));
      except
        CalcValue := 0;
      end;
    end
    else
      CalcValue := 0;
  end;

begin
  // Connaitre le port COM utilisé
  NumCOM := Return_PortCOM;
  try
    Open_Cod_Eng(NumCOM, ok);
    // Ouvrir le port COM
    try

      if (ok) and (deviceready(C_Alpha) = 1) and
        (deviceready(C_Delta) = 1) //

      then
      begin
        Button_Ecrire.Enabled := false;
        Button_Lire.Enabled := false;
        Button_Sauver.Enabled := false;
        Button_Charger.Enabled := false;
        Button1.Enabled := false;
        Button2.Enabled := false;

        CleanCOMs;

        // Ecriture des paramètres concernant l'axe ALPHA**********************

        While deviceready(C_Alpha) <> 1 do;

        // Ecriture de V_Guidage_AD en 0, 1, 2, 3
        ValueInt := CalcValue(Ansistring(Edit_V_Guidage_AD.text));
        astring := 'l' + AnsiChar(V_Guidage_EEprom) + AnsiChar(HH(ValueInt)) +
          AnsiChar(LH(ValueInt)) + AnsiChar(HL(ValueInt)) +
          AnsiChar(LL(ValueInt));
        sendcommand(astring, 0, C_Alpha);
        while deviceready(C_Alpha) <> 1 do;

        // Ecriture de V_Corr_P_AD en 4, 5, 6, 7
        ValueInt := CalcValue(Edit_V_Corr_P_AD.text);
        astring := 'l' + AnsiChar(V_Corr_P_EEprom) + AnsiChar(HH(ValueInt)) +
          AnsiChar(LH(ValueInt)) + AnsiChar(HL(ValueInt)) +
          AnsiChar(LL(ValueInt));
        sendcommand(astring, 0, C_Alpha);
        while deviceready(C_Alpha) <> 1 do;

        // Ecriture de V_Corr_M_AD en 8, 9, 10, 11
        ValueInt := CalcValue(Edit_V_Corr_M_AD.text);
        astring := 'l' + AnsiChar(V_Corr_M_EEprom) + AnsiChar(HH(ValueInt)) +
          AnsiChar(LH(ValueInt)) + AnsiChar(HL(ValueInt)) +
          AnsiChar(LL(ValueInt));
        sendcommand(astring, 0, C_Alpha);
        while deviceready(C_Alpha) <> 1 do;

        // Ecriture de V_Point_L_AD en 12, 13, 14, 15
        ValueInt := CalcValue(Edit_V_Point_L_AD.text);
        astring := 'l' + AnsiChar(V_Point_L_EEprom) + AnsiChar(HH(ValueInt)) +
          AnsiChar(LH(ValueInt)) + AnsiChar(HL(ValueInt)) +
          AnsiChar(LL(ValueInt));
        sendcommand(astring, 0, C_Alpha);
        while deviceready(C_Alpha) <> 1 do;

        // Ecriture de V_Point_R_AD en 16, 17, 18, 19
        ValueInt := CalcValue(Edit_V_Point_R_AD.text);
        astring := 'l' + AnsiChar(V_Point_R_EEprom) + AnsiChar(HH(ValueInt)) +
          AnsiChar(LH(ValueInt)) + AnsiChar(HL(ValueInt)) +
          AnsiChar(LL(ValueInt));
        sendcommand(astring, 0, C_Alpha);
        while deviceready(C_Alpha) <> 1 do;

        // Ecriture de Accel_AD en 20
        ValueInt := ComboBox_Accel_AD.ItemIndex;
        if ValueInt = -1 //
        then
          ValueInt := 0;
        astring := 'L' + AnsiChar(Accel_EEprom) + AnsiChar(ValueInt) +
          AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, C_Alpha);
        while deviceready(C_Alpha) <> 1 do;

        // Ecriture de DIR_AD en 21
        if CheckBox_DIR_AD.Checked = true //
        then
          ValueInt := 1
        else
          ValueInt := 0;
        astring := 'L' + AnsiChar(Dir_EEprom) + AnsiChar(ValueInt) + AnsiChar(0)
          + AnsiChar(0);
        sendcommand(astring, 0, C_Alpha);
        while deviceready(C_Alpha) <> 1 do;

        // Ecriture de MicroPas par pas en 22
        ValueInt := StrToInt(Edit_MPasParPas_AD.Text);
        if ValueInt = -1 //
        then
          ValueInt := 0;
        astring := 'L' + AnsiChar(MicroStep) + AnsiChar(ValueInt) +
          AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, C_Alpha);
        while deviceready(C_Alpha) <> 1 do;

        // Ecriture de Pas par Tour en 24
        ValueInt := StrToInt(Edit_PasParTour_AD.Text);
        if ValueInt = -1 //
        then
          ValueInt := 0;
        astring := 'L' + AnsiChar(Step) + AnsiChar(ValueInt) +
          AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, C_Alpha);
        while deviceready(C_Alpha) <> 1 do;

        // Ecriture de Reducer_Ratio à 1
        astring := 'L' + AnsiChar(Reducer_Ratio) + AnsiChar(1) +
          AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, C_Alpha);
        while deviceready(C_Alpha) <> 1 do;

        // Ecriture de la partie entière de Reduc_AD en 37, 38
        try
          ValueLong := StrToInt(Edit_Resol_AD.text);
        except
          ValueLong := 0;
        end;
        Resol_AD := ValueLong;
        ValueInt := Resol_AD div MicroPas;
        MSB := (ValueInt shr 8) and $FF;
        LSB := ValueInt and $FF;
        astring := 'L' + AnsiChar(Reduc_Trunc_EEprom) + AnsiChar(MSB) +
          AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, C_Alpha);
        while deviceready(C_Alpha) <> 1 do;
        astring := 'L' + AnsiChar(Reduc_Trunc_EEprom + 1) + AnsiChar(LSB) +
          AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, C_Alpha);
        while deviceready(C_Alpha) <> 1 do;

        // Ecriture de la partie fractionnaire de Reduc_AD en 39, 40
        ValueInt := Resol_AD - ValueInt * MicroPas;
        MSB := (ValueInt shr 8) and $FF;
        LSB := ValueInt and $FF;
        astring := 'L' + AnsiChar(Reduc_Frac_EEprom) + AnsiChar(MSB) +
          AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, C_Alpha);
        while deviceready(C_Alpha) <> 1 do;
        astring := 'L' + AnsiChar(Reduc_Frac_EEprom + 1) + AnsiChar(LSB) +
          AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, C_Alpha);
        while deviceready(C_Alpha) <> 1 do;

        // Ecriture du type de Raquette en 43
        ValueInt := RadioGroup_Raq_Can.ItemIndex;
        astring := 'L' + AnsiChar(Raq_Can_EEprom) + AnsiChar(ValueInt) +
          AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, C_Alpha);
        while deviceready(C_Alpha) <> 1 do;

        CleanCOMs;

        // Ecriture des paramètres concernant l'axe DELTA ********************

        while deviceready(C_Delta) <> 1 do;

        // Ecriture de V_Guidage_DEC en 1, 2, 3, 4
        ValueInt := CalcValue(Edit_V_Guidage_DEC.text);
        astring := 'l' + AnsiChar(V_Guidage_EEprom) + AnsiChar(HH(ValueInt)) +
          AnsiChar(LH(ValueInt)) + AnsiChar(HL(ValueInt)) +
          AnsiChar(LL(ValueInt));
        sendcommand(astring, 0, C_Delta);
        while deviceready(C_Delta) <> 1 do;

        // Ecriture de V_Corr_P_DEC en 5, 6, 7, 8
        ValueInt := CalcValue(Edit_V_Corr_P_DEC.text);
        astring := 'l' + AnsiChar(V_Corr_P_EEprom) + AnsiChar(HH(ValueInt)) +
          AnsiChar(LH(ValueInt)) + AnsiChar(HL(ValueInt)) +
          AnsiChar(LL(ValueInt));
        sendcommand(astring, 0, C_Delta);
        while deviceready(C_Delta) <> 1 do;

        // Ecriture de V_Corr_M_DEC en 9, 10, 11, 12
        ValueInt := CalcValue(Edit_V_Corr_M_DEC.text);
        astring := 'l' + AnsiChar(V_Corr_M_EEprom) + AnsiChar(HH(ValueInt)) +
          AnsiChar(LH(ValueInt)) + AnsiChar(HL(ValueInt)) +
          AnsiChar(LL(ValueInt));
        sendcommand(astring, 0, C_Delta);
        while deviceready(C_Delta) <> 1 do;

        // Ecriture de V_Point_L_DEC en 13, 14, 15, 16
        ValueInt := CalcValue(Edit_V_Point_L_DEC.text);
        astring := 'l' + AnsiChar(V_Point_L_EEprom) + AnsiChar(HH(ValueInt)) +
          AnsiChar(LH(ValueInt)) + AnsiChar(HL(ValueInt)) +
          AnsiChar(LL(ValueInt));
        sendcommand(astring, 0, C_Delta);
        while deviceready(C_Delta) <> 1 do;

        // Ecriture de V_Point_R_DEC en 17, 18, 19, 20
        ValueInt := CalcValue(Edit_V_Point_R_DEC.text);
        astring := 'l' + AnsiChar(V_Point_R_EEprom) + AnsiChar(HH(ValueInt)) +
          AnsiChar(LH(ValueInt)) + AnsiChar(HL(ValueInt)) +
          AnsiChar(LL(ValueInt));
        sendcommand(astring, 0, C_Delta);
        while deviceready(C_Delta) <> 1 do;

        // Ecriture de Accel_DEC en 21
        ValueInt := ComboBox_Accel_DEC.ItemIndex;
        if ValueInt = -1 //
        then
          ValueInt := 0;
        astring := 'L' + AnsiChar(Accel_EEprom) + AnsiChar(ValueInt) +
          AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, C_Delta);
        while deviceready(C_Delta) <> 1 do;

        // Ecriture de DIR_DEC en 22
        if CheckBox_DIR_DEC.Checked //
        then
          ValueInt := 1
        else
          ValueInt := 0;
        astring := 'L' + AnsiChar(Dir_EEprom) + AnsiChar(ValueInt) + AnsiChar(0)
          + AnsiChar(0);
        sendcommand(astring, 0, C_Delta);
        while deviceready(C_Delta) <> 1 do;

        // Ecriture de la partie entière de Reduc_DEC en 38, 39
        try
          ValueLong := StrToInt(Edit_Resol_DEC.text);
        except
          ValueLong := 0;
        end;
        Resol_DEC := ValueLong;
        ValueInt := Resol_DEC div MicroPas;
        MSB := (ValueInt shr 8) and $FF;
        LSB := ValueInt and $FF;
        astring := 'L' + AnsiChar(Reduc_Trunc_EEprom) + AnsiChar(MSB) +
          AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, C_Delta);
        while deviceready(C_Delta) <> 1 do;
        astring := 'L' + AnsiChar(Reduc_Trunc_EEprom + 1) + AnsiChar(LSB) +
          AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, C_Delta);
        while deviceready(C_Delta) <> 1 do;

        // Ecriture de la partie fractionnaire de Reduc_DEC en 39, 40
        ValueInt := Resol_DEC - ValueInt * MicroPas;
        MSB := (ValueInt shr 8) and $FF;
        LSB := ValueInt and $FF;
        astring := 'L' + AnsiChar(Reduc_Frac_EEprom) + AnsiChar(MSB) +
          AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, C_Delta);
        while deviceready(C_Delta) <> 1 do;
        astring := 'L' + AnsiChar(Reduc_Frac_EEprom + 1) + AnsiChar(LSB) +
          AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, C_Delta);
        while deviceready(C_Delta) <> 1 do;

        // Ecriture du type de Raquette en 43
        ValueInt := RadioGroup_Raq_Can.ItemIndex;
        astring := 'L' + AnsiChar(Raq_Can_EEprom) + AnsiChar(ValueInt) +
          AnsiChar(0) + AnsiChar(0);
        sendcommand(astring, 0, C_Delta);
        while deviceready(C_Delta) <> 1 do;
      end
      else
        ShowMessage('Erreur deviceready de ' + McmtXX + '  ' +
          IntToStr(NumCOM) + '!');

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

procedure TSetupTelescope.Button_SauverClick(Sender: TObject);
var
  DeviceIni: TIniFile;
  NumCOM: byte;

begin
  if SaveDialog1.Execute

  then { Display Save dialog box }
  begin
    DeviceIni := TIniFile.create(SaveDialog1.FileName);
    with DeviceIni do
    begin
      NumCOM := Return_PortCOM;

      WriteInteger('Configuration', 'Port', NumCOM);
      WriteBool('Parameters', 'DIR_AD', CheckBox_DIR_AD.Checked);
      WriteBool('Parameters', 'DIR_DEC', CheckBox_DIR_DEC.Checked);
      WriteBool('Parameters', 'Raq_Can', (RadioGroup_Raq_Can.ItemIndex = 1));
      WriteInteger('Parameters', 'Resol_AD', StrToInt(Edit_Resol_AD.text));
      WriteInteger('Parameters', 'Resol_DEC', StrToInt(Edit_Resol_DEC.text));
      WriteString('Parameters', 'Reduc_AD', Edit_Reduc_AD.text);
      WriteString('Parameters', 'Reduc_DEC', Edit_Reduc_DEC.text);
      WriteString('Parameters', 'V_Guidage_AD', Edit_V_Guidage_AD.text);
      WriteString('Parameters', 'V_Guidage_DEC', Edit_V_Guidage_DEC.text);
      WriteString('Parameters', 'V_Corr_P_AD', Edit_V_Corr_P_AD.text);
      WriteString('Parameters', 'V_Corr_P_DEC', Edit_V_Corr_P_DEC.text);
      WriteString('Parameters', 'V_Corr_M_AD', Edit_V_Corr_M_AD.text);
      WriteString('Parameters', 'V_Corr_M_DEC', Edit_V_Corr_M_DEC.text);
      WriteString('Parameters', 'V_Point_L_AD', Edit_V_Point_L_AD.text);
      WriteString('Parameters', 'V_Point_L_DEC', Edit_V_Point_L_DEC.text);
      WriteString('Parameters', 'V_Point_R_AD', Edit_V_Point_R_AD.text);
      WriteString('Parameters', 'V_Point_R_DEC', Edit_V_Point_R_DEC.text);
      WriteString('Parameters', 'Accel_AD',
        IntToStr(ComboBox_Accel_AD.ItemIndex));
      WriteString('Parameters', 'Accel_DEC',
        IntToStr(ComboBox_Accel_DEC.ItemIndex));
    end;
    DeviceIni.free;
  end;
end;

procedure TSetupTelescope.Button_ChargerClick(Sender: TObject);
var
  DeviceIni: TIniFile;
  NumCOM: byte;

begin
  if OpenDialog2.Execute

  then { Display Open dialog box }
  begin
    DeviceIni := TIniFile.create(OpenDialog2.FileName);
    with DeviceIni do
    begin
      NumCOM := ReadInteger('Configuration', 'Port', 1);
      CheckBox_DIR_AD.Checked := ReadBool('Parameters', 'DIR_AD', false);
      CheckBox_DIR_DEC.Checked := ReadBool('Parameters', 'DIR_DEC', false);
      // CheckBox_PEC.Checked := ReadBool('Parameters', 'PEC_AD', false);
      if ReadBool('Parameters', 'Raq_Can', false) //
      then
        RadioGroup_Raq_Can.ItemIndex := 1
      else
        RadioGroup_Raq_Can.ItemIndex := 0;
      Edit_Resol_AD.text := IntToStr(ReadInteger('Parameters', 'Resol_AD',
        9216000));
      Edit_Resol_DEC.text := IntToStr(ReadInteger('Parameters', 'Resol_DEC',
        9216000));
      Edit_Reduc_AD.text := ReadString('Parameters', 'Reduc_AD', '360');
      Edit_Reduc_DEC.text := ReadString('Parameters', 'Reduc_DEC', '360');
      Edit_V_Guidage_AD.text := ReadString('Parameters', 'V_Guidage_AD', '1');
      Edit_V_Guidage_DEC.text := ReadString('Parameters', 'V_Guidage_DEC', '1');
      Edit_V_Corr_P_AD.text := ReadString('Parameters', 'V_Corr_P_AD', '1');
      Edit_V_Corr_P_DEC.text := ReadString('Parameters', 'V_Corr_P_DEC', '1');
      Edit_V_Corr_M_AD.text := ReadString('Parameters', 'V_Corr_M_AD', '1');
      Edit_V_Corr_M_DEC.text := ReadString('Parameters', 'V_Corr_M_DEC', '1');
      Edit_V_Point_L_AD.text := ReadString('Parameters', 'V_Point_L_AD', '1');
      Edit_V_Point_L_DEC.text := ReadString('Parameters', 'V_Point_L_DEC', '1');
      Edit_V_Point_R_AD.text := ReadString('Parameters', 'V_Point_R_AD', '1');
      Edit_V_Point_R_DEC.text := ReadString('Parameters', 'V_Point_R_DEC', '1');
      ComboBox_Accel_AD.ItemIndex :=
        StrToInt(ReadString('Parameters', 'Accel_AD', '0'));
      ComboBox_Accel_DEC.ItemIndex :=
        StrToInt(ReadString('Parameters', 'Accel_DEC', '0'));
    end;
    DeviceIni.free;
  end;
end;

// *************************************************************************
// *************************************************************************
// Toutes les procédures qui suivent sont identiques pour McmtII et Mcmt32
// *************************************************************************
// *************************************************************************

function TSetupTelescope.Communication(Const Hcom: Thandle; Instr: byte;
  VysBuff: Ansistring): boolean;
var
  Sended: dword;
  Received: dword;
  CheckSum: byte;
  NumberOfData, N, Pointer: byte;
  RecBuff: array [0 .. 40] of byte;
  SendBuff: array [0 .. 40] of byte;
  SendLength: byte;
  RecLength: byte;
  Code, I, J: Integer;
  fSuccess: boolean;
  Address: word;

begin
{$R-}
  fSuccess := true;
  Communication := true;

  SendBuff[0] := Instr;
  SendLength := 1;
  RecLength := 1;

  if Instr = WRITEBOOT //
  then
  begin

    Val('$' + VysBuff[4] + VysBuff[5], I, Code);
    Val('$' + VysBuff[6] + VysBuff[7], J, Code);
    Address := ((I * 256) + J) div 2;

    if (Address >= $2000) and (Address < $2100) //
    then
    begin
      // don't send address from 0x2000 to 0x20FF
      Communication := true;
      exit;
    end;

    SendBuff[1] := Address div 256; // high byte of address
    SendBuff[2] := Address - (SendBuff[1] * 256); // low byte of address
    Val('$' + VysBuff[2] + VysBuff[3], I, Code);
    NumberOfData := I;
    SendBuff[3] := NumberOfData; // number of data
    CheckSum := 0;

    for N := 1 to NumberOfData div 2 do
    begin
      Pointer := (N - 1) * 4;
      Val('$' + VysBuff[12 + Pointer] + VysBuff[13 + Pointer], I, Code);
      SendBuff[5 + ((N - 1) * 2)] := I; // high byte of instruction
      CheckSum := CheckSum + I;
      Val('$' + VysBuff[10 + Pointer] + VysBuff[11 + Pointer], I, Code);
      SendBuff[6 + ((N - 1) * 2)] := I; // low byte of instruction
      CheckSum := CheckSum + I;
    end;

    SendBuff[4] := CheckSum; // checksum
    SendLength := 5 + NumberOfData;
    RecLength := 2; // wait for 2 bytes
  end;

  Application.ProcessMessages;

  CleanCOMs;
  WriteFile(Hcom, SendBuff, SendLength, Sended, nil);
  // send
  ReadFile(Hcom, RecBuff, RecLength, Received, nil); // receive

  if (Received > 0) //
  then
    case Instr of
      IDENT:
        if RecBuff[0] = IDACK //
        then
          Communication := true
        else
          Communication := false;
      WRITEBOOT:
        if (RecBuff[0] = DATA_OK) and (RecBuff[1] = WOK) //
        then
          Communication := true
        else
          Communication := false;
      DONE:
        if RecBuff[0] = WOK //
        then
          Communication := true
        else
          Communication := false;
    end
  else
    fSuccess := false;

  CleanCOMs;
  if (not fSuccess) //
  then
  begin
    Application.MessageBox('Timeout of communication !', 'Information', MB_OK);
    Communication := false;
  end;
{$R+}
end;

procedure TSetupTelescope.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
end;

procedure TSetupTelescope.Button_Retour_DefautClick(Sender: TObject);
begin
  Edit_V_Guidage_AD_Calc.text := Edit_Defaut_Guidage_AD.text;
  Edit_V_Corr_P_AD_Calc.text := Edit_Defaut_Corr_P_AD.text;
  Edit_V_Corr_M_AD_Calc.text := Edit_Defaut_Corr_M_AD.text;
  Edit_V_Point_L_AD_Calc.text := Edit_Defaut_Point_L_AD.text;
  Edit_V_Point_R_AD_Calc.text := Edit_Defaut_Point_R_AD.text;
  Edit_V_Guidage_DEC_Calc.text := Edit_Defaut_Guidage_DEC.text;
  Edit_V_Corr_P_DEC_Calc.text := Edit_Defaut_Corr_P_DEC.text;
  Edit_V_Corr_M_DEC_Calc.text := Edit_Defaut_Corr_M_DEC.text;
  Edit_V_Point_L_DEC_Calc.text := Edit_Defaut_Point_L_DEC.text;
  Edit_V_Point_R_DEC_Calc.text := Edit_Defaut_Point_R_DEC.text;
  Evaluer_Resultats(Nil);
end;

procedure TSetupTelescope.Edit_Reduc_AD_Change(Sender: TObject);
begin
  Reduc_AD := strtofloat(Edit_Reduc_AD.text);
  if Reduc_AD > Reduction_Max //
  then
  begin
    Reduc_AD := Reduction_Max;
    Edit_Reduc_AD.text := IntToStr(Reduction_Max);
    ProcessingBox := TProcessingBox.create(Nil, 'Réduction Max = ' +
      IntToStr(Reduction_Max));
    ProcessingBox.Show;
    Beep;
    ProcessingBox.Refresh;
    Sleep(2000);
    ProcessingBox.free;
  end;

  if Frac(Reduc_AD) = 0 //
  then // Le coefficient de réduction est entier ...
  begin
    Label_Message_Reduction_AD.Caption :=
      '(Nombre de dents de la roue si entraînement par VIS SANS FIN)'
  end
  else // ou il ne l'est pas
  begin
    Label_Message_Reduction_AD.Caption :=
      '(Coefficient a priori non entier si entraînement par CÂBLE)'
  end;
  Resol_AD := Trunc(Reduc_AD * MicroPas);
  Vitesse_AD := Resol_AD / Jour_Sideral;
  Edit_Resol_AD.text := IntToStr(Resol_AD);
  Edit_V_Guidage_AD.text :=
    FloatToStrF(Vitesse_AD * strtofloat(Edit_V_Guidage_AD_Calc.text), ffFixed,
    8, NbreDecimalesGuidage);
  Edit_V_Corr_P_AD.text :=
    FloatToStrF(Vitesse_AD * strtofloat(Edit_V_Corr_P_AD_Calc.text), ffFixed, 8,
    NbreDecimalesCorrection);
  Edit_V_Corr_M_AD.text :=
    FloatToStrF(Vitesse_AD * strtofloat(Edit_V_Corr_M_AD_Calc.text), ffFixed, 8,
    NbreDecimalesCorrection);
  Edit_V_Point_L_AD.text := FloatToStrF(strtofloat(Edit_V_Point_L_AD_Calc.text)
    / 360 * Resol_AD, ffFixed, 8, NbreDecimalesPoint_L);
  Edit_V_Point_R_AD.text := FloatToStrF(strtofloat(Edit_V_Point_R_AD_Calc.text)
    / 360 * Resol_AD, ffFixed, 8, NbreDecimalesPoint_R);
end;

procedure TSetupTelescope.Edit_Reduc_DEC_Change(Sender: TObject);
begin
  Reduc_DEC := strtofloat(Edit_Reduc_DEC.text);
  if Reduc_DEC > Reduction_Max //
  then
  begin
    Reduc_DEC := Reduction_Max;
    Edit_Reduc_DEC.text := IntToStr(Reduction_Max);
    ProcessingBox := TProcessingBox.create(Nil, 'Réduction Max = ' +
      IntToStr(Reduction_Max));
    ProcessingBox.Show;
    Beep;
    ProcessingBox.Refresh;
    Sleep(2000);
    ProcessingBox.free;
  end;

  if Frac(Reduc_DEC) = 0 //
  then // Le coefficient de réduction est entier ...
  begin
    Label_Message_Reduction_DEC.Caption :=
      '(Nombre de dents de la roue si entraînement par VIS SANS FIN)'
  end
  else
  // ou il ne l'est pas
  begin
    Label_Message_Reduction_DEC.Caption :=
      '(Coefficient a priori non entier si entraînement par CÂBLE)'
  end;
  Resol_DEC := Trunc(Reduc_DEC * MicroPas);
  Vitesse_DEC := Resol_DEC / Jour_Sideral;
  Edit_Resol_DEC.text := IntToStr(Resol_DEC);
  Edit_V_Guidage_DEC.text :=
    FloatToStrF(Vitesse_DEC * strtofloat(Edit_V_Guidage_DEC_Calc.text), ffFixed,
    8, NbreDecimalesGuidage);
  Edit_V_Corr_P_DEC.text :=
    FloatToStrF(Vitesse_DEC * strtofloat(Edit_V_Corr_P_DEC_Calc.text), ffFixed,
    8, NbreDecimalesCorrection);
  Edit_V_Corr_M_DEC.text :=
    FloatToStrF(Vitesse_DEC * strtofloat(Edit_V_Corr_M_DEC_Calc.text), ffFixed,
    8, NbreDecimalesCorrection);
  Edit_V_Point_L_DEC.text :=
    FloatToStrF(strtofloat(Edit_V_Point_L_DEC_Calc.text) / 360 *
    Resol_DEC, ffFixed, 8, NbreDecimalesPoint_L);
  Edit_V_Point_R_DEC.text :=
    FloatToStrF(strtofloat(Edit_V_Point_R_DEC_Calc.text) / 360 *
    Resol_DEC, ffFixed, 8, NbreDecimalesPoint_R);
end;

procedure TSetupTelescope.visibilite_Delai_Decision_Fourche(Sender: TObject);
begin
  if abs(SpinEdit_Declinaison_Polaire_Limite_Fourche.value) = 90 //
  then
  begin
    GroupBox_Delai_Decision_Fourche.Visible := false;
    Label_Delai_Decision1.Visible := false;
    Label_Delai_Decision2.Visible := false;
    Label_Delai_Decision3.Visible := false;
  end
  else
  begin
    GroupBox_Delai_Decision_Fourche.Visible := true;
    Label_Delai_Decision1.Visible := true;
    Label_Delai_Decision2.Visible := true;
    Label_Delai_Decision3.Visible := true;
  end;
end;

procedure TSetupTelescope.Button_Appliquer_LatLongClick(Sender: TObject);
begin
  Flatitude := strtofloat(NbreEditLatSec100.text) / 100;
  Flatitude := (Flatitude + strtofloat(NbreEditLatSec.text)) / 60;
  Flatitude := (Flatitude + strtofloat(NbreEditLatMin.text)) / 60;
  Flatitude := (Flatitude + strtofloat(NbreEditLatDeg.text)) / 180 * pi;
  if CheckBoxSouth.Checked //
  then
    Flatitude := -Flatitude;
  RadioGroup_Etat_Telescope_AllemandeClick(Self);
end;

procedure TSetupTelescope.Evaluer_Resultats(Sender: TObject);
Var
  Resol_Calc, V_Calc: Double;

begin
  Resol_Calc := strtofloat(Edit_Reduc_AD.text) * MicroPas;
  V_Calc := Resol_Calc / Jour_Sideral; // en µPas/s

  Edit_Resultats_Guidage_AD.text :=
    FloatToStrF(V_Calc * strtofloat(Edit_V_Guidage_AD_Calc.text), ffFixed, 8,
    NbreDecimalesGuidage);
  Edit_Resultats_Corr_P_AD.text :=
    FloatToStrF(V_Calc * strtofloat(Edit_V_Corr_P_AD_Calc.text), ffFixed, 8,
    NbreDecimalesCorrection);
  Edit_Resultats_Corr_M_AD.text :=
    FloatToStrF(V_Calc * strtofloat(Edit_V_Corr_M_AD_Calc.text), ffFixed, 8,
    NbreDecimalesCorrection);
  Edit_Resultats_Point_L_AD.text :=
    FloatToStrF(strtofloat(Edit_V_Point_L_AD_Calc.text) / 360 *
    Resol_AD, ffFixed, 8, NbreDecimalesPoint_L);
  Edit_Resultats_Point_R_AD.text :=
    FloatToStrF(strtofloat(Edit_V_Point_R_AD_Calc.text) / 360 *
    Resol_AD, ffFixed, 8, NbreDecimalesPoint_R);

  Resol_Calc := strtofloat(Edit_Reduc_DEC.text) * MicroPas;
  V_Calc := Resol_Calc / Jour_Sideral; // en µPas/s

  Edit_Resultats_Guidage_DEC.text :=
    FloatToStrF(V_Calc * strtofloat(Edit_V_Guidage_DEC_Calc.text), ffFixed, 8,
    NbreDecimalesGuidage);
  Edit_Resultats_Corr_P_DEC.text :=
    FloatToStrF(V_Calc * strtofloat(Edit_V_Corr_P_DEC_Calc.text), ffFixed, 8,
    NbreDecimalesCorrection);
  Edit_Resultats_Corr_M_DEC.text :=
    FloatToStrF(V_Calc * strtofloat(Edit_V_Corr_M_DEC_Calc.text), ffFixed, 8,
    NbreDecimalesCorrection);
  Edit_Resultats_Point_L_DEC.text :=
    FloatToStrF(strtofloat(Edit_V_Point_L_DEC_Calc.text) / 360 *
    Resol_DEC, ffFixed, 8, NbreDecimalesPoint_L);
  Edit_Resultats_Point_R_DEC.text :=
    FloatToStrF(strtofloat(Edit_V_Point_R_DEC_Calc.text) / 360 *
    Resol_DEC, ffFixed, 8, NbreDecimalesPoint_R);

  Button_Actuel.Enabled := true;
end;

procedure TSetupTelescope.Button_ActuelClick(Sender: TObject);

begin
  // Axe ALPHA
  Reduc_AD := strtofloat(Edit_Reduc_AD.text); // En µPas/s
  Resol_AD := Trunc(Reduc_AD * MicroPas);
  Vitesse_AD := Resol_AD / Jour_Sideral; // Vitesse sidérale en µPas/s
  Edit_Resol_AD_Calc.text := IntToStr(Resol_AD);
  Edit_Reduc_AD_Calc.text := Edit_Reduc_AD.text;

  Edit_V_Guidage_AD_Calc.text := FloatToStrF(strtofloat(Edit_V_Guidage_AD.text)
    / Vitesse_AD, ffFixed, 8, NbreDecimalesGuidage_sid);
  // en Vitesse sidérale
  Edit_V_Corr_P_AD_Calc.text := FloatToStrF(strtofloat(Edit_V_Corr_P_AD.text) /
    Vitesse_AD, ffFixed, 8, NbreDecimalesCorrection_sid); // en Vitesse sidérale
  Edit_V_Corr_M_AD_Calc.text := FloatToStrF(strtofloat(Edit_V_Corr_M_AD.text) /
    Vitesse_AD, ffFixed, 8, NbreDecimalesCorrection_sid); // en Vitesse sidérale
  Edit_V_Point_L_AD_Calc.text := FloatToStrF(strtofloat(Edit_V_Point_L_AD.text)
    / Resol_AD * 360, ffFixed, 8, NbreDecimalesPoint_L_deg);
  // en °/s
  Edit_V_Point_R_AD_Calc.text := FloatToStrF(strtofloat(Edit_V_Point_R_AD.text)
    / Resol_AD * 360, ffFixed, 8, NbreDecimalesPoint_R_deg);
  // en °/s

  // Axe DELTA
  Reduc_DEC := strtofloat(Edit_Reduc_DEC.text); // En µPas/s
  Resol_DEC := Trunc(Reduc_DEC * MicroPas);
  Vitesse_DEC := Resol_DEC / Jour_Sideral; // Vitesse sidérale en µPas/s
  Edit_Resol_DEC_Calc.text := IntToStr(Resol_DEC);
  Edit_Reduc_DEC_Calc.text := Edit_Reduc_DEC.text;

  Edit_V_Guidage_DEC_Calc.text :=
    FloatToStrF(strtofloat(Edit_V_Guidage_DEC.text) / Vitesse_DEC,
    ffFixed, 8, NbreDecimalesGuidage_sid);
  Edit_V_Corr_P_DEC_Calc.text := FloatToStrF(strtofloat(Edit_V_Corr_P_DEC.text)
    / Vitesse_DEC, ffFixed, 8, NbreDecimalesCorrection_sid);
  Edit_V_Corr_M_DEC_Calc.text := FloatToStrF(strtofloat(Edit_V_Corr_M_DEC.text)
    / Vitesse_DEC, ffFixed, 8, NbreDecimalesCorrection_sid);
  Edit_V_Point_L_DEC_Calc.text :=
    FloatToStrF(strtofloat(Edit_V_Point_L_DEC.text) / Resol_DEC *
    360, ffFixed, 8, NbreDecimalesPoint_L_deg);
  // en °/s
  Edit_V_Point_R_DEC_Calc.text :=
    FloatToStrF(strtofloat(Edit_V_Point_R_DEC.text) / Resol_DEC * 360,
    ffFixed, 8, NbreDecimalesPoint_R_deg);
  // en °/s

  // Mise à jour du panneau 'résultats'
  Evaluer_Resultats(nil);
end;

procedure TSetupTelescope.OnChange_Edit_V_Guidage_AD(Sender: TObject);
var
  V_Guidage: extended;
begin
  // Axe ALPHA
  V_Guidage := strtofloat(Edit_V_Guidage_AD.text);
  if abs(V_Guidage) > V_Guidage_Max //
  then
  begin
    Edit_V_Guidage_AD.text := FloatToStr(V_Guidage_Max * V_Guidage /
      abs(V_Guidage));
    ProcessingBox := TProcessingBox.create(Nil, 'V_Guidage_Max = ' +
      FloatToStr(V_Guidage_Max) + ' µpas/s');
    ProcessingBox.Show;
    Beep;
    ProcessingBox.Refresh;
    Sleep(2000);
    ProcessingBox.free;
    Button_Utiliser.Enabled := false;
    Button_Ecrire.Enabled := false;
    Button_Sauver.Enabled := false;
  end
  else
  begin
    Button_Utiliser.Enabled := true;
    Button_Ecrire.Enabled := true;
    Button_Sauver.Enabled := true;
    fPeriodeFondamentale:=V_Guidage;
    if fPeriodeFondamentale<>0 then
      fPeriodeFondamentale:=25600/fPeriodeFondamentale*15.04
    else fPeriodeFondamentale:=1;
    LabelPeriodeFondamentale.Caption := Format('Période fondamentale: %6.1f "d''arc',[fPeriodeFondamentale]);
  end;

end;

procedure TSetupTelescope.OnChange_Edit_V_Guidage_AD_Calc(Sender: TObject);
Var
  V_Max, V_Guidage: extended;
begin
  // Axe ALPHA
  V_Max := V_Guidage_Max / strtofloat(Edit_Reduc_AD.text) * MicroPas *
    Jour_Sideral;
  V_Guidage := strtofloat(Edit_V_Guidage_AD_Calc.text);
  if abs(V_Guidage) > V_Max //
  then
  begin
    Edit_V_Guidage_AD_Calc.text :=
      FloatToStrF(V_Max * V_Guidage / abs(V_Guidage), ffFixed, 8, 5);
    ProcessingBox := TProcessingBox.create(Nil, 'V_Guidage_Max = ' +
      FloatToStrF(V_Max, ffFixed, 8, 2) + ' * Vitesse sidérale');
    ProcessingBox.Show;
    Beep;
    ProcessingBox.Refresh;
    Sleep(2000);
    ProcessingBox.free;
    Button_Utiliser.Enabled := false;
    Button_Ecrire.Enabled := false;
    Button_Sauver.Enabled := false;
  end
  else
  begin
    Button_Utiliser.Enabled := true;
    Button_Ecrire.Enabled := true;
    Button_Sauver.Enabled := true;
  end;
  Evaluer_Resultats(nil);
end;

procedure TSetupTelescope.OnChange_Edit_V_Guidage_DEC(Sender: TObject);
var
  V_Guidage: extended;
begin
  // Axe ALPHA
  V_Guidage := strtofloat(Edit_V_Guidage_AD.text);
  if abs(V_Guidage) > V_Guidage_Max //
  then
  begin
    Edit_V_Guidage_AD.text := FloatToStr(V_Guidage_Max * V_Guidage /
      abs(V_Guidage));
    ProcessingBox := TProcessingBox.create(Nil, 'V_Guidage_Max = ' +
      FloatToStr(V_Guidage_Max) + ' µpas/s');
    ProcessingBox.Show;
    Beep;
    ProcessingBox.Refresh;
    Sleep(2000);
    ProcessingBox.free;
    Button_Utiliser.Enabled := false;
    Button_Ecrire.Enabled := false;
    Button_Sauver.Enabled := false;
  end
  else
  begin
    Button_Utiliser.Enabled := true;
    Button_Ecrire.Enabled := true;
    Button_Sauver.Enabled := true;
  end;
end;

procedure TSetupTelescope.OnChange_Edit_V_Guidage_DEC_Calc(Sender: TObject);
Var
  V_Max, V_Guidage: extended;
begin
  // Axe ALPHA
  V_Max := V_Guidage_Max / strtofloat(Edit_Reduc_DEC.text) * MicroPas *
    Jour_Sideral;
  V_Guidage := strtofloat(Edit_V_Guidage_DEC_Calc.text);
  if abs(V_Guidage) > V_Max //
  then
  begin
    Edit_V_Guidage_DEC_Calc.text :=
      FloatToStrF(V_Max * V_Guidage / abs(V_Guidage), ffFixed, 8, 5);
    ProcessingBox := TProcessingBox.create(Nil, 'V_Guidage_Max = ' +
      FloatToStrF(V_Max, ffFixed, 8, 2) + ' * Vitesse sidérale');
    ProcessingBox.Show;
    Beep;
    ProcessingBox.Refresh;
    Sleep(2000);
    ProcessingBox.free;
    Button_Utiliser.Enabled := false;
    Button_Ecrire.Enabled := false;
    Button_Sauver.Enabled := false;
  end
  else
  begin
    Button_Utiliser.Enabled := true;
    Button_Ecrire.Enabled := true;
    Button_Sauver.Enabled := true;
  end;

  Evaluer_Resultats(nil);
end;

procedure TSetupTelescope.Button_UtiliserClick(Sender: TObject);
begin
  Edit_V_Guidage_AD.text := Edit_Resultats_Guidage_AD.text;
  Edit_V_Corr_P_AD.text := Edit_Resultats_Corr_P_AD.text;
  Edit_V_Corr_M_AD.text := Edit_Resultats_Corr_M_AD.text;
  Edit_V_Point_L_AD.text := Edit_Resultats_Point_L_AD.text;
  Edit_V_Point_R_AD.text := Edit_Resultats_Point_R_AD.text;

  Edit_V_Guidage_DEC.text := Edit_Resultats_Guidage_DEC.text;
  Edit_V_Corr_P_DEC.text := Edit_Resultats_Corr_P_DEC.text;
  Edit_V_Corr_M_DEC.text := Edit_Resultats_Corr_M_DEC.text;
  Edit_V_Point_L_DEC.text := Edit_Resultats_Point_L_DEC.text;
  Edit_V_Point_R_DEC.text := Edit_Resultats_Point_R_DEC.text;

  PageControl1.ActivePage := TabSheet_Parametres;
end;

procedure TSetupTelescope.FormCreate(Sender: TObject);
Var
  ChemLog: String;
begin
  creating := true;

  ChemLog := LocalAppDataPath;
  if ChemLog[Length(ChemLog)] <> '\' then
    ChemLog := ChemLog + '\';
  ChemLog := ChemLog + McmtXX + '_log\';
  CheckBoxLogFile.Hint := 'Il sera dans ce répertoire : ' + ChemLog;
end;

procedure TSetupTelescope.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet_Parametres;
end;

procedure TSetupTelescope.CheckBoxActivatePECClick(Sender: TObject);
begin
  if CheckBoxActivatePEC.Checked then
  // the CheckBox will became unchecked
  begin
    Label_Periode_PEC.Enabled := true;
    Label_Phase_PEC.Enabled := true;
    Label_Amplitude_PEC.Enabled := true;
    Label_Titre_PEC_0.Enabled := true;
    Label_Titre_PEC_1.Enabled := true;
    Label_Titre_PEC_2.Enabled := true;
    Label_Titre_PEC_3.Enabled := true;
    NbreEditAmplitude_PEC_0.Enabled := true;
    NbreEditAmplitude_PEC_1.Enabled := true;
    NbreEditAmplitude_PEC_2.Enabled := true;
    NbreEditAmplitude_PEC_3.Enabled := true;
    SpinEditOrdre_PEC_0.Enabled := true;
    SpinEditOrdre_PEC_1.Enabled := true;
    SpinEditOrdre_PEC_2.Enabled := true;
    SpinEditOrdre_PEC_3.Enabled := true;
    LabelPeriode_PEC_0.Enabled:=true;
    LabelPeriode_PEC_1.Enabled:=true;
    LabelPeriode_PEC_2.Enabled:=true;
    LabelPeriode_PEC_3.Enabled:=true;
    NbreEditPhase_PEC_0.Enabled := true;
    NbreEditPhase_PEC_1.Enabled := true;
    NbreEditPhase_PEC_2.Enabled := true;
    NbreEditPhase_PEC_3.Enabled := true;
  end
  else
  begin
    Label_Periode_PEC.Enabled := false;
    Label_Phase_PEC.Enabled := false;
    Label_Amplitude_PEC.Enabled := false;
    Label_Titre_PEC_0.Enabled := false;
    Label_Titre_PEC_1.Enabled := false;
    Label_Titre_PEC_2.Enabled := false;
    Label_Titre_PEC_3.Enabled := false;
    NbreEditAmplitude_PEC_0.Enabled := false;
    NbreEditAmplitude_PEC_1.Enabled := false;
    NbreEditAmplitude_PEC_2.Enabled := false;
    NbreEditAmplitude_PEC_3.Enabled := false;
    SpinEditOrdre_PEC_0.Enabled := false;
    SpinEditOrdre_PEC_1.Enabled := false;
    SpinEditOrdre_PEC_2.Enabled := false;
    SpinEditOrdre_PEC_3.Enabled := false;
    LabelPeriode_PEC_0.Enabled:=false;
    LabelPeriode_PEC_1.Enabled:=false;
    LabelPeriode_PEC_2.Enabled:=false;
    LabelPeriode_PEC_3.Enabled:=false;
    NbreEditPhase_PEC_0.Enabled := false;
    NbreEditPhase_PEC_1.Enabled := false;
    NbreEditPhase_PEC_2.Enabled := false;
    NbreEditPhase_PEC_3.Enabled := false;
  end;
end;

procedure TSetupTelescope.CheckBoxAutoCOMClick(Sender: TObject);
begin
  NbreEditPortSerieForced.Visible := Not CheckBoxAutoCOM.Checked;
  ComboBoxNumCOM.Visible := CheckBoxAutoCOM.Checked;
end;

procedure TSetupTelescope.CheckBoxFreeSpeedClick(Sender: TObject);
begin
  if FreeSpeed then
  begin
    FreeSpeed:=false;
    Edit_V_Guidage_AD.Enabled:=true;
    Edit_V_Corr_P_AD.Enabled:=true;
    Edit_V_Corr_M_AD.Enabled:=true;
    Edit_V_Point_L_AD.Enabled:=true;
    Edit_V_Guidage_DEC.Enabled:=true;
    Edit_V_Corr_P_DEC.Enabled:=true;
    Edit_V_Corr_M_DEC.Enabled:=true;
    Edit_V_Point_L_DEC.Enabled:=true;
    Panel_V_Guidage_AD.Font.Color:=clBlack;
    Pane_V_Corr_P_AD.Font.Color:=clBlack;
    Panel_V_Corr_M_AD.Font.Color:=clBlack;
    Pane_V_Point_L_AD.Font.Color:=clBlack;
    Panel_V_Point_R_AD.Caption:='Vit. Rapide';
    Panel_V_Guidage_DEC.Font.Color:=clBlack;
    Panel_V_Corr_P_DEC.Font.Color:=clBlack;
    Panel_V_Corr_M_DEC.Font.Color:=clBlack;
    Panel_V_Point_L_DEC.Font.Color:=clBlack;
    Panel_V_Point_R_DEC.Caption:='Vit. Rapide';
  end
  else
  begin
    FreeSpeed:=true;
    Edit_V_Guidage_AD.Enabled:=false;
    Edit_V_Corr_P_AD.Enabled:=false;
    Edit_V_Corr_M_AD.Enabled:=false;
    Edit_V_Point_L_AD.Enabled:=false;
    Edit_V_Guidage_DEC.Enabled:=false;
    Edit_V_Corr_P_DEC.Enabled:=false;
    Edit_V_Corr_M_DEC.Enabled:=false;
    Edit_V_Point_L_DEC.Enabled:=false;
    Panel_V_Guidage_AD.Font.Color:=clInactiveCaption;
    Pane_V_Corr_P_AD.Font.Color:=clInactiveCaption;
    Panel_V_Corr_M_AD.Font.Color:=clInactiveCaption;
    Pane_V_Point_L_AD.Font.Color:=clInactiveCaption;
    Panel_V_Point_R_AD.Caption:='Vit. MAX';
    Panel_V_Guidage_DEC.Font.Color:=clInactiveCaption;
    Panel_V_Corr_P_DEC.Font.Color:=clInactiveCaption;
    Panel_V_Corr_M_DEC.Font.Color:=clInactiveCaption;
    Panel_V_Point_L_DEC.Font.Color:=clInactiveCaption;
    Panel_V_Point_R_DEC.Caption:='Vit. MAX';
  end;

end;

procedure TSetupTelescope.CheckBoxLogFileClick(Sender: TObject);
begin
  if CheckBoxLogFile.Checked and not creating

  then
  begin
    if (MessageDlg(R_LogWarning, mtConfirmation, mbOkCancel, 0) = MrCancel)

    then
    Begin
      CheckBoxLogFile.Checked := false;
    end;
  end;
end;

procedure TSetupTelescope.CheckBox_Optimiser_Poursuite_AllemandeClick
  (Sender: TObject);
begin
  if CheckBox_Optimiser_Poursuite_Allemande.Checked //
  then
  begin
    SpinEdit_Angle_Horaire_Retournement_Allemande.value :=
      SpinEdit_Angle_horaire_critique_Est_Allemande.value;
    SpinEdit_Angle_Horaire_Retournement_Allemande.Enabled := false
  end
  else
    SpinEdit_Angle_Horaire_Retournement_Allemande.Enabled := true
end;

procedure TSetupTelescope.CheckBox_Optimiser_Poursuite_FerAChevalClick
  (Sender: TObject);
begin
  if CheckBox_Optimiser_Poursuite_FerACheval.Checked //
  then
  begin
    SpinEdit_Anticipation_Retournement_FerACheval.value :=
      SpinEdit_AngleHoraireLimiteEst_FerACheval.value + 360;
    SpinEdit_Anticipation_Retournement_FerACheval.Enabled := false
  end
  else
    SpinEdit_Anticipation_Retournement_FerACheval.Enabled := true
end;

procedure TSetupTelescope.CheckBox_Retournement_AllemandeClick(Sender: TObject);
begin
  Label_Consigne_Retournement_Allemande.Visible :=
    CheckBox_Retournement_Allemande.Checked;
end;

procedure TSetupTelescope.CheckBox_Retournement_FerAChevalClick
  (Sender: TObject);
begin
  Label_Consigne_Retournement_FerACheval.Visible :=
    CheckBox_Retournement_FerACheval.Checked;
end;

procedure TSetupTelescope.Modification_angle_horaire_critique_Est_Allemande
  (Sender: TObject);
begin
  if SpinEdit_Angle_Horaire_Retournement_Allemande.value <
    SpinEdit_Angle_horaire_critique_Est_Allemande.value //
  then
    SpinEdit_Angle_Horaire_Retournement_Allemande.value :=
      SpinEdit_Angle_horaire_critique_Est_Allemande.value;
  SpinEdit_Angle_Horaire_Retournement_Allemande.MinValue :=
    SpinEdit_Angle_horaire_critique_Est_Allemande.value;
  if CheckBox_Optimiser_Poursuite_Allemande.Checked //
  then
    SpinEdit_Angle_Horaire_Retournement_Allemande.value :=
      SpinEdit_Angle_horaire_critique_Est_Allemande.value;
  SpinEdit_Angle_Horaire_Retournement_AllemandeChange(nil);
end;

procedure TSetupTelescope.Modification_angle_horaire_critique_Ouest_Allemande
  (Sender: TObject);
begin
  if SpinEdit_Angle_Horaire_Retournement_Allemande.value >
    SpinEdit_Angle_horaire_critique_Ouest_Allemande.value //
  then
    SpinEdit_Angle_Horaire_Retournement_Allemande.value :=
      SpinEdit_Angle_horaire_critique_Ouest_Allemande.value;
  SpinEdit_Angle_Horaire_Retournement_Allemande.MaxValue :=
    SpinEdit_Angle_horaire_critique_Ouest_Allemande.value;
  SpinEdit_Angle_Horaire_Retournement_AllemandeChange(nil);
end;

procedure TSetupTelescope.SpinEditOrdre_PEC_0Change(Sender: TObject);
begin
  LabelPeriode_PEC_0.Caption:=Format('%5.0f',[fPeriodeFondamentale/SpinEditOrdre_PEC_0.Value]);
end;

procedure TSetupTelescope.SpinEditOrdre_PEC_1Change(Sender: TObject);
begin
  LabelPeriode_PEC_1.Caption:=Format('%5.0f',[fPeriodeFondamentale/SpinEditOrdre_PEC_1.Value]);
end;

procedure TSetupTelescope.SpinEditOrdre_PEC_2Change(Sender: TObject);
begin
  LabelPeriode_PEC_2.Caption:=Format('%5.0f',[fPeriodeFondamentale/SpinEditOrdre_PEC_2.Value]);
end;

procedure TSetupTelescope.SpinEditOrdre_PEC_3Change(Sender: TObject);
begin
  LabelPeriode_PEC_3.Caption:=Format('%5.0f',[fPeriodeFondamentale/SpinEditOrdre_PEC_3.Value]);
end;

procedure TSetupTelescope.SpinEdit_Angle_Horaire_Retournement_AllemandeChange
  (Sender: TObject);
begin
  Label_Temps_de_Poursuite_Horaire_Minimal_Allemande.Caption :=
    IntToStr(SpinEdit_Angle_horaire_critique_Ouest_Allemande.value -
    SpinEdit_Angle_Horaire_Retournement_Allemande.value);
end;

procedure TSetupTelescope.SpinEdit_Anticipation_Retournement_FerAChevalChange
  (Sender: TObject);
begin
  Label_Temps_de_Poursuite_Horaire_Minimal_FerACheval.Caption :=
    IntToStr(SpinEdit_AngleHoraireLimiteOuest_FerACheval.value -
    SpinEdit_Anticipation_Retournement_FerACheval.value - 360);
end;

procedure TSetupTelescope.Modification_angle_horaire_limite_Est_FerACheval
  (Sender: TObject);
begin
  if SpinEdit_Anticipation_Retournement_FerACheval.value - 360 <
    SpinEdit_AngleHoraireLimiteEst_FerACheval.value //
  then
    SpinEdit_Anticipation_Retournement_FerACheval.value :=
      SpinEdit_AngleHoraireLimiteEst_FerACheval.value + 360;
  SpinEdit_Anticipation_Retournement_FerACheval.MinValue :=
    SpinEdit_AngleHoraireLimiteEst_FerACheval.value + 360;
  if CheckBox_Optimiser_Poursuite_FerACheval.Checked //
  then
    SpinEdit_Anticipation_Retournement_FerACheval.value :=
      SpinEdit_AngleHoraireLimiteEst_FerACheval.value + 360;
  SpinEdit_Anticipation_Retournement_FerAChevalChange(nil)
end;

procedure TSetupTelescope.Modification_angle_horaire_limite_Ouest_FerACheval
  (Sender: TObject);
begin
  if SpinEdit_Anticipation_Retournement_FerACheval.value + 360 >
    SpinEdit_AngleHoraireLimiteOuest_FerACheval.value //
  then
    SpinEdit_Anticipation_Retournement_FerACheval.value :=
      SpinEdit_AngleHoraireLimiteOuest_FerACheval.value - 360;
  SpinEdit_Anticipation_Retournement_FerACheval.MaxValue :=
    SpinEdit_AngleHoraireLimiteOuest_FerACheval.value - 360;
  SpinEdit_Anticipation_Retournement_FerAChevalChange(nil)
end;

procedure TSetupTelescope.RadioGroup_MontureClick(Sender: TObject);
begin

  case RadioGroup_Monture.ItemIndex of

    0:
      begin
        GroupBox_Pointage_Fourche.Visible := true;
        GroupBox_aide_fourche_Parametres.Visible := true;
        GroupBox_aide_fourche_Pointage.Visible := true;
        GroupBox_Pointage_Allemande.Visible := false;
        GroupBox_aide_allemande_Parametres.Visible := false;
        GroupBox_aide_allemande_Pointage.Visible := false;
        GroupBox_Pointage_FerACheval.Visible := false;
        GroupBox_aide_FerACheval_Parametres.Visible := false;
        GroupBox_aide_FerACheval_Pointage.Visible := false;
        Label_Message_Rotation_DEC.Caption := '';
      end;

    1:
      begin
        GroupBox_Pointage_Fourche.Visible := false;
        GroupBox_aide_fourche_Parametres.Visible := false;
        GroupBox_aide_fourche_Pointage.Visible := false;
        GroupBox_Pointage_Allemande.Visible := true;
        GroupBox_aide_allemande_Parametres.Visible := true;
        GroupBox_aide_allemande_Pointage.Visible := true;
        GroupBox_Pointage_FerACheval.Visible := false;
        GroupBox_aide_FerACheval_Parametres.Visible := false;
        GroupBox_aide_FerACheval_Pointage.Visible := false;
        Label_Message_Rotation_DEC.Caption :=
          '(Si le télescope est à l''OUEST)';
      end;

    2:
      begin
        GroupBox_Pointage_Fourche.Visible := false;
        GroupBox_aide_fourche_Parametres.Visible := false;
        GroupBox_aide_fourche_Pointage.Visible := false;
        GroupBox_Pointage_Allemande.Visible := false;
        GroupBox_aide_allemande_Parametres.Visible := false;
        GroupBox_aide_allemande_Pointage.Visible := false;
        GroupBox_Pointage_FerACheval.Visible := true;
        GroupBox_aide_FerACheval_Parametres.Visible := true;
        GroupBox_aide_FerACheval_Pointage.Visible := true;
        Label_Message_Rotation_DEC.Caption :=
          '(Si le télescope est NON retourné)';
      end;
  end;
end;

procedure TSetupTelescope.RadioGroup_Algorithme_Pointage_FourcheClick
  (Sender: TObject);
begin
  if RadioGroup_Algorithme_Pointage_Fourche.ItemIndex = 0 //
  then
  begin
    GroupBox_Pointage_Prudent_Fourche.Visible := false;
    GroupBox_Pointage_Rapide_Fourche.Visible := true;
  end
  else
  begin
    GroupBox_Pointage_Prudent_Fourche.Visible := true;
    GroupBox_Pointage_Rapide_Fourche.Visible := false;
  end
end;

procedure TSetupTelescope.CheckBoxActivateBacklashClick(Sender: TObject);
begin
  if CheckBoxActivateBacklash.Checked //
  then
    GroupBox_Parametres_Correction_Jeux.Visible := true
  else
    GroupBox_Parametres_Correction_Jeux.Visible := false
end;

procedure TSetupTelescope.RadioGroup_Etat_Telescope_FerAChevalClick
  (Sender: TObject);

begin
  if Flatitude > 0 // hémisphère Nord
  then
  begin
    Image_Pied_FerACheval.Visible := true;
    Image_Pied_HemisphereSud_FerACheval.Visible := false;
  end
  else
  // hémisphère Sud
  begin
    Image_Pied_FerACheval.Visible := false;
    Image_Pied_HemisphereSud_FerACheval.Visible := true;
  end;

  if (RadioGroup_Etat_Telescope_FerACheval.ItemIndex = 0) //
  then
  begin
    Image_Telescope_NonRetourne_FerACheval.Visible := false;
    Image_Telescope_Retourne_FerACheval.Visible := true;
    Label_Telescope_NonRetourne_FerACheval.Visible := false;
    Label_Telescope_Retourne_FerACheval.Visible := true;
  end
  else
  begin
    Image_Telescope_NonRetourne_FerACheval.Visible := true;
    Image_Telescope_Retourne_FerACheval.Visible := false;
    Label_Telescope_NonRetourne_FerACheval.Visible := true;
    Label_Telescope_Retourne_FerACheval.Visible := false;
  end;
end;

procedure TSetupTelescope.RadioGroup_Etat_Telescope_AllemandeClick
  (Sender: TObject);

begin
  if Flatitude > 0 // hémisphère Nord
  then
  begin
    Image_Pied_Allemande.Visible := true;
    Image_Pied_HemisphereSud_Allemande.Visible := false;
  end
  else
  // hémisphère Sud
  begin
    Image_Pied_Allemande.Visible := false;
    Image_Pied_HemisphereSud_Allemande.Visible := true;
  end;

  if (RadioGroup_Etat_Telescope_Allemande.ItemIndex = 0) //
  then
  begin
    Image_Telescope_NonRetourne_Allemande.Visible := false;
    Image_Telescope_Retourne_Allemande.Visible := true;
    Label_Tube_Ouest_Allemande.Visible := false;
    Label_Tube_Est_Allemande.Visible := true;
  end
  else
  begin
    Image_Telescope_NonRetourne_Allemande.Visible := true;
    Image_Telescope_Retourne_Allemande.Visible := false;
    Label_Tube_Ouest_Allemande.Visible := true;
    Label_Tube_Est_Allemande.Visible := false;
  end;
end;

Function TSetupTelescope.Return_PortCOM: Integer;
Var
  AutoFindCOM: boolean;
Begin
  AutoFindCOM := CheckBoxAutoCOM.Checked;
  if AutoFindCOM //
  then
    Result := StrToInt(ComboBoxNumCOM.text)
  else
    Result := StrToInt(NbreEditPortSerieForced.text);
end;

end.
