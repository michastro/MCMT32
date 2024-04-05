unit VarGlobal;

interface
uses
  System.SysUtils,Winapi.Messages,System.SyncObjs,AxisRates_Unit,Rate_Unit,RateEnumUnit,LEDUnit,MCMT32_ASCOM_TLB;
const
  McmtXX = 'Mcmt32';
  MaxPECTABLE           = 20;
  ERROR                   = False;
  NOERROR                 = True;
  C_Alpha                 = 0;
  C_Delta                 = 1;
  V_Guidage_EEPROM = 	0;
  V_Corr_P_EEPROM =   	4;
  V_Corr_M_EEPROM =   	8;
  V_Point_L_EEPROM =       		12;
  V_Point_R_EEPROM =     		16;
  Accel_EEPROM =  		20;
  Dir_EEPROM = 		21;
  Dir_Corec_Plus = 	22;
  Microstep = 22;
  Dir_Corec_Moins = 	23;
  Dir_Lent_Plus = 		24;
  Step = 24;
  Dir_Lent_Moins = 	25;
  Dir_Rapide_Plus = 	26;
  Reducer_Ratio = 	26;
  Dir_Rapide_Moins =	27;
  Resol_Guidage = 		28;
  Resol_Corec_Plus =	29;
  Resol_Corec_Moins =	30;
  Resol_Lent = 		31;
  Resol_Rapide = 		32;
  Courant_Guidage = 	33;
  Courant_Lent = 		34;
  Courant_Rapide = 	35;
  Sens_Raq_Led = 		36;

  PasCodeur  =		37;
  Reduc_Trunc_EEPROM = 37; // /   Trunc(Coefficient de réduction)      2 octets
  (* il ne s'agit que de la partie entière du coefficient de réduction. *)
  Reduc_Frac_EEPROM = 39; // /    Frac(Coefficient de réduction)       2 octets
  (* cet emplacement mémoire est réservé pour les évolutions futures
    du soft interne de MCMT.
    La partie fractionnaire du coefficient de réduction y est stockée
    dans le format Trunc(25600*Frac(Coefficient de réduction)) *)
  ParkMode 	=	41;
  Raq_CAN_EEPROM =	42;

  PEC_ENABLED	=	47;
  SautMaxCodeur = (2.0 * Pi) - 0.35;

  WM_HandleMessageUpdate= WM_USER+100;
  T_pi                  = 2*Pi;
  Pi_d_2                = Pi/2;
  OmegaSid              = 2.0*Pi*(365.2564 + 1)/365.2564;
  MaxPECHarmos:Integer  = 3;
  Jour_Sideral = 86164.09; // 23h 56 min  4,09 s

type

  TBackLashDatas=record
   Delta_Mode       : Integer;
   Activated,
   North,
   Saved_Park       : Boolean;
   StepAD,
   StepDEC,
   Pause            : Integer;
   Value            : Double ;
  end;

  TSpeed                         = (SMax, SMedium, SSideral, SNone);

  Tspeeds=record
    SpeedAlpha: TSpeed; // Pour connaître la vitesse imposée en Alpha suivant l'objet TSpeed
    SpeedDelta: TSpeed; // Pour connaître la vitesse imposée en Delta suivant l'objet TSpeed
  end;

  TStateTelescope=record
      Delta,
      Alpha                   : Double;   // Retranscrit les positions en AD et DEC des codeurs
      AlphaPointage,
      DeltaPointage           : Double;   // identique aux 2 precedents, mais utilises

      AlphaRaw,
      DeltaRaw,
      AlphaRawPrevious,
      DeltaRawPrevious,
      AlphaRawInit            : LongInt; // Lecture codeurs en upas

      AlphaInit,
      DeltaInit,
      AlphaOldPoint,
      DeltaOldPoint             : Double; // Valeurs initiales pour calibration

      AlphaCodeurInit,
      DeltaCodeurInit           : Double; // Valeurs initiales Codeurs pour calibration

      FirstTime,
      Atime                     : Double;
  end;

  TInternalMCMT_PEC=record
    ActiverPEC,
    DesactiverPEC,
    EffacerPEC,
    EnregistrerPEC :Boolean;
  end;

  TExternalMCMT_PEC=record
    Activated:boolean;
    PEC_Step                  : Integer;
    Amplitude,
    Phase,
    Periode         : Array[0..3] of double;
    Ordre           : Array[0..3] of integer;
    FCorrectionPeriodeMs      : Integer;
  end;

  TSpeedInternalMCMT=record    // ALMOST ALL READ-ONLY
    V_Guidage_AD,              // Vitesses  ALPHA   (ecrit dans ReturnToSideralSpeed)
    V_Guidage_AD_SID,
    V_Corr_P_AD,
    V_Corr_M_AD,
    V_Point_L_AD,
    V_Point_R_AD              : Double;

    Accel_AD                  : Integer;

    V_Guidage_DEC,             // Vitesses  DELTA
    V_Corr_P_DEC,
    V_Corr_M_DEC,
    V_Point_L_DEC,
    V_Point_R_DEC             : Double;

    Accel_DEC                 : Integer;

    Resol_AD,
    Resol_DEC                 : LongInt; // Résolution en µpas/tour
    Reduc_AD, Reduc_DEC: Double; //Réduction entre sortie moteur et axes du télescope

    Microstep_AD,Step_AD,Microstep_DEC,Step_DEC:word;
    MPasParTour_AD,MPasParTour_DEC:longint;
    Inv_Codeur_AD,
    Inv_Codeur_DEC            : Boolean;
    GMT                       : Integer;
  end;

  TGermanMountSetup=record
    Monture_Allemande             : Boolean;
    Passage_Interdit              : Boolean;
    Declinaison_Polaire_Limite: double; // Monture à fourche
    Delai_Decision: Integer;
    Angle_horaire_Retournement    : Double;
    Angle_horaire_critique_Est    : Double;
    Angle_horaire_critique_Ouest  : Double;
    Rayon_minimal                 : Double;
    Declinaison_critique_Est      : Double;
    Declinaison_critique_Ouest    : Double;
    TelescopeZenithOuest          : Boolean;
    Retournement_Autorise         : Boolean;
    LongitudeHorairePointage      : double;
    AnglePolairePointage          : double;
    AngleHoraire                  : extended;
    AngleHorairePointage          : extended;
    AngleHorairePointagePrecedent : extended;
    DatePointagePrecedent         : Tdatetime;
    Monture_FerACheval: boolean;
    AngleHoraireLimiteEst_FerACheval: double;
    AngleHoraireLimiteOuest_FerACheval: double;
    DeclinaisonLimite_FerACheval: double;
  end;

  TLieu=record
   Long : Double;
   Lat  : Double;
   Alt  : Double;
  end;

  TPEC=record
    PEC_Step                  : Integer;
    PEC_Step_Codeur_Arcsec    : Double;

    Amplitude_PEC,
    Phase_PEC,
    Periode_PEC               : Array[1..MaxPECTABLE] of double;

    PEC_Step_old,
    FCorrectionPeriodeMs      : Integer;
  end;

  TDirection                     = (DNord, DSud, DEst, DOuest, DNone);
var
  (*
     These are GLOBAL VARIABLES
     If Written and read in different threads, access must be protected by critical sections
     to avoid race conditions.
     Race condition bugs are difficult to trace and can lead to access-violations, or DLL crash
  *)
  SpeedIntMCMT      : TSpeedInternalMCMT;
  BackLash          : TBackLashDatas    ;
  GerMountSetup     : TGermanMountSetup ;
  Lieu              : TLieu             ;
  InternalMCMT_PEC  : TInternalMCMT_PEC ;
  ExternalMCMT_PEC  : TExternalMCMT_PEC ;
  GerMountSetupSem,
  SpeedsSection,
  SectionSTSTel,
  PECSection        : TcriticalSection  ;
  Speeds            : Tspeeds           ;

  STSTel            : TStateTelescope   ;
  Hcom              : Thandle           ;
  Hcom2             : Thandle           ;
  KING_Activated,
  PEC_Activated,
  is_Parking,
  Park              : Boolean;
  PulseGuideFirmware:boolean=false;
  TimeCheck         : Integer;
//  PEC               : TPEC              ;
  Langage_French    : boolean=true;
  FreeSpeed         : boolean;
  CountRate:Array[0..2] of integer;
  TraceEnabled:boolean=false;
  ChoixPark:boolean=false;
  FirstPlot:boolean=true;
  g_Rate:Array [0..2,0..2] of TRate;
  g_Rates:Array[0..2] of TAxisRates;
  g_RateEnum:Array[0..2] of TRateEnum;
  VEnumMin,VEnumMax:Array [0..2,0..2] of double;
  g_ActionsList:OleVariant;
  LEDN,LEDS,LEDO,LEDE,LEDSLEWING:TLED;
  ExtensionDroiteRaquette,ExtensionBasseRaquette:Boolean;
  fFactVitesse,fPeriodeFondamentale:double;
  fCodeurPEC:integer;
  fCodeurPEC_Old:integer=0;
  fCodeur_Arcsec:double=0.0;
  StampCorrection: Double=0.0;
  MCMT2021: boolean=false;
  Version:string;
  MicroPas : word;
  InitPossible:boolean;
  fTrackingRate   :DriveRates;
  fTrackingDemande:integer;
  FactVitesse           : Double;

implementation
initialization
 GerMountSetupSem         :=TcriticalSection.create;
 SpeedsSection            :=TcriticalSection.create;
 PECSection               :=TcriticalSection.create;
 SectionSTSTel            :=TcriticalSection.create;
finalization
 GerMountSetupSem.Free;
 SpeedsSection   .Free;
 PECSection      .Free;
 SectionSTSTel   .Free;
end.
