object SetupTelescope: TSetupTelescope
  Left = 1055
  Top = 441
  BorderStyle = bsDialog
  Caption = 'Configuration de MCMT32'
  ClientHeight = 722
  ClientWidth = 870
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000800000000000F00000000088888800008700000000000
    00000000888888880887880000000000000000080888888880878800F0000000
    0007000887774888087788000000000000080088788878888878080000000000
    0000008878887788087888000000000000000087888777788778880000000000
    0000008788877F888780880000000000000008878887F7787788800000000000
    0000087888877788788850000000000000000888888877877885000000000000
    0000087788888777888000000000000000000888888888888850000000000000
    00000878088888888508000000000000000008800088888850000F0000000000
    0000088000008000000000000000000000000880000000000000000000000000
    0000088008880000000000000000000000000888878880000000000000000000
    000000888F888000000000000000000000000058887888000000000000000000
    0000008487887800000000000000000000000008580780000000000000000000
    0000000008080000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 20
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 870
    Height = 554
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ActivePage = TabSheet_Parametres
    Align = alTop
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    object TabSheet_Parametres: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Param'#232'tres'
      OnShow = Button_ActuelClick
      object GroupBox_AD: TGroupBox
        Left = 3
        Top = 0
        Width = 803
        Height = 195
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Axe ALPHA'
        TabOrder = 5
        object Label_Message_Reduction_AD: TLabel
          Left = 471
          Top = 125
          Width = 191
          Height = 63
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taRightJustify
          AutoSize = False
          Caption = '(Nombre de dents de la roue si entra'#238'nement par VIS SANS FIN)'
          WordWrap = True
        end
        object Label68: TLabel
          Left = 17
          Top = 89
          Width = 107
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'micro-Pas / sec'
        end
        object Label79: TLabel
          Left = 161
          Top = 89
          Width = 55
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = #181'Pas / s'
        end
        object Label87: TLabel
          Left = 266
          Top = 89
          Width = 55
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = #181'Pas / s'
        end
        object Label90: TLabel
          Left = 371
          Top = 89
          Width = 55
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = #181'Pas / s'
        end
        object Label92: TLabel
          Left = 476
          Top = 89
          Width = 55
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = #181'Pas / s'
        end
        object Edit_V_Guidage_AD: TEdit
          Left = 18
          Top = 57
          Width = 120
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Text = '1'
          OnChange = OnChange_Edit_V_Guidage_AD
        end
        object Panel_V_Guidage_AD: TPanel
          Left = 12
          Top = 29
          Width = 120
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. guidage'
          TabOrder = 0
        end
        object Pane_V_Corr_P_AD: TPanel
          Left = 147
          Top = 29
          Width = 90
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. Corr. +'
          TabOrder = 6
        end
        object Edit_V_Corr_P_AD: TEdit
          Left = 147
          Top = 57
          Width = 90
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Text = '1'
        end
        object Panel_V_Corr_M_AD: TPanel
          Left = 252
          Top = 29
          Width = 90
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. Corr -'
          TabOrder = 7
        end
        object Edit_V_Corr_M_AD: TEdit
          Left = 252
          Top = 57
          Width = 90
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Text = '1'
        end
        object Pane_V_Point_L_AD: TPanel
          Left = 357
          Top = 29
          Width = 90
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. Lente'
          TabOrder = 8
        end
        object Edit_V_Point_L_AD: TEdit
          Left = 357
          Top = 57
          Width = 90
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Text = '1'
        end
        object Panel_V_Point_R_AD: TPanel
          Left = 462
          Top = 29
          Width = 90
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. Rapide'
          TabOrder = 9
        end
        object Edit_V_Point_R_AD: TEdit
          Left = 462
          Top = 57
          Width = 90
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          Text = '1'
        end
        object ComboBox_Accel_AD: TComboBox
          Left = 567
          Top = 57
          Width = 98
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Color = clAqua
          TabOrder = 10
          Text = 'mod'#233'r'#233'e'
          Items.Strings = (
            'douce++'
            'douce+'
            'douce'
            'mod'#233'r'#233'e'
            'forte'
            'brusque')
        end
        object Panel_Accel_AD: TPanel
          Left = 567
          Top = 29
          Width = 98
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Acc'#233'l'#233'ration'
          TabOrder = 11
        end
        object Panel_DIR_AD: TPanel
          Left = 12
          Top = 119
          Width = 75
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taLeftJustify
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = ' Rotation'
          TabOrder = 12
        end
        object CheckBox_DIR_AD: TCheckBox
          Left = 17
          Top = 146
          Width = 93
          Height = 25
          Hint = 'S'#233'lectionner en fonction du sens du guidage'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Inverse'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
        end
        object Panel_Reduc_AD: TPanel
          Left = 671
          Top = 119
          Width = 112
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'R'#233'duction'
          TabOrder = 14
        end
        object Edit_Reduc_AD: TEdit
          Left = 671
          Top = 153
          Width = 112
          Height = 28
          Hint = 'Facteur de r'#233'duction'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          Text = '360'
          OnChange = Edit_Reduc_ADChange
        end
        object Edit_Resol_AD: TEdit
          Left = 674
          Top = 57
          Width = 112
          Height = 28
          Hint = #181'pas/tour'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Enabled = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 16
          Text = '9216000'
        end
        object Panel_Resol_AD: TPanel
          Left = 680
          Top = 29
          Width = 112
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'R'#233'so '#181'P/tr'
          TabOrder = 17
        end
        object CheckBoxFreeSpeed: TCheckBox
          Left = 119
          Top = 144
          Width = 121
          Height = 26
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Vitesse libre'
          TabOrder = 18
          OnClick = CheckBoxFreeSpeedClick
        end
        object Panel12: TPanel
          Left = 258
          Top = 120
          Width = 98
          Height = 26
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Pas/tour'
          TabOrder = 19
        end
        object Panel13: TPanel
          Left = 365
          Top = 119
          Width = 97
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = #181'pas/pas'
          TabOrder = 20
        end
        object Edit_PasParTour_AD: TEdit
          Left = 258
          Top = 155
          Width = 98
          Height = 28
          Hint = 'pas/tour'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          ParentShowHint = False
          ShowHint = True
          TabOrder = 21
          OnChange = Edit_PasParTour_ADChange
        end
        object Edit_MPasParPas_AD: TEdit
          Left = 365
          Top = 153
          Width = 97
          Height = 28
          Hint = 'upas/pas'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          ParentShowHint = False
          ShowHint = True
          TabOrder = 22
          OnChange = Edit_MPasParPas_ADChange
        end
      end
      object GroupBox_EEPROM: TGroupBox
        Left = 383
        Top = 396
        Width = 205
        Height = 110
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'EEPROM Mcmt32'
        TabOrder = 0
        object Panel_Lire: TPanel
          Left = 12
          Top = 36
          Width = 86
          Height = 50
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          TabOrder = 0
          object Button_Lire: TButton
            Left = 8
            Top = 3
            Width = 74
            Height = 38
            Hint = 'Lire les param'#232'tres dans MCMT'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = '&Lire'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = Button_LireClick
          end
        end
        object Panel_Ecrire: TPanel
          Left = 108
          Top = 36
          Width = 86
          Height = 50
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          TabOrder = 1
          object Button_Ecrire: TButton
            Left = 8
            Top = 3
            Width = 74
            Height = 38
            Hint = 'Ecrire les param'#232'tres dans MCMT'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = '&Ecrire'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = Button_EcrireClick
          end
        end
      end
      object GroupBox_Fichier: TGroupBox
        Left = 602
        Top = 396
        Width = 205
        Height = 110
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Fichier '#171' .INI '#187
        TabOrder = 1
        object Panel_Sauver: TPanel
          Left = 108
          Top = 36
          Width = 86
          Height = 50
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          TabOrder = 0
          object Button_Sauver: TButton
            Left = 6
            Top = 6
            Width = 74
            Height = 38
            Hint = 'Sauver les param'#232'tres dans un fichier'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = '&Sauver'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = Button_SauverClick
          end
        end
        object Panel_Charger: TPanel
          Left = 12
          Top = 36
          Width = 86
          Height = 50
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          TabOrder = 1
          object Button_Charger: TButton
            Left = 6
            Top = 6
            Width = 74
            Height = 38
            Hint = 'Charger les param'#232'tres '#224' partir d'#39'un fichier'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = '&Charger'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = Button_ChargerClick
          end
        end
      end
      object RadioGroup_Raq_Can: TRadioGroup
        Left = 192
        Top = 396
        Width = 176
        Height = 110
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Type de raquette'
        ItemIndex = 0
        Items.Strings = (
          #171' Valm'#233'ca '#187
          #171' Canadienne '#187)
        TabOrder = 2
      end
      object RadioGroup_Monture: TRadioGroup
        Left = 5
        Top = 396
        Width = 172
        Height = 110
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Type de monture'
        ItemIndex = 0
        Items.Strings = (
          #171' '#192' fourche '#187
          #171' Allemande '#187' '
          #171' Fer '#224' cheval '#187)
        TabOrder = 3
        OnClick = RadioGroup_MontureClick
      end
      object GroupBox_DEC: TGroupBox
        Left = 5
        Top = 194
        Width = 802
        Height = 192
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Axe DELTA'
        TabOrder = 4
        object Label_Message_Reduction_DEC: TLabel
          Left = 471
          Top = 129
          Width = 200
          Height = 69
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taRightJustify
          AutoSize = False
          Caption = '(Coefficient a priori non entier si entra'#238'nement par C'#194'BLE)'
          WordWrap = True
        end
        object Label_Message_Rotation_DEC: TLabel
          Left = 113
          Top = 122
          Width = 121
          Height = 67
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          AutoSize = False
          Caption = '(Quand le t'#233'lescope est NON retourn'#233')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label18: TLabel
          Left = 17
          Top = 89
          Width = 107
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'micro-Pas / sec'
        end
        object Label21: TLabel
          Left = 161
          Top = 89
          Width = 55
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = #181'Pas / s'
        end
        object Label22: TLabel
          Left = 266
          Top = 89
          Width = 55
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = #181'Pas / s'
        end
        object Label23: TLabel
          Left = 371
          Top = 89
          Width = 55
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = #181'Pas / s'
        end
        object Label24: TLabel
          Left = 476
          Top = 89
          Width = 55
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = #181'Pas / s'
        end
        object Panel_V_Guidage_DEC: TPanel
          Left = 12
          Top = 29
          Width = 120
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. guidage'
          TabOrder = 0
        end
        object Panel_V_Corr_P_DEC: TPanel
          Left = 147
          Top = 30
          Width = 90
          Height = 26
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. Corr. +'
          TabOrder = 1
        end
        object Panel_V_Corr_M_DEC: TPanel
          Left = 252
          Top = 29
          Width = 90
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. Corr -'
          TabOrder = 2
        end
        object Panel_V_Point_L_DEC: TPanel
          Left = 357
          Top = 30
          Width = 90
          Height = 26
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. Lente'
          TabOrder = 3
        end
        object Panel_V_Point_R_DEC: TPanel
          Left = 462
          Top = 29
          Width = 90
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. Rapide'
          TabOrder = 4
        end
        object Edit_V_Guidage_DEC: TEdit
          Left = 12
          Top = 57
          Width = 120
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          Text = '0'
          OnChange = OnChange_Edit_V_Guidage_DEC
        end
        object Edit_V_Corr_P_DEC: TEdit
          Left = 147
          Top = 57
          Width = 90
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          Text = '1'
        end
        object Edit_V_Corr_M_DEC: TEdit
          Left = 252
          Top = 57
          Width = 90
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          Text = '1'
        end
        object Edit_V_Point_L_DEC: TEdit
          Left = 357
          Top = 57
          Width = 90
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          Text = '1'
        end
        object Edit_V_Point_R_DEC: TEdit
          Left = 462
          Top = 57
          Width = 90
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          Text = '1'
        end
        object Panel_Accel_DEC: TPanel
          Left = 567
          Top = 29
          Width = 98
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Acc'#233'l'#233'ration'
          TabOrder = 10
        end
        object ComboBox_Accel_DEC: TComboBox
          Left = 567
          Top = 57
          Width = 98
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Color = clAqua
          TabOrder = 11
          Text = 'mod'#233'r'#233'e'
          Items.Strings = (
            'douce++'
            'douce+'
            'douce'
            'mod'#233'r'#233'e'
            'forte'
            'brusque')
        end
        object Panel_Reduc_DEC: TPanel
          Left = 680
          Top = 117
          Width = 112
          Height = 26
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'R'#233'duction'
          TabOrder = 12
        end
        object Edit_Reduc_DEC: TEdit
          Left = 680
          Top = 152
          Width = 112
          Height = 28
          Hint = 'Facteur de r'#233'duction'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          Text = '360.1'
          OnChange = Edit_Reduc_DECChange
        end
        object Panel_DIR_DEC: TPanel
          Left = 12
          Top = 119
          Width = 98
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Rotation'
          TabOrder = 14
        end
        object CheckBox_DIR_DEC: TCheckBox
          Left = 17
          Top = 146
          Width = 93
          Height = 25
          Hint = 'Non retourn'#233' (Montures allemande ou Fer-'#224'-cheval)'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Inverse'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
        end
        object Pane_Resol_DEC: TPanel
          Left = 680
          Top = 30
          Width = 112
          Height = 26
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'R'#233'so '#181'P/tr'
          TabOrder = 16
        end
        object Edit_Resol_DEC: TEdit
          Left = 680
          Top = 59
          Width = 112
          Height = 28
          Hint = #181'pas/tour'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
          Text = '9218560'
        end
        object Panel14: TPanel
          Left = 264
          Top = 117
          Width = 98
          Height = 26
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Pas/tour'
          TabOrder = 18
        end
        object Panel15: TPanel
          Left = 371
          Top = 117
          Width = 97
          Height = 26
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = #181'pas/pas'
          TabOrder = 19
        end
        object Edit_PasParTour_DEC: TEdit
          Left = 264
          Top = 152
          Width = 98
          Height = 28
          Hint = 'pas/tour'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
          OnChange = Edit_PasParTour_DECChange
        end
        object Edit_MPasParPas_DEC: TEdit
          Left = 371
          Top = 152
          Width = 97
          Height = 28
          Hint = 'upas/pas'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          ParentShowHint = False
          ShowHint = True
          TabOrder = 21
          OnChange = Edit_MPasParPas_DECChange
        end
      end
    end
    object TabSheet_Calcul: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Calcul'
      ImageIndex = 1
      OnShow = Button_ActuelClick
      object Label_Message_Calcul: TLabel
        Left = 297
        Top = 458
        Width = 500
        Height = 40
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 
          'Les valeurs calcul'#233'es seront transpos'#233'es dans l'#39'onglet '#171' Param'#232't' +
          'res '#187' et l'#39'EEPROM de MCMT reste inchang'#233'e. '
        WordWrap = True
      end
      object Panel_Utiliser: TPanel
        Left = 168
        Top = 458
        Width = 120
        Height = 49
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 0
        object Button_Utiliser: TButton
          Left = 3
          Top = 8
          Width = 105
          Height = 37
          Hint = 'Transf'#233'rer les r'#233'sultats dans la fen'#234'tre des param'#232'tres'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = '&Utiliser'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = Button_UtiliserClick
        end
      end
      object Panel_Actuel: TPanel
        Left = 23
        Top = 458
        Width = 120
        Height = 49
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 1
        object Button_Actuel: TButton
          Left = 2
          Top = 5
          Width = 105
          Height = 37
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = '&Actuel'
          TabOrder = 0
          OnClick = Button_ActuelClick
        end
      end
      object GroupBox_Choix_Calcul: TGroupBox
        Left = 5
        Top = 5
        Width = 804
        Height = 166
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ParentCustomHint = False
        Caption = 'Choix des vitesses angulaires'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label_choix_AD: TLabel
          Left = 18
          Top = 62
          Width = 41
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Alpha'
        end
        object Label_Choix_DEC: TLabel
          Left = 18
          Top = 98
          Width = 38
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Delta'
        end
        object Label114: TLabel
          Left = 98
          Top = 128
          Width = 112
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = 'Vitesse sid'#233'rale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label115: TLabel
          Left = 225
          Top = 128
          Width = 82
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = 'Vit. sid'#233'rale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label116: TLabel
          Left = 330
          Top = 128
          Width = 82
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = 'Vit. sid'#233'rale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label118: TLabel
          Left = 551
          Top = 128
          Width = 61
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = 'degr'#233' / s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label117: TLabel
          Left = 450
          Top = 128
          Width = 61
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = 'degr'#233' / s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label119: TLabel
          Left = 18
          Top = 128
          Width = 38
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = 'Unit'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Panel_Guidage_Choix: TPanel
          Left = 90
          Top = 29
          Width = 120
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. Guidage'
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
        end
        object Panel_Corr_P_Choix: TPanel
          Left = 225
          Top = 29
          Width = 90
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = ' Vit. Corr +'
          TabOrder = 1
        end
        object Panel_Point_L_Choix: TPanel
          Left = 435
          Top = 29
          Width = 90
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. Lente'
          TabOrder = 2
        end
        object Panel_Point_R_Choix: TPanel
          Left = 540
          Top = 29
          Width = 90
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. Rapide'
          TabOrder = 3
        end
        object Panel_Corr_N_Choix: TPanel
          Left = 330
          Top = 29
          Width = 90
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. Corr -'
          ParentShowHint = False
          ShowHint = False
          TabOrder = 4
        end
        object Edit_V_Corr_P_AD_Calc: TEdit
          Left = 224
          Top = 57
          Width = 90
          Height = 28
          Hint = '* Vitesse sid'#233'rale'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          Text = '1.25'
          OnChange = Evaluer_Resultats
        end
        object Edit_V_Guidage_AD_Calc: TEdit
          Left = 95
          Top = 53
          Width = 120
          Height = 28
          Hint = '* Vitesse sid'#233'rale'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          Text = '1'
          OnChange = OnChange_Edit_V_Guidage_AD_Calc
        end
        object Edit_V_Guidage_DEC_Calc: TEdit
          Left = 90
          Top = 93
          Width = 120
          Height = 28
          Hint = '* Vitesse sid'#233'rale'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          Text = '0'
          OnChange = OnChange_Edit_V_Guidage_DEC_Calc
        end
        object Edit_V_Corr_P_DEC_Calc: TEdit
          Left = 225
          Top = 93
          Width = 90
          Height = 28
          Hint = '* Vitesse sid'#233'rale'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          Text = '0.25'
          OnChange = Evaluer_Resultats
        end
        object Edit_V_Corr_M_AD_Calc: TEdit
          Left = 335
          Top = 57
          Width = 90
          Height = 28
          Hint = '* Vitesse sid'#233'rale'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          Text = '0.75'
          OnChange = Evaluer_Resultats
        end
        object Edit_V_Corr_M_DEC_Calc: TEdit
          Left = 330
          Top = 93
          Width = 90
          Height = 28
          Hint = '* Vitesse sid'#233'rale'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          Text = '0.25'
          OnChange = Evaluer_Resultats
        end
        object Edit_V_Point_L_AD_Calc: TEdit
          Left = 435
          Top = 57
          Width = 90
          Height = 28
          Hint = #176'/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          Text = '0.1'
          OnChange = Evaluer_Resultats
        end
        object Edit_V_Point_R_AD_Calc: TEdit
          Left = 540
          Top = 57
          Width = 90
          Height = 28
          Hint = #176'/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          Text = '2'
          OnChange = Evaluer_Resultats
        end
        object Edit_V_Point_L_DEC_Calc: TEdit
          Left = 435
          Top = 93
          Width = 90
          Height = 28
          Hint = #176'/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          Text = '0.1'
          OnChange = Evaluer_Resultats
        end
        object Edit_V_Point_R_DEC_Calc: TEdit
          Left = 540
          Top = 93
          Width = 90
          Height = 28
          Hint = #176'/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clAqua
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          Text = '2'
          OnChange = Evaluer_Resultats
        end
        object Edit_Reduc_AD_Calc: TEdit
          Left = 675
          Top = 57
          Width = 113
          Height = 28
          Hint = 'Facteur de r'#233'duction'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          Text = '360'
          OnChange = Evaluer_Resultats
        end
        object Edit_Reduc_DEC_Calc: TEdit
          Left = 675
          Top = 93
          Width = 113
          Height = 28
          Hint = 'Facteur de r'#233'duction'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          Text = '360'
          OnChange = Evaluer_Resultats
        end
        object Panel3: TPanel
          Left = 675
          Top = 29
          Width = 113
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'R'#233'duction'
          ParentShowHint = False
          ShowHint = False
          TabOrder = 17
        end
      end
      object GroupBox_Resultats_Calcul: TGroupBox
        Left = 6
        Top = 296
        Width = 806
        Height = 153
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'R'#233'sultats '
        Enabled = False
        TabOrder = 3
        object Label_Resultats_DEC: TLabel
          Left = 17
          Top = 98
          Width = 42
          Height = 24
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Delta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label_Unites_Resultats: TLabel
          Left = 17
          Top = 128
          Width = 38
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = 'Unit'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label_Unite_Resultats_Guidage: TLabel
          Left = 111
          Top = 128
          Width = 55
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = #181'Pas / s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label_Unite_Resultats_Corr_P: TLabel
          Left = 242
          Top = 128
          Width = 55
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = #181'Pas / s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label_Unite_Resultats_Point_L: TLabel
          Left = 452
          Top = 128
          Width = 55
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = #181'Pas / s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label_Unite_Resultats_Point_R: TLabel
          Left = 557
          Top = 128
          Width = 55
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = #181'Pas / s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label_Resultats_AD: TLabel
          Left = 18
          Top = 62
          Width = 49
          Height = 24
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Alpha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label_Unite_Resultats_Corr_M: TLabel
          Left = 345
          Top = 128
          Width = 55
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = #181'Pas / s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label_Unite_Resultats_Resol: TLabel
          Left = 686
          Top = 128
          Width = 75
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = #181'Pas / tour'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          WordWrap = True
        end
        object Panel_Guidage_Resultats: TPanel
          Left = 90
          Top = 29
          Width = 120
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. Guidage'
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
        end
        object Panel_Corr_P_Resultats: TPanel
          Left = 225
          Top = 29
          Width = 90
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. Corr +'
          TabOrder = 1
        end
        object Panel_Point_L_Resultats: TPanel
          Left = 438
          Top = 29
          Width = 90
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. Lente'
          TabOrder = 2
        end
        object Panel_Point_R_Resultats: TPanel
          Left = 543
          Top = 29
          Width = 90
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. Rapide'
          TabOrder = 3
        end
        object Panel_Resol_Resultats: TPanel
          Left = 675
          Top = 29
          Width = 113
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'R'#233'solution'
          ParentShowHint = False
          ShowHint = False
          TabOrder = 4
        end
        object Panel_Corr_M_Resultats: TPanel
          Left = 330
          Top = 29
          Width = 90
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Vit. Corr -'
          TabOrder = 5
        end
        object Edit_Resultats_Guidage_AD: TEdit
          Left = 90
          Top = 57
          Width = 120
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object Edit_Resultats_Corr_P_AD: TEdit
          Left = 225
          Top = 57
          Width = 90
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
        object Edit_Resultats_Corr_M_AD: TEdit
          Left = 330
          Top = 57
          Width = 90
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object Edit_Resultats_Point_L_AD: TEdit
          Left = 438
          Top = 57
          Width = 90
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object Edit_Resultats_Point_R_AD: TEdit
          Left = 540
          Top = 57
          Width = 90
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
        end
        object Edit_Resol_AD_Calc: TEdit
          Left = 675
          Top = 57
          Width = 113
          Height = 28
          Hint = #181'pas/tour'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          Text = '9216000'
        end
        object Edit_Resultats_Guidage_DEC: TEdit
          Left = 90
          Top = 93
          Width = 120
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
        end
        object Edit_Resultats_Corr_P_DEC: TEdit
          Left = 225
          Top = 93
          Width = 90
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
        end
        object Edit_Resultats_Corr_M_DEC: TEdit
          Left = 330
          Top = 93
          Width = 90
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
        end
        object Edit_Resultats_Point_L_DEC: TEdit
          Left = 438
          Top = 93
          Width = 90
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
        end
        object Edit_Resultats_Point_R_DEC: TEdit
          Left = 540
          Top = 93
          Width = 90
          Height = 28
          Hint = #181'pas/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
        end
        object Edit_Resol_DEC_Calc: TEdit
          Left = 675
          Top = 93
          Width = 113
          Height = 28
          Hint = #181'pas/tour'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
          Text = '9216000'
        end
      end
      object GroupBox2: TGroupBox
        Left = 6
        Top = 170
        Width = 644
        Height = 126
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Valeurs par d'#233'faut'
        Color = clBtnHighlight
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        object Label13: TLabel
          Left = 17
          Top = 68
          Width = 42
          Height = 24
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Delta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 17
          Top = 98
          Width = 38
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = 'Unit'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label41: TLabel
          Left = 551
          Top = 98
          Width = 61
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = 'degr'#233' / s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 18
          Top = 32
          Width = 49
          Height = 24
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Alpha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 96
          Top = 98
          Width = 112
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = 'Vitesse sid'#233'rale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 228
          Top = 98
          Width = 82
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = 'Vit. sid'#233'rale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label113: TLabel
          Left = 332
          Top = 98
          Width = 82
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = 'Vit. sid'#233'rale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 450
          Top = 98
          Width = 61
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Caption = 'degr'#233' / s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit_Defaut_Guidage_AD: TEdit
          Left = 90
          Top = 27
          Width = 120
          Height = 28
          Hint = '* Vitesse sid'#233'rale'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = '1'
        end
        object Edit_Defaut_Guidage_DEC: TEdit
          Left = 90
          Top = 63
          Width = 120
          Height = 28
          Hint = '* Vitesse sid'#233'rale'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Text = '0'
        end
        object Edit_Defaut_Corr_P_AD: TEdit
          Left = 225
          Top = 27
          Width = 90
          Height = 28
          Hint = '* Vitesse sid'#233'rale'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Text = '1.25'
        end
        object Edit_Defaut_Corr_P_DEC: TEdit
          Left = 225
          Top = 63
          Width = 90
          Height = 28
          Hint = '* Vitesse sid'#233'rale'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Text = '0.25'
        end
        object Edit_Defaut_Corr_M_AD: TEdit
          Left = 330
          Top = 27
          Width = 90
          Height = 28
          Hint = '* Vitesse sid'#233'rale'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Text = '0.75'
        end
        object Edit_Defaut_Corr_M_DEC: TEdit
          Left = 330
          Top = 63
          Width = 90
          Height = 28
          Hint = '* Vitesse sid'#233'rale'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          Text = '0.25'
        end
        object Edit_Defaut_Point_L_AD: TEdit
          Left = 435
          Top = 27
          Width = 90
          Height = 28
          Hint = #176'/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          Text = '0.1'
        end
        object Edit_Defaut_Point_L_DEC: TEdit
          Left = 435
          Top = 63
          Width = 90
          Height = 28
          Hint = #176'/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          Text = '0.1'
        end
        object Edit_Defaut_Point_R_AD: TEdit
          Left = 540
          Top = 27
          Width = 90
          Height = 28
          Hint = #176'/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          Text = '2'
        end
        object Edit_Defaut_Point_R_DEC: TEdit
          Left = 540
          Top = 63
          Width = 90
          Height = 28
          Hint = #176'/s'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Alignment = taCenter
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          Text = '2'
        end
      end
      object Panel_Retour_Defaut: TPanel
        Left = 681
        Top = 198
        Width = 113
        Height = 80
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 5
        object Button_Retour_Defaut: TButton
          Left = 6
          Top = 3
          Width = 98
          Height = 68
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Retour aux valeurs par d'#233'faut'
          TabOrder = 0
          WordWrap = True
          OnClick = Button_Retour_DefautClick
        end
      end
    end
    object TabSheet_Pointage: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Pointage'
      ImageIndex = 5
      object GroupBox_Pointage_Allemande: TGroupBox
        Left = 3
        Top = 3
        Width = 812
        Height = 507
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Monture '#171' allemande '#187
        TabOrder = 1
        Visible = False
        object GroupBox_Etat_Telescope_Allemande: TGroupBox
          Left = 14
          Top = 29
          Width = 381
          Height = 300
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = #201'tat actuel du t'#233'lescope'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          StyleElements = [seFont, seClient]
          object Image_Telescope_NonRetourne_Allemande: TImage
            Left = 197
            Top = 47
            Width = 111
            Height = 117
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            AutoSize = True
            Picture.Data = {
              07544269746D6170C6990000424DC69900000000000036000000280000006F00
              000075000000010018000000000090990000C40E0000C40E0000000000000000
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE665F5DBEA7
              A1DCC0BAEFD0CBF8D8D3F8DCD3FEDED5FCDDD4F5D8CFE9CFC7E1C5C0D4BBB4C0
              AAA3AD999298847F74666351474425211EEFE9E6DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEECBC5C5625F5F83807F9D9998DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEE6F6665BFA7A1DCC0BBEFD0CBFADAD1FADCD3FCDED5
              FCDDD4F5D8CFE9CFC7E0C5BFD5BBB4C0AAA3AB999298847F7466635047442723
              21E7E4E2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE9E999929272A2B2A2A2121221F1F1F
              61615EDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE766D6BC0A9
              A2DAC2BAEFD1C8FADAD1FADCD3FCDED5FCDDD4F5D6CDEACFC5E2C5BFD4BBB4C0
              A9A5AE999496847F7467635045432C2726E1E0DEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE625C5A6B635CC2AFA7A2948C52494763615EDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEE736A67C3ABA6DCC2BBEFD0CBF8D9D0FBDCD3FCDED5
              FCDDD4F5D6CFEDCFC7E2C5BFD4BAB3C0AAA3AD989296847F7467625045442622
              21EAE6E5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE8B8581F6E1D6FFEFE4B6A69D6A625C
              65615EDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE665E5DC0AA
              A5DCC2BBEFD1CCF8D9D0FBDCD4FEDDD5FCDDD4F6D6CFEBCFC7E1C5BED4BBB4C2
              AAA3AD999496847F746762504744231E1EEFEAE9DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE98908CDAC7BC8076701211111918165E5959DAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEE625959BEA7A2DCC2BBEED1CCF8D9D1FADCD3FCDDD5
              FCDDD4F5D8CFEACFC5E0C5BED4BAB3C0AAA3AD989295847F746762504744231F
              1EF2EEEBDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE58555432323236343623211F1F1E1B
              90837BA99D968C817FADA29E9E9995E6DEDDD0C9C82E2B2BDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE6F6665C0A9
              A3DAC2BBEED0CBF8D9D1FBDCD4FCDDD5FCDCD4F5D6D0EACDC7E1C5BFD5BAB3C2
              AAA3AB989295847F746663504545292322E9E5E4DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED4CD
              CC262725454445484545332E2B16151580746EDCC7BEBBAAA2EEDACFE5D1C7C8
              B7AE8B7F78090A08BEBBBADAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEE776D6DC0AAA3DCC0BBEFD1CCF8D9D1FADCD4FCDDD5
              FADCD4F5D8CFEDCFC7E0C5BFD4BBB3C2A9A3AE989196847F7466635045442B26
              23E2DEDDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEF8F2F1A198961D211E3434341F1E1F0705050D0E0D
              0C0D0D615C5A898584968F8D736F6D968B85514C48080908B3AFADDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE726966C4AD
              A5DAC0BBF1D1CBF8D8D1FBDCD5FCDDD4FBDCD4F7D6D0EBCFC7E1C5BFD3BBB3C0
              A9A3AE989296847F74666351454523211EE9E5E4DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEBAB6B685807F5958553C3A38302F2F2F2F
              2F2929292323231E1E1E2727272627262222221010101F1E1E2B2A2A37343452
              504E1111100C0A0CC3BEBBDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC5C0BF9E9999
              B8B3B2F7F2F1DAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEE625A59BFA9A2C9B1AACDB6AECFB3B1BEA6A0B39D96
              AF9A94988580857673BCA7A19C8B85897874806F6B8574706F625F504544221F
              1BE9E2E0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE8985833734341E1E1D11
              11111E1D1D2C2C2C3C3C3C4B4B4B525252454545555555545454656565737272
              4847473433344341432222220A0A0A111011090909050507252323635F5FE0DA
              D8F5EFED2C2C2B3433332A292A32333230302F1D1D1D6F6A6BDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE5E2E2332F2E3D36
              34251F1F7A6A6691625E100C0D18100E100404542926763D3D4033321E0D0C2F
              1B1B5847442A23223A302F49403F251F1EEFE7E6DAEAEEDAEAEEDAEAEEDAEAEE
              9D98951B1A180D0D0C2E2E2F5D5D5D7E7E7EADADADE0E0E0EBEBEBB1B1B1FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFEF6F6F6EEEDEEE2E1E2C7C8C7BEBBBE78
              7678737373383B3A1E1E1E0403030404042526252626267474747E7E7E5C5C5C
              444444272727414040ADA6A6F8F3F2000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEADA6A1524C496D2E2C4312113003043800015200005A0100480000520000
              3700003B00013F01001A01004800001E00011A0000250000180303211B1B2723
              23EBE7E5DAEAEEDAEAEEDAEAEE655F5F0E0E0E404041A1A1A1E0E0E1FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFD6D6D6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFBFEFC
              F5F6F5EEEEEEE4E4E5D5D5D5AFAFAF3D3D3DB2B2B2A2A2A28888886666662727
              273737375D5D5D696969909090C0C0BF8181812626263737375F5D5CD3CBC800
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAD3D05A44436315145505054D00006700016600
              013D00003300004900003701002200011800011900001F00003600005901006E
              00001400016700002E0001080705191516E7E4E2DAEAEEDAEAEECDC5C4212222
              A2A5A3DADADAF2F2F3E4E4E4F3F5F2E1E1E0FCFBFBFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6EEEEEEE4E4E4D8D8D8CDCDCDB3
              B3B37878788787877F7F7F5555552E2E2E1414142222222323232B2B2B3D3D3D
              44434338383838363774706FFFFFFF000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE98919041232248
              00004400005400002A01001D00001B01001E00012C00014700017200008F0101
              A70101C00301D60303DE0503E70505B407071400011F00015900000C00010D0A
              0CEEE6E2DAEAEEDAEAEED8D4D3707270676767A7A7A7909090DCDCDCF8F8F8FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F6F6F6EEEEEEE4E4E4D9D9D9CDCDCDC0C0C0B2B2B29494946E6E6E1212121414
              140D0D0D373737898989A9A9A99899993C3D3D4343433333331111117E7C7800
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE7655541F00013400013400015601006300017F00019C01
              01B70101CD0301E00403E70507ED0808F30D0CFB1111FF1515FF1919FF1D1DC3
              16182201011900013D00004D00000500001B1B1BDAEAEEDAEAEED0CDCC8C8D8C
              888888A6A6A6F2F2F2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF5F5F5EEEEEEE4E4E4DADADACDCDCDC0
              C0C0B3B3B3A2A2A28D8D8D5E5E5E3333331010109E9E9EFFFFFFFFFFFFFFFFFF
              D8D8D88B8C8B33333340403FC9C5C4000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC4B3B2520807C2
              0101D90403E20705E70807EF0A0AF50E0DFB1212FF1616FF1A1BFF1E1EFF2222
              FF2522FF2525FF2525FF2322FB211FB114141D01002100011500003B00004400
              000701033A3838EFEAE7989191696769C7C7C7E4E4E4F2F2F2FEFEFEFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F6F6F6EEEEEEE4E4E4D9D9D9CFCFCFC2C2C2B2B2B2A2A2A28F8F8F7A7A7A5E5E
              5E2A2A2A959595FFFFFFFFFFFFFFFFFFD6D8D89495943D3C3CDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEF2C5C3E61010FF1516FF1A19FF1F1EFF2222FF23
              25FF2525FF2523FF2322FF1F1FEB1B1BCF1618AE11125408097B0A095E040485
              05051800001F00001F00001800005A00003700001510101112111616183A383A
              CFCFCFE4E4E4F3F3F3FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7EEEEEEE4E4E4D9D9D9CDCDCDC2
              C2C2B2B2B2A2A2A28F8F8F7A7A7A616161343434919191FFFFFFFFFFFFFFFFFF
              D9D8D8949495484747DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEA1
              2122FF2525FF2323FA1E1DDE1919C01414870D0D5207051F0303080103030101
              0103010100031A1A1A4B1111D30907B707071500002200031E00001F00011900
              01670001190101141414151515323032CFCFCFE4E4E4F3F3F3FEFEFEFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F5F5F5EEEEEEE5E5E5DADADACDCDCDC2C2C2B3B3B3A2A2A28F8F8F7A7A7A6262
              62333333CBCBCBFFFFFFFFFFFFFFFFFFD5D8D6949494595555DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE1AEAE74090A6D0707360A0A0100010401
              01050303030303160304070507040405010300030103585658161214B80808C7
              07071600032100002100012100001E00011403030505051919191B1B1B3A3A3A
              CDCDCDE5E5E5F3F3F3FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6EEEEEEE5E5E5DADADACDCDCDC0
              C0C0B3B3B3A2A2A28F8F8F7B7B7B616161343434BBBBBBFFFFFFFFFFFFFFFFFF
              D9D6D9959595555152DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE7E6E16A
              62622B03042201030A04030303040504050504040403042A03054B4C4C121212
              0404030805053A0E10584545AF0D0CCD07081D00012200002100002100002100
              00110808090909030303090909696969CFCFCFE4E4E4F3F3F3FEFEFEFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F6F6F6EEEEEEE5E5E5DADADACFCFCFC0C0C0B3B3B3A2A2A29090907A7A7A6262
              62383838A6A6A6FFFFFFFFFFFFFFFFFFD8D8D89595954E4C4DDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEE1F1E1E2222220404040403040303010404030707
              071010101B1B1B2F2F2E2121221F1F1F10100E260101E20809FC0909FF0A09D8
              0808230101210001210000210000220000100707070707080808080808898989
              CFCFCFE4E4E4F3F3F3FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6EEEEEEE4E4E4DADADACFCFCFC2
              C2C2B2B2B2A2A2A28F8F8F7A7A7A6262623A3A3A929292FFFFFFFFFFFFFFFFFF
              D8D9D99595963D3C3CDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE736F6E1D1D1E1A
              1A1A1212120A0A090909090D0D0D1212142322233230300C0C0A141214343434
              1D1E1E191616BB0808FF0A0CFF0A09E209072701012300011F00012100002100
              001B11112C2C2C0707070808087A7A7ACFCFCFE4E4E4F3F3F3FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F6F6F6EEEEEEE5E5E5DADADACDCDCDC0C0C0B2B2B2A2A2A29090907A7A7A6161
              613737378C8C8CFFFFFFFFFFFFFFFFFFD8D9D9959698454444DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              FCF8F6817F7E3736362727272A2B2A3030301919190808080707071010102222
              213F3F3D3C3F3B51514E6F6D6D706D6D1F211F1D1B1DA00707FF090AFF0909F1
              09092901002200002100002200001E0000120A0A3F3F40010101040404787878
              CFCFCFE4E4E4F2F2F2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6EDEDEDE4E4E4DADADACDCDCDC0
              C0C0B2B2B2A2A2A29090907A7A7A616161333333C8C8C8FFFFFFFFFFFFFFFFFF
              D9D9D9959595565554DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE32302F10111032322F2E2C2C21212150
              4E4E454545404040666665B7B6B659595572706F383D3C343A3B3B47481E272A
              374E550405085A161BB10909F10908FF0A092B01012100012200002200001F00
              001009093B3A3B040404030303A5A5A5CFCFCFE4E4E4F2F2F2FEFEFEFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F6F6F6EEEEEEE5E5E5D9D9D9CFCFCFC2C2C2B2B2B2A2A2A29090907B7B7B6262
              62363636B8B8B8FFFFFFFFFFFFFFFFFFD9D9D9959595555251DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              7474723232326B6D6B1818186363623030303230326A69690A0A09080507071E
              230E546501708D0081A101A0C80088AD038FB401789801637C013C4B2E222A95
              0E102C01031F00012300002100001800001510103A3A3A040404030303959595
              CFCFCFE2E2E2F2F2F2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6EEEEEEE5E5E5DADADACFCFCFC2
              C2C2B2B2B2A2A2A29090907A7A7A616161383838A3A3A3FFFFFFFFFFFFFFFFFF
              D9D9D99696964C4B4BDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE4D4C4B5656564B4B4B4140410507074B
              4948BEB7B3504C4B273032015063018DAF01A9D401AAD500ABD401ABD601AAD6
              016F8C013A48019DC501AAD5019CC3045E76072F3B16080C2201011D00000E01
              001B1515454445030303040404878787CFCFCFE4E4E4F2F2F2FEFEFEFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F6F6F6EEEEEEE5E5E5DADADACDCDCDC0C0C0B2B2B2A2A2A29090907B7B7B6262
              623A3A3A909090FFFFFFFFFFFFFFFFFFDADADA9998983C3B3ADAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              A6A3A13F3D3D3A37375654525D5A58EAE6E4DAEAEEEBEBEA227A9000A9D101AB
              D801ABD601AAD500ABD401ABD503ABD6019DC5016F8801A0C801AAD601AAD501
              A6D0017B9A04333F150A0C140001160001181011494849030303040404777777
              CFCFCFE4E4E4F2F2F2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6EEEEEEE5E5E5DADADACFCFCFC0
              C0C0B2B2B2A2A2A29090907A7A7A626262383838898989FFFFFFFFFFFFFFFFFF
              DADADA999898434140DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEE5599A9039EC501AAD401AAD601AAD603AAD601ABD501ABD603ABD6
              01AAD501AAD501AAD501AAD501AAD501ABD601ABD40096BC003C4C0A10121909
              093D38383C3C3B030303040404737373CFCFCFE4E4E4F2F2F2FEFEFEFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F6F6F6EDEDEDE5E5E5DADADACFCFCFC2C2C2B3B3B3A3A3A39090907B7B7B6262
              62343434C5C5C5FFFFFFFFFFFFFFFFFFDADADA989898545150DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEFBF7F55A5958B6AFADDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC2CDD00194BA01ABD501AAD501AA
              D501AAD501AAD501ABD501AAD601ABD601AAD601AAD501AAD501AAD501AAD501
              ABD600ABD500ABD6038DB205323D0D0E101F1E1F080909030303030303A3A3A3
              CFCFCFE2E2E2F2F2F2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6EEEEEEE5E5E5DADADACFCFCFC0
              C0C0B2B2B2A2A2A29090907B7B7B626262373737B6B6B6FFFFFFFFFFFFFFFFFF
              D9D9D9969895545150DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE5451500103
              03222222DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEE588F9C01A6D001ABD601AAD501AAD501AAD501AAD500AAD501AAD601ABD5
              01ABD501AAD501AAD501AAD501AAD500AAD501ABD601AAD501ABD60183A21E2B
              2E373737050404030303030303949494CDCDCDE5E5E5F3F3F3FEFEFEFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F6F6F6EEEEEEE5E5E5DADADACFCFCFC2C2C2B2B2B2A2A2A29191917B7B7B6363
              633B3B3BA1A1A1FFFFFFFFFFFFFFFFFFDADADA9698964C4B49DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEEFE9E74E4C4B030304030303040304B1ABA9DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE198DAB01AAD501AAD801AAD501AA
              D501AAD501AAD50196BB0194B7037C9A017C9D01789901A1C901AAD501AAD600
              ABD601ABD801ABD601AAD60395BE1A2F363D3C3D101010030303040404848484
              CDCDCDE2E2E2F2F2F2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6EEEEEEE4E4E4DADADACFCFCFC2
              C2C2B2B2B2A2A2A29090907A7A7A6363633C3C3C8D8D8DFFFFFFFFFFFFFFFFFF
              DCDCDC9998993A3838DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE706B6B0404040301030304
              040505053A3636DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEEF
              F5F30E7B96017A99039CC301ABD601ABD601A3CD14556A3A121615151A1E161D
              271F272907071027300181A3019CC4008BAD017A98036984016D880159702230
              343F3D3F1E1F1F040404040404767676CDCDCDE2E2E2F2F2F2FEFEFEFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F7F7F7EEEEEEE5E5E5DADADACFCFCFC2C2C2B3B3B3A2A2A29090907B7B7B6262
              62383838848484FFFFFFFFFFFFFFFFFFDCDCDC999A9A434343DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEADAAA93C3C3C2229295C5D5DE0DAD8A29E9D33
              33320C0D0D29292719191903030103040403030301000183807FDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEECBD4D5017B9A011B22005F7801ABD501A0
              C808586E6605055E04032501012201011000000C00000501010403030C000104
              00010100010301010101010A01011E21213B3A3B191918010103040404707070
              CFCFCFE2E2E2F2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EEEEEEE5E5E5DADADACFCFCFC2
              C2C2B3B3B3A2A2A29090907B7B7B626262363636C4C4C4FFFFFFFFFFFFFFFFFF
              DCDCDC989999545252DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE767774070E12
              001A2201191F00181E0915191010112A2A291D1E1B0D0D0D1E1E1E0303030303
              03030303010101625F5EDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEF5
              F3EF01627A01617A013D4D051E2608080A1901034B03035F0404780504840505
              8D0505A10505AF0705D30807A305050901010303030301030301030E05042325
              233737370C0A0A030303030303A1A1A1CDCDCDE4E4E4F2F2F2FEFEFEFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F7F7F7EEEEEEE5E5E5DADADACFCFCFC2C2C2B2B2B2A2A2A29191917B7B7B6262
              62373737B3B3B3FFFFFFFFFFFFFFFFFFDADADA99999950504EDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEFCF3F2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEECCC9C5122125011821002127012B3600161B001E27030C0E2C
              2B2B0808080505052626260301030100000303030101012B2A2ADAEAEEDAEAEE
              DAEAEEDAEAEEE9E4E195918F3D3B3A1510101503033803045D04047F0505A907
              05D60808FA090AF50909F50A08FB0A0AFF0909FF0A09FF0A08FF0A096F050704
              0304030403010101030303101010222222383838040404030303030303929292
              CDCDCDE4E4E4F2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6EEEEEEE5E5E5DADADACFCFCFC2
              C2C2B2B2B2A3A3A39191917B7B7B6262623C3C3C9E9E9EFFFFFFFFFFFFFFFFFF
              DCDCDC9A9A9A494848DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE9996944040405E5E5E616161A7
              A2A1DAEAEE9691904E4C4C4E4B4B6F6E6EB3AFAEDAEAEE45555A00151A001F2A
              001F29001F29001E29010D101011141E1E1E2222221E1E1E2727270101010303
              0301010101010104040487817F4B43411911111604043201035904047B0504A7
              0505D10805F60909FF0A0AFF0909FF090AFA0A099205074C0103330001610304
              D80808FF0A09FF0A0AFC0A0A3707071211121515150707070707071414142323
              233D3D3D050505040404030303838383CDCDCDE2E2E2F2F2F2FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F7F7F7EEEEEEE5E5E5DADADACFCFCFC2C2C2B3B3B3A3A3A39191917B7B7B6363
              633C3C3C8C8C8CFFFFFFFFFFFFFFFFFFDCDCDC9C9C9C383737DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              7672707272725959597E7E7E949494525251817E7E5A5C5C5F5F5F5E5D5D4E50
              4E616262847F7F19373D001B2300212A00212A001F2A01151A0C0D0D2727272A
              2A2A2626261515152A2A2A0C0D0D1011110803031201012E0301540403760405
              A10508CF0808F10909FF0909FF0909FF0A0AFF0A0AFF0A09FF0A0AFF0A0AFF0A
              09D608085601015233334948481911126E1112A60908850D0D5812121F16184D
              4D4D2B2B2B0C0C0C1B1B1B141414262626414141070707040404040404747474
              CDCDCDE4E4E4F2F2F2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7EFEFEFE5E5E5DADADACFCFCFC2
              C2C2B3B3B3A3A3A39191917C7C7C6363633A3A3A808080FFFFFFFFFFFFFFFFFF
              DCDCDC9C9C9C3F3F3CDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEE0D9D66B6B6B8484842B2B2B7474745E5E5E4C
              4C4C403D3FBFBFBFFFFFFFFFFFFFD6D5D57B7A7A504E4D153A4400151B002129
              00212A011F29040C0E1D1D1E2A2A2B292729141414100E101111110A05074D05
              07730404CB0807EE0908FF0A09FF0A09FF0A0AFF0909FF0A09FF0A09FF0A09FF
              0C09FF0A09F60A09EB0909D60808B60908850E0D511616443A3B444445525252
              706F6F8F8F8FADADABC0C0C03737384B484B2C2C2C1818184B4B4B2C2C2C2626
              263C3C3C1616160303030303036D6D6DCDCDCDE4E4E4F2F2F2FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F7F7F7EEEEEEE5E5E5DADADACFCFCFC3C3C3B3B3B3A3A3A39191917C7C7C6363
              63383838C0C0C0FFFFFFFFFFFFFFFFFFDCDCDC9A9A9A525251DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED5CDCC
              7476769190908F8F8F5959597F7F7F696969343433343434C0C0C09C9D9D9495
              95747374121B1E014051001B23001F29001F2A011F261218192122221D1B1D09
              08090303030404040403030E01033A0103AD0705FF0A09FF0909FF0909FF0A09
              FF0A09EF0908DC0908C00705A00807800A096F1818622A2A5E3F406359597777
              77969695B6B6B4D4D3D4E4E7E5F8F8F7FFFFFFFFFFFFFFFFFFFFFFFF7372722A
              29292727271111114141412525252525253838380D0D0D0303030303039E9E9E
              CDCDCDE2E2E2F2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7EEEEEEE5E5E5DADADACFCFCFC2
              C2C2B3B3B3A2A2A29191917C7C7C626262383838B1B1B1FFFFFFFFFFFFFFFFFF
              DCDCDC9A9A9A565252DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE6D6B6B706F72DDDDDDC8C8C89A9A9A4E
              4E4E5A5C5A1E1E1D2929294E4E4E3C3C3C1B1B1B1F2626002A32001A22001F2A
              00212A001D261011112727270C0C0C0301030403040707070301010403040703
              037B0505E60909C009089A08097B0C0D5E18185D3232654D4C7F74739A9898B4
              B3B3C4C5C4DADADAEDEDEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF9A99995454524848482C2C2C2A2A2A1111111F1F
              1F383838040404040404030303909090CDCDCDE2E2E2F2F2F2FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F7F7F7EEEEEEE5E5E5DADADACFCFCFC3C3C3B3B3B3A3A3A39191917C7C7C6363
              633D3D3D9C9C9CFFFFFFFFFFFFFFFFFFDCDCDC9C9C9C494847DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              B8B2B15F5F5FA6A6A64747476666664848483636361F1F1F8D8D8D9D9D9D5556
              563232321F2121014556011E27011F2A00212B00151B2223232222220D0D0D19
              1818262626302F300505050A090A2C302E4E44445E5D5E7C7A7B959895B4B6B4
              D1D3D3E7E6E7F5F5F5F5F5F5E6E5E5D6D5D6ABB1B37C898C51666D415A5F3F49
              4CD9DCDCFFFFFFFFFFFFE5E4E4BBBBBB9C9D9D8989897E7F7F807F7F908F8D41
              41435959592121210D0D0D0505051919193F3F3F101010040404040404818181
              CCCCCCE4E4E4F2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7EFEFEFE5E5E5DADADACFCFCFC2
              C2C2B3B3B3A3A3A39191917B7B7B6262623F3F3F888888FFFFFFFFFFFFFFFFFF
              DCDCDC9D9D9D333333DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE5656569090902C2C2C58585849
              49491D1D1D4C4C4CCBCBCBD3D3D35656563F3F3F1F2123013C4D011B25011F2A
              01212A011A232A2C2B1D1E1E2323234C4C4B4C4D4D3C3C3C090909848484D6D8
              D6EDEDEDFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C8F9211404D01
              3F5000586D006781007391014B5E091216888B89ADADABB2B1B1BEBEBCC3C3C4
              A5A7A758666937616B15596A035D73052C3A211F211D1D1D0303030505051A1A
              1A4040401B1B1B040404040404727272CCCCCCE2E2E2F2F2F2FEFEFEFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F7F7F7EFEFEFE5E5E5DADADAD0D0D0C3C3C3B3B3B3A2A2A29191917C7C7C6363
              633C3C3C7B7B7BFFFFFFFFFFFFFFFFFFDCDCDC9D9D9D3D3D3CDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              CBC5C49EA0A0A9A9A9585858727272525252222222626262F6F6F6F3F3F33D3D
              3D3B3A3B212225013A4900181F001F2A001F2A00181F0E0E0E1F1F1F3232324D
              4D4D4D4D4D3838381E1E1EDCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFC8C8C7164C5C018CAF0195BA019ABF03A0C803A6CF037C993B3D
              3F8181806167692B616F115F7201586E07181E1B5D6E01A2CB01AAD401AAD503
              8CAF01212A0507080408093A38372526263D3D3D0D0D0D0303030303035F5F5F
              CDCDCDE2E2E2F2F2F2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7EEEEEEE5E5E5DADADACFCFCFC3
              C3C3B3B3B3A3A3A39191917C7C7C636363383838BEBEBEFFFFFFFFFFFFFFFFFF
              DDDDDD9D9D9D555452DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEA2A09DCCCBCBBFBFBF5656569595953A
              3A3A2F2F2F8C8C8CFFFFFFFFFFFF6565653B3B3C2A3A3D014D6100232B001D26
              011F2A011D2511181A2323233434343F3F3F404040494949141414747474FFFF
              FFDCDCDCB8B8B89898988484847A7A7A7C7C7C8B8B8B9A9C9A104B5905ABD503
              ABD603AAD401A6D101A3CB03657C0C2932DAEAEEDAEAEE8D9DA10E54650485A5
              014E6501779501A3CD01A9D401AAD501A2CC168FAB448395E1DADCDAEAEE3332
              332C2C2C0D0D0D0404040303037F7F7FCDCDCDE2E2E2F1F1F1FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F7F7F7EFEFEFE5E5E5DADADACFCFCFC3C3C3B3B3B3A3A3A39191917C7C7C6363
              633A3A3AAEAEAEFFFFFFFFFFFFFFFFFFDCDCDC9D9D9D525151DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              B8B4B4F1F1F1B7B7B73A3A3A5050502727273A3A3A808080FFFFFFFFFFFF8383
              833C3C3B36343403415101090A00161E01212A011F2930323223232338383829
              29293434345454545D5D5D8D8D8DB7B7B7C3C3C3B8B8B8A6A6A67A7878898785
              969491BFBBBBE5E2E1839DA304769203627A1961743869765E787FB4B1B1EDE7
              E5DAEAEEDAEAEEDAEAEEDAEAEEDCD6D48F9CA06F9EAA3C80915E9DAD74A5B381
              A2AADEEBEDDAEAEEDAEAEEDAEAEED0C9C82323221A1A1A0303030303038D8D8D
              CCCCCCE2E2E2F2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7EFEFEFE5E5E5DADADACFCFCFC3
              C3C3B3B3B3A2A2A29191917C7C7C6363633F3F3F999999FFFFFFFFFFFFFFFFFF
              DDDDDD9D9D9D474545DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC4C0C0FFFFFFC4C4C4B1B1B1D5D5D52A
              2A2A3F3F3F818181FFFFFFFFFFFF94949437373655555509566B01151A001F2A
              01212A00212A151A1E1616161414150303035D5D5DAEAEAE6B6B6B3B3B3B2121
              1F0707071211115D5959DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAD9D9DA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE625F5E4344440404040404047F7F7FCCCCCCE2E2E2F2F2F2FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F7F7F7EFEFEFE5E5E5DADADACFCFCFC3C3C3B4B4B4A3A3A39191917C7C7C6565
              653F3F3F858585FFFFFFFFFFFFFFFFFFDDDDDD9E9E9E333332DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              CBC8C8FFFFFFFBFBFB525252B6B6B6777777373737494949FFFFFFFFFFFFC3C4
              C33436333F3D3D0A4352011F27001F27011F2B001F2A1F30371D1E1E090A0A04
              04042322233C3C3C262626070707010103222121736E6DDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE7F7B7B4D4E4E030303040404707070
              CBCBCBE2E2E2F2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7EFEFEFE6E6E6DADADACFCFCFC3
              C3C3B4B4B4A2A2A29191917E7E7E6565653C3C3C707070FFFFFFFFFFFFFFFFFF
              DDDDDD9E9D9E3C3C3BDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE4E2E1D3D3D3FFFFFF8D8D8DFFFFFFF7
              F7F73333332C2C2CFFFFFFFFFFFFFFFFFF3B3B3B403F40122C3600333F001D25
              00212A01212A00192137383B191919302E2E0808080808080909090808081B1B
              1B030403B4B1AEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE7773724B4B4B0301030303035E5E5ECCCCCCE4E4E4F3F3F3FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F7F7F7EFEFEFE5E5E5DCDCDCD0D0D0C3C3C3B4B4B4A5A5A59292927C7C7C6363
              633B3B3B929292FFFFFFFFFFFFFFFFFFDDDDDD9E9D9E545252DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEA9A9A9FFFFFFAFAFAFC2C2C2FFFFFF7373733B3B3BCBCBCBFFFFFFFFFF
              FF8787883737372B373A005D7400181E01212A01212B001F29222B2F1B1A1A26
              25261212121818182525251D1D1D4C4C4C111210444343DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE615F5D3F3F3F0504040404047B7B7B
              CCCCCCE1E1E1F2F2F2FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7EFEFEFE5E5E5DADADACFCFCFC3
              C3C3B3B3B3A3A3A39191917C7C7C6363633B3B3BABABABFFFFFFFFFFFFFFFFFF
              DEDEDE9E9C9E545252DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE9D9A99FFFFFFFFFFFF74747456
              5656737373292929323232FFFFFFFFFFFFE9E9E93D3D3D3C3C3C033F5000161A
              01212A001F2A01212B031D221D1B1D2729292A292A2927292A29291B1B1B5858
              560E0E0D161614DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE5E5D5A3B3B3B0403040404048C8C8CCCCCCCE2E2E2F1F1F1FEFEFEFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F7F7F7EFEFEFE5E5E5DADADACFCFCFC3C3C3B4B4B4A3A3A39191917C7C7C6363
              633F3F3F969696FFFFFFFFFFFFFFFFFFDEDEDEA09EA0474545DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEF2EEEB5050504545455A5A5A363636585858838383232323818181F8F8
              F8FBFFFC8080811F1E1E0A1A1E014051001D2501212B00212900212A1E2B2F16
              16162525232929292323232222222E2C2E8B8584ABA9A6DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE6D6A694343430404040404047C7C7C
              CCCCCCE2E2E2F1F1F1FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EEEEEEE5E5E5DADADACFCFCFC3
              C3C3B4B4B4A3A3A39191917C7C7C656565404040818181FFFFFFFFFFFFFFFFFF
              DEDDDEA1A1A1333232DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE444344A2A2A26767676E
              6E6E5656565050502525252525255555555050504D4D4D545454706D6B0E4450
              001F29001F29001F2A00212A001E2703111504080914141283807F8985859A98
              96DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE817E7C5252520303030404046E6E6ECCCCCCE2E2E2F1F1F1FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F7F7F7EFEFEFE6E6E6DADADACFCFCFC3C3C3B4B4B4A3A3A39191917C7C7C6565
              653D3D3D6F6F6FFFFFFFFFFFFFFFFFFFE0DEDEA0A0A03D3D3DDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEB7B3B3D9D8D9FFFFFFFFFFFFF6F6F68080803333332E2E2E2F2F2F5959
              595A5A598D8F8F666767676665496166012B3700181E00212B001D2700192100
              212A001A23545655DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE7F7A784D4D4D0303030404045D5D5D
              CCCCCCE2E2E2F1F1F1FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7EFEFEFE6E6E6DCDCDCCFCFCFC3
              C3C3B4B4B4A3A3A39191917C7C7C6565653C3C3C8D8D8DFFFFFFFFFFFFFFFFFF
              DDDEDE9E9E9E545252DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEADABAAFFFFFFFFFFFF949494F5
              F5F5FFFFFF6363635656568F8F8F7C7C7C7778787E7E7E403D3F474745DAD5D3
              2A566101212B011B26011E27001A21001F2A08181EE7E6E4DAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE6D6A673F3F3F040404030303545454C8C8C8E1E1E1F2F2F2FEFEFEFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F7F7F7EFEFEFE6E6E6DCDCDCCFCFCFC3C3C3B4B4B4A5A5A59191917E7E7E6565
              653C3C3CA9A9A9FFFFFFFFFFFFFFFFFFDCDDDDA09EA0525151DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEA1A1A2FFFFFFB1B1B1FFFFFFFFFFFF8D8D8D7E7E7E6969696767
              67444545C3C3C4A1A0A18F8D8CDAEAEEDAEAEE14333B01252E00182100151B00
              121A7C7C7CDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE6A69693232321616161E1E1E323232
              C2C2C2E2E2E2F1F1F1FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7EFEFEFE6E6E6DCDCDCCFCFCFC3
              C3C3B4B4B4A5A5A59191917E7E7E656565404040949494FFFFFFFFFFFFFFFFFF
              DEDEDDA1A1A1454444DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAD8D97E7B7BC5C5C5F1
              F1F19E9E9DD3D1D3D5D5D5909090C4C5C5B7B6B79C9C9D747272DAEAEEDAEAEE
              DAEAEEDAEAEE9DA0A15F63656E6F70F8F6F5DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE787676141414141414272727555555CBCBCBE1E1E1F1F1F1FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F7F7F7EEEEEEE5E5E5DADADACFCFCFC3C3C3B4B4B4A3A3A39191917E7E7E6565
              654343437F7F7FFFFFFFFFFFFFFFFFFFDEDEDDA1A1A1333333DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE5E4E2DAEAEEDAEAEEDAEAEEE0DDDCA9A6
              A5A7A5A3DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE8583810909090C0C0C222222636363
              C9C9C9E2E2E2F2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7EFEFEFE5E5E5DCDCDCD0D0D0C3
              C3C3B4B4B4A3A3A39191917E7E7E6666664040406E6E6EFFFFFFFFFFFFFFFFFF
              DDE0DEA1A1A13C3B3BDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE908D8C040404050505080808474747CCCCCCE2E2E2F1F1F1FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F7F7F7EFEFEFE5E5E5DCDCDCD0D0D0C3C3C3B4B4B4A5A5A59292927E7E7E6565
              653D3D3D888888FFFFFFFFFFFFFFFFFFDCDEDDA0A1A0545252DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE9C99980505050A0A0A050505747474
              CBCBCBE1E1E1F1F1F1FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EFEFEFE5E5E5DADADAD0D0D0C3
              C3C3B4B4B4A5A5A59191917E7E7E6565653D3D3DA5A5A5FFFFFFFFFFFFFFFFFF
              E0E0DEA1A1A2525150DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEAFAEAD070505030303010101888888CBCBCBE1E1E1F1F1F1FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF1F1F1FFFFFFFFFFFFEBEBEB
              D1D1D1E7E7E7E5E5E5D4D4D4D0D0D0C3C3C3B4B4B4A3A3A39191917E7E7E6363
              633838385F5F5F8B8B8BA0A0A05D5D5D6A6A6A525252383737DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEA19E9E040303030303010101787878
              C9C9C9E1E1E1F1F1F1FCFCFCF3F3F3E2E2E2D4D4D4DADADACBCBCB7A7A7ACFCF
              CFF6F6F6FFFFFFFFFFFFFFFFFFE5E5E5DADADAEDEDEDC7C7C7B2B2B2C8C8C874
              74747373739090908989894949492121211212121818182323233B3B3B6A6A6A
              404040474747373637525050DCDAD8000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEAEABAB2F2E2E67696A6A6B6ACBCBCBDDDDDDA1A1A15A5A5A898989B8
              B8B8FAFAFAFFFFFFFFFFFFCDCDCDE1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F7F7F7EFEFEFE7E7E7DCDCDCC9C9C9656565A1A1A15858583B3B3B1D1D1D0A0A
              0A070707323232AEAEAED4D4D4EAEAEAA5A6A559595841404132303058545200
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEAEABAB898D91585656
              9E9E9E989898B6B6B6F2F2F2FFFFFFFFFFFFFBFBFBEEEEEEE6E6E6C5C5C5A0A0
              A08F8F8F9696967F7F7F7676767F7F7F6D6D6D919191848484929292AAAAAA98
              9898B1B1B1A5A5A5929292727272333333111111ABABABFFFFFFFFFFFFFFFFFF
              E0E0E0A2A1A2434343403F3FD0CCC9000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEC3C0C07273772B2A2A878787B8B8B8EBEBEBC3C3C3A2A2A262
              62623D3D3D2222221616161919192A2A2A4040403C3C3C4040403D3D3D484848
              4C4C4C3F3F3F3636361414141414141818182A2A2A3F3F3F5555556A6A6A6363
              633B3B3BA2A2A2FFFFFFFFFFFFFFFFFFE1E1E1A2A2A2494949E2E0E0DAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED5D3D1787B7E656565
              B2B2B28888883D3D3D161616262626585858969696C2C2C2F7F7F7858585A2A2
              A2FFFFFFFEFEFEFFFFFFFFFFFFF6F6F6F2F2F2E1E1E1D6D6D6C5C5C58888884B
              4B4B5555554040401B1B1B0E0E0E191919272727909090FFFFFFFFFFFFFFFFFF
              E0E0E0A2A2A2444444DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEED8D6D59196995454542B2A2A373737878787CCCCCCDADADAB3
              B3B3AEAEAEFFFFFFFFFFFFF7F7F7F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F8F8F8EFEFEFE6E6E6D5D5D5A5A5A56A6A6A8080806161617C7C7C5E5E5E3232
              320A0A0A7B7B7BFFFFFFFFFFFFFFFFFFE2E2E2A0A5A1343334DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEECBC9C89CA0A3333232
              6A6A6A7272727F7F7F8585859A9A9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EFEFEFE6E6E6DCDCDCD1D1D1C4
              C4C4B4B4B4A1A1A16565655656564141413636366A6A6AFFFFFFFFFFFFFFFFFF
              E2E2E2A5A5A53B3C3BDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEBBBABA7B7F83555455747474A9A9A9D5D5D5FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F8F8F8EEEEEEE6E6E6DCDCDCD1D1D1C3C3C3B4B4B4A5A5A59292927F7F7F5A5A
              5A2525257F7F7FFFFFFFFFFFFFFFFFFFE1E1E1A2A2A14E4E4DDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC5C4C36A6D6E333334
              A09EA0E1E1E1F1F1F1FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EFEFEFE6E6E6DCDCDCD1D1D1C4
              C4C4B4B4B4A5A5A59292927F7F7F676767414141A1A1A1FFFFFFFFFFFFFFFFFF
              E1E1E1A3A3A3515150DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEED9D8D67A7C7F636265C9CBC9E1E1E1F1F1F1FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F8F8F8EFEFEFE6E6E6DCDCDCD1D1D1C4C4C4B4B4B4A5A5A59494947F7F7F6767
              674444448D8D8DFFFFFFFFFFFFFFFFFFE1E1E1A2A3A2444343DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE0DDDD949A9E787A78
              C9C9CBE1E1E1F1F1F1FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EFEFEFE6E6E6DCDCDCD1D1D1C3
              C3C3B4B4B4A5A5A59494947F7F7F666666484848777777FFFFFFFFFFFFFFFFFF
              E2E2E2A5A5A5343333DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEE778F9450727B6D6B6BCBCCCBE1E1E1F1F1F1FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F8F8F8EFEFEFE6E6E6DCDCDCD1D1D1C4C4C4B6B6B6A6A6A69494947F7F7F6666
              66444444696969FFFFFFFFFFFFFFFFFFE2E2E2A5A6A63D3D3CDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE5678830080A1006A83626365
              CBCBCBE1E0E1EFEFEFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EFEFEFE6E6E6DCDCDCD1D1D1C4
              C4C4B6B6B6A5A5A59494948080806767674141417E7E7EFFFFFFFFFFFFFFFFFF
              E2E2E2A5A5A54E4E4EDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEE4E7B870189AB01698470777ACBC9CBE1E1E1F1F1F1FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F8F8F8EFEFEFE6E6E6DCDCDCD1D1D1C4C4C4B6B6B6A6A6A69595958080806767
              67434343A0A0A0FFFFFFFFFFFFFFFFFFE1E1E1A5A5A54E504EDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE52737C0188AA006A8483888B
              C9C9CBE0E0E1F1F1F1FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EFEFEFE6E6E6DCDCDCD1D1D1C4
              C4C4B4B4B4A6A6A69494948080806666664444448B8B8BFFFFFFFFFFFFFFFFFF
              E2E2E2A6A6A6444343DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEE5D767C0089AB00728D747676CBC9CBE1E0E1EFEFEFFCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F8F8F8EFEFEFE6E6E6DDDDDDD1D1D1C4C4C4B6B6B6A6A6A69494947F7F7F6969
              69484848767676FFFFFFFFFFFFFFFFFFE2E2E2A7A7A7343434DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE6A878F008BAD0176946A6A6A
              CBC9CCE2E0E1EFEFEFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EFEFEFE6E6E6DCDCDCD1D1D1C4
              C4C4B6B6B6A6A6A69494947F7F7F676767454545666666FFFFFFFFFFFFFFFFFF
              E4E4E4A6A6A63B3B3BDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEE6B9DAB018BAE00708C5E6161CBC9CBE1E1E1F1F1F1FBFBFBFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F8F8F8EFEFEFE6E6E6DCDCDCD1D1D1C4C4C4B6B6B6A6A6A69494947F7F7F6767
              674343437A7A7AFFFFFFFFFFFFFFFFFFE2E2E2A6A6A6505050DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE7CA5AE006D871A62746F7477
              C9C9C8E1E0E0F1F1F1FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EFEFEFE6E6E6DCDCDCD1D1D1C5
              C5C5B6B6B6A6A6A69494948080806767674141419C9C9CFFFFFFFFFFFFFFFFFF
              E2E2E2A6A6A6525151DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEADB4B72B4C545F6669818587C9C9CBE1E1E1F1F1F1FBFBFBFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F8F8F8EFEFEFE6E6E6DCDCDCD0D0D0C4C4C4B6B6B6A6A6A69494947F7F7F6969
              69454545888888FFFFFFFFFFFFFFFFFFE2E2E2A7A7A7444444DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED4D1D390969A747676
              C9C8C9E1E0E1F1EFEFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F1F1F1E6E6E6DDDDDDD1D1D1C4
              C4C4B6B6B6A6A6A69494947F7F7F696969494949727272FFFFFFFFFFFFFFFFFF
              E4E4E4A9A9A9373737DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDCDADAA0A2A5666666C9C9C9E1E0E1F1F1F1FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F8F8F8EFEFEFE6E6E6DCDCDCD0D0D0C4C4C4B6B6B6A6A6A69494948080806969
              69474747656565FFFFFFFFFFFFFFFFFFE2E2E2A7A7A73D3D3DDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC8C8C7919498626262
              CBCBCBE0E0E0EFEFEFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F1F1F1E6E6E6DCDCDCD0D0D0C4
              C4C4B6B6B6A5A5A5949494808080676767444444505050FFFFFFFFFFFFFFFFFF
              E4E4E4A7A7A7515050DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEED5D4D476787B545454C9C9C9E1E1E1EFEFEFFBFBFBFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F7F7F7F1F1F1E6E6E6DDDDDDD1D1D1C5C5C5B6B6B6A6A6A69494948080806767
              67444444909090FFFFFFFFFFFFFFFFFFE4E4E4A7A7A7595958DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE1E0DE6B6D707E7E7E
              C9C9C9E0E0E0EFEFF1FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F1F1F1E6E6E6DDDDDDD1D1D1C4
              C4C4B6B6B6A6A6A69595957F7F7F696969474747878787FFFFFFFFFFFFFFFFFF
              E4E4E4A7A7A7454444DAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEEAE9E794969A737373C9C9C9E1E1E1EFEFEFFBFBFBFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F8F8F8EFEFEFE6E6E6DCDCDCD1D1D1C4C4C4B6B6B6A6A6A69494948080806969
              694B4B4B707070FFFFFFFFFFFFFFFFFFE4E4E4AAAAAA3A3A3ADAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED8D6D6A1A5A9636363
              C9C9C9E1E1E1F1F1F1FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F1F1F1E7E7E7DCDCDCD1D1D1C4
              C4C4B6B6B6A6A6A6949494818181696969454545636363FFFFFFFFFFFFE4E4E4
              B8B8B8A0A0A03F3F3FDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEECCCBCB9195995F5F5FC9C9C9E1E1E1F1F1F1FBFBFBFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F8F8F8F1F1F1E6E6E6DDDDDDD0D0D0C4C4C4B6B6B6A6A6A69595958080806969
              694444442E2E2E6363632B2B2B3D3D3D1E1E1E232323232323DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED5D3D3777A7C545455
              C8C8C8E1E1E1F1F1F1FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F1F1F1E7E7E7DDDDDDD1D1D1C4
              C4C4B6B6B6A7A7A79595958080806767673434341818185050508D8D8D747474
              7070704C4C4C262626B6B4B3DAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEE1DEDE6D6E727A7A7BC8C8C8E0E0E0EFEFEFFBFBFBFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F8F8F8F1F1F1E7E7E7DCDCDCD1D1D1C4C4C4B6B6B6A7A7A79595958080806565
              652A2A2A898989D4D4D4FFFFFFFFFFFFE9E9E98484845F5F5F252323DAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEF1EFEF95969C727272
              C9C9C9E0E0E0F1F1F1FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F1F1F1E7E7E7DDDDDDD1D1D1C4
              C4C4B7B7B7A6A6A6949494808080696969626262DDDDDDFFFFFFFFFFFFFFFFFF
              EEEEEEC5C5C57C7C7C474545DAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDEDDDEA6A9AD616262C9C9C9E0E0E0EFEFEFFCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F8F8F8F1F1F1E7E7E7DDDDDDD0D0D0C4C4C4B7B7B7A6A6A69494948080806969
              69636363F5F5F5FFFFFFFFFFFFFFFFFFEEEEEEC7C7C78B8B8B434341DAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED1D0CF94989D5E5E5F
              C8C8C8E0E0E0EFEFEFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F1F1F1E7E7E7DCDCDCD0D0D0C4
              C4C4B7B7B7A7A7A7959595808080676767525252F3F3F3FFFFFFFFFFFFFFFFFF
              EDEDEDC7C7C78B8B8B504E4EDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEED9D8D6777A7E545455C8C8C8E0E0E0EFEFEFFBFBFBFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7DEDEDED9D9D9E1E1E1F6F6F6
              E7E7E7D1D1D1DDDDDDDCDCDCD1D1D1C5C5C5B7B7B7A6A6A69494948080806565
              65444444F3F3F3FFFFFFFFFFFFFFFFFFEDEDEDC5C5C58B8B8B444444DAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE9E6E76B6E70787878
              C8C8C7E0E0E0EFEFEFFBFBFBF7F7F7D1D1D1C5C5C56969694747472A2A2A1818
              180E0E0E0D0D0D1414141111110404042525252525253737371F1F1F3C3C3C5F
              5F5F6B6B6B8484848C8C8C818181666666414141F3F3F3FFFFFFFFFFFFFFFFFF
              EDEDEDC7C7C78C8C8C333333DAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEF2F1F295999D737374C8C8C8D1D1D1B7B7B74C4C4C1E1E1E04
              0404010101030303040404040404040404040404040404040404050505050505
              0404040707070505050404040404040404040404040D0D0D0E0E0E2E2E2E4848
              486B6B6BF5F5F5FFFFFFFFFFFFFFFFFFEDEDEDC7C7C78C8C8C2F2F2FDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE6E6E674767A5D5D5E
              7F7F7F2C2C2C0404040303030101010303030303030303030303030404040404
              0404040404040404040404040405050505050505050505050504040404040404
              0404040404040404040404030303070707515151F5F5F5FFFFFFFFFFFFFFFFFF
              EEEEEEC7C7C78C8C8C444444DAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEE7B7A7A2625264040410A0A0A01010101010103030303030303
              0303030303030303040404040404040404040404040404040404040404050505
              0505050505050505050404040404040404040404040404040303030404040404
              043D3D3DDEDEDEBFBFBFAAAAAAD4D4D4AAAAAA8888887878784E4E4EDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE3636360909091A1A1A
              0101010101010101010303030303030303030303030303030404040404040404
              0404040404040404040404040405050505050505050505050505050504040404
              04040404040404040404040404040404042323235555554C4C4C5A5A5A565656
              3436362E2E2E333333292929DAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEE94929434343456565601010101010101010101010103030303
              0303030303030303040404040404040404040404040404040404040404050505
              0505050505050505050505050404040404040404040304040404050404040707
              072222223232323C3C3C4E4E4E5050504C4C4D454545323232141414DAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              2F2F2F0303030101010303030303030303030303030303030404040404040404
              0404040404040404040404040404040407070705050505050505050505050404
              04040404040404040404040404040303031A1A193333335151516767675A5A5A
              565858494B4B3D3D3D191818DAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE9E9E9E4545450E0E0E03030303
              0303030303030303040404040404040404040404040404040404040404050505
              0505050505050505050404040404040404040404040303030303030909097272
              70E4E4E1DDDCDA8785874B494B818081949492AFAFADC7C5C3DAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEE1E1E18F8F8F6262621818181515150505050303030303
              0304040404040404040404040405050505050504040404040404040403030310
              1010323232787777EDEAEBDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDEDEDECCCCCBABABAA91908F9492917A7A7A7E7E7E737373
              818181C4C4C4D9D9D9F6F6F6DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000}
            Transparent = True
            Visible = False
          end
          object Image_Telescope_Retourne_Allemande: TImage
            Left = 197
            Top = 47
            Width = 111
            Height = 117
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            AutoSize = True
            Picture.Data = {
              07544269746D6170C6990000424DC69900000000000036000000280000006F00
              000075000000010018000000000090990000C40E0000C40E0000000000000000
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE665F5DBEA7
              A1DCC0BAEFD0CBF8D8D3F8DCD3FEDED5FCDDD4F5D8CFE9CFC7E1C5C0D4BBB4C0
              AAA3AD999298847F74666351474425211EEFE9E6DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEE6F6665BFA7A1DCC0BBEFD0CBFADAD1FADCD3FCDED5
              FCDDD4F5D8CFE9CFC7E0C5BFD5BBB4C0AAA3AB999298847F7466635047442723
              21E7E4E2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE766D6BC0A9
              A2DAC2BAEFD1C8FADAD1FADCD3FCDED5FCDDD4F5D6CDEACFC5E2C5BFD4BBB4C0
              A9A5AE999496847F7467635045432C2726E1E0DEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEE736A67C3ABA6DCC2BBEFD0CBF8D9D0FBDCD3FCDED5
              FCDDD4F5D6CFEDCFC7E2C5BFD4BAB3C0AAA3AD989296847F7467625045442622
              21EAE6E5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE665E5DC0AA
              A5DCC2BBEFD1CCF8D9D0FBDCD4FEDDD5FCDDD4F6D6CFEBCFC7E1C5BED4BBB4C2
              AAA3AD999496847F746762504744231E1EEFEAE9DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEE625959BEA7A2DCC2BBEED1CCF8D9D1FADCD3FCDDD5
              FCDDD4F5D8CFEACFC5E0C5BED4BAB3C0AAA3AD989295847F746762504744231F
              1EF2EEEBDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE6F6665C0A9
              A3DAC2BBEED0CBF8D9D1FBDCD4FCDDD5FCDCD4F5D6D0EACDC7E1C5BFD5BAB3C2
              AAA3AB989295847F746663504545292322E9E5E4DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED5CFCDD5D0CCE6E2E0DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEE776D6DC0AAA3DCC0BBEFD1CCF8D9D1FADCD4FCDDD5
              FADCD4F5D8CFEDCFC7E0C5BFD4BBB3C2A9A3AE989196847F7466635045442B26
              23E2DEDDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE807C
              7B323232333332262626494747F7F1F1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE726966C4AD
              A5DAC0BBF1D1CBF8D8D1FBDCD5FCDDD4FBDCD4F7D6D0EBCFC7E1C5BFD3BBB3C0
              A9A3AE989296847F74666351454523211EE9E5E4DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEE5A585543403F484340272523252322BFBBBA
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEE625A59BFA9A2C9B1AACDB6AECFB3B1BEA6A0B39D96
              AF9A94988580857673BCA7A19C8B85897874806F6B8574706F625F504544221F
              1BE9E2E0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE968B
              87CDBBB4A7999254504B615854C2BBBADAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE5E2E2332F2E3D36
              34251F1F7A6A6691625E100C0D18100E100404542926763D3D4033321E0D0C2F
              1B1B5847442A23223A302F49403F251F1EEFE7E6DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEBCADA7FFFAEF8378744C4947877B76BAB3B2
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEADA6A1524C496D2E2C4312113003043800015200005A0100480000520000
              3700003B00013F01001A01004800001E00011A0000250000180303211B1B2723
              23EBE7E5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE9085
              8091837E4844435254515D5551ABA5A3DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAD3D05A44436315145505054D00006700016600
              013D00003300004900003701002200011800011900001F00003600005901006E
              00001400016700002E0001080705191516E7E4E2DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEAEAAA72C2C2C4E4C4D4141411414120D0D0C4B4847
              EAE4E2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEEAE4E1DAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE98919041232248
              00004400005400002A01001D00001B01001E00012C00014700017200008F0101
              A70101C00301D60303DE0503E70505B407071400011F00015900000C00010D0A
              0CEEE6E2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC5C0BC3637362929
              2A434143272727090C091111105F55527E726F736B67706A677E7773837E7A44
              41402C2B2BDAD6D4DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE7655541F00013400013400015601006300017F00019C01
              01B70101CD0301E00403E70507ED0808F30D0CFB1111FF1515FF1919FF1D1DC3
              16182201011900013D00004D0000050000141214D5D0CFDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEE9C99969A99995D5D5D3734361918180D0D0A1614145D5450
              9C8D87AD9D949E9088B8A9A1B6A69D8C7F782A2726A6A2A0DAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC4B3B2520807C2
              0101D90403E20705E70807EF0A0AF50E0DFB1212FF1616FF1A1BFF1E1EFF2222
              FF2522FF2525FF2525FF2322FB211FB114141D01002100011500003B00004900
              000D0101292726F2EBE7DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEA39E9C726E6DAAA6A5DAEAEEDAEAEEDAEAEE95908D6967673030
              30413F402221210A0A090808082C2A2A615D5C696663ABA7A2A39D9987817E26
              2523121111AAA3A1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEF2C5C3E61010FF1516FF1A19FF1F1EFF2222FF23
              25FF2525FF2523FF2322FF1F1FEB1B1BCF1618AE11125408097B0A095E040485
              05051800001F00001F00001900004B0000470000140D0C45403FDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE4947441B191922211F4E
              49454845433D3B3B3C383A2221211A1B1B2322231615160A0A090909091B1A1A
              524E4E6F6B6AD4CDC9E9E1DDB4AEAD333330111210B4AFADDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEA1
              2122FF2525FF2323FA1E1DDE1919C01414870D0D5207051F0303080103030101
              0103010100031A1A1A4B1111D30907B707071500002200031E00001E00001900
              01540000210001080505C2BEBCDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              D3CDCB969190302F2E1B1A191411122321212122212325253B3A3A5C5C5C4E4E
              504747473B3B3B2F302F2A2B2B2E2E2E2B2B2B2525252323232A29291F1E1E11
              11110D0C0C3D3B3A767272C2BBB8DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE1AEAE74090A6D0707360A0A0100010401
              01050303030303160304070507040405010300030103585658161214B80808C7
              07071600032100002100012100001F00001800003C00001E0D0DA9A1A0DAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE9D9895747370AAA7
              A5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEE706E6B1F1E1D0E0E0E1D1D1B2C2E2B3737372E2C2E40
              41405658566F6F6F858484999999ADADAD9A9A9A8D8D8D8181817F7F7F8F8F8F
              8787876B6B6B5555555656563C3C3C2323231D1D1D0D0E0E0808081110103A37
              36A09A98DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE7E6E16A
              62622B03042201030A04030303040504050504040403042A03054B4C4C121212
              0404030805053A0E10584545AF0D0CCD07081D00012200002100001F00002200
              00230C0C7A7373DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEE4D4D480E110D0A0C0A050707C2BBBBDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEF8F2F1DAEAEEFCF7F6EFE7E5908C891818182E2E2E
              595959A3A3A3E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C79A9A9AFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF1F1F1E7E7E7D4D4D47C7C7C9D
              9D9D9494947374745454542E2F2F151515222121DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEE1F1E1E2222220404040403040303010404030707
              071010101B1B1B2F2F2E2121221F1F1F10100E260101E20809FC0909FF0A09D8
              08082301012100012100001F0000210000331D1BF3EEEBDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEEBE5E22C2B2B1516151616160303
              034B4847DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEF7F3F26361624140413837
              374848484847453B3B3A838383959595D3D3D3FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF7F7F7EAEAEACCCCCC6F6F6F9A9C9C9D9E9D9595957F7E7F615F613A38
              382E2E2EF7F1EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE736F6E1D1D1E1A
              1A1A1212120A0A090909090D0D0D1212142322233230300C0C0A141214343434
              1D1E1E191616BB0808FF0A0CFF0A09E209072701012300011F00011F00002200
              011D0A0AC5C2C0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEE514D4D4B4B4B1D1D1D0C0C0A0103033A3736DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000D4CFCCB4B1AE6767674544455556567777773B3B3B4D4C4DADADAD919191
              BEBEBEBABABAD1D1D1CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5B6B6B66D6D6D4747473D
              3D3D3233323F403F4848484141412E2E2C2B2B2AD6CFCCDAEAEEDAEAEEDAEAEE
              FCF8F6817F7E3736362727272A2B2A3030301919190808080707071010102222
              213F3F3D3C3F3B51514E6F6D6D706D6D1F211F1D1B1DA00707FF090AFF0909F1
              09092901002200002100002100001F00001A0505B7B1B1DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE4944432122212122224545
              44030103040404C0BCBADAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE0000009C95948D8887737372737373DADA
              DAEEEEEE909090545454787878848484C7C7C7DADADAFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF1F1F17B7B7B3333332626262626262727272525252323231B1B1B0909
              090909092B29276F6D6BD0CBC8DAEAEE32302F10111032322F2E2C2C21212150
              4E4E454545404040666665B7B6B659595572706F383D3C343A3B3B47481E272A
              374E550405085A161BB10909F10908FF0A092B01012100012200002200002100
              01140000ADA7A6DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEE3634334443410E0D0E0909082222222927271111116B6967DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEEBE9E9F7F6F6DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000E4DDD8AAA3A26767676967677070706D6D6D5959593F3F3FA2A2A2DADADA
              F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F37474742E2E2E2626262A
              2A2A2E2E2E2E2E2E2E2E2E25252507070707070703030304040410110EDAEAEE
              7474723232326B6D6B1818186363623030303230326A69690A0A09080507071E
              230E546501708D0081A101A0C80088AD038FB401789801637C013C4B2E222A95
              0E102C01031F00012300002100001A00000C0000AAA2A0DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE5554510403042F2B2B1B1A1B403F3FA9A9
              A61E1E1F090909373333DAEAEEB6AFAF2726262F2E2E524E4E1E1E1E262525AF
              AAA9DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE0000004543434D4C4C5454543838384545
              45555555494949444444AEAEAEE0E0E0F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF6F6F68787872929292C2C2C1818181616161E1E1E2222221B1B1B0707
              070E0E0E121112181818090908DAEAEE4D4C4B5656564B4B4B4140410507074B
              4948BEB7B3504C4B273032015063018DAF01A9D401AAD500ABD401ABD601AAD6
              016F8C013A48019DC501AAD5019CC3045E76072F3B16080C2201011D00001100
              00110000ABA3A2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE7E787704
              04041412144445471518191111115C5C59100E0E0504050E0D0D8C8784818080
              525152858584A5A5A5C7C7C7949594787472DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              00008883833B3A3AA3A2A3E2E2E2FFFFFFFFFFFFCCCCCC6D6D6DADADADE0E0E0
              F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7D8D8D8A1A1A180808069
              69695656562E2E2E1F1F1F1616160909090C0C0C050505030303030301DAEAEE
              A6A3A13F3D3D3A37375654525D5A58EAE6E4DAEAEEEBEBEA227A9000A9D101AB
              D801ABD601AAD500ABD401ABD503ABD6019DC5016F8801A0C801AAD601AAD501
              A6D0017B9A04333F150A0C1400011100002E2222DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEE3F3C3C01040701090C01161F011A220011151011
              111412120707070E0E0E5E5A58A7A6A6FFFFFFFFFFFFC4C4C49A9A9AADAAA9EF
              EDEADAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEBCB7B6CFCDCFFFFFFFFFFF
              FFFFFFFFE9E9E9767676ABABABE0E0E0F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF7F7F7EBEBEBDEDEDECFCFCFBFBFBFAAAAAA9494947676765151512323
              23090909030303040404111211DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEE5599A9039EC501AAD401AAD601AAD603AAD601ABD501ABD603ABD6
              01AAD501AAD501AAD501AAD501AAD501ABD601ABD40096BC003C4C0A10121805
              05B7B2B2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEF6F2F2252A2C01
              151A00181E001E27011F27001F250011142121223D3D3F141614403D3CC4BBBB
              B6AEADA9A3A17C7B7BADA7A5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEE6E2E0C4C3C4FFFFFFFFFFFFFFFFFFE7E7E7878787B8B8B8E0E0E0
              F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EBEBEBDEDEDED0D0D0BF
              BFBFAEAEAE9898988080806262622929290505050101010808082627265E5A5A
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC2CDD00194BA01ABD501AAD501AA
              D501AAD501AAD501ABD501AAD601ABD601AAD601AAD501AAD501AAD501AAD501
              ABD600ABD500ABD6038DB205323D3C4749DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEECFC9C809191B001419001E26001E29011E27011E26001E
              271B1E1F363636303032181818F3EAE7FFFFFFF5EBE7C0BFBFB6AEADDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEE2DAD8BCBBBCFFFFFFFFFF
              FFFFFFFFE7E7E77E7E7EB8B8B8E0E0E0F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8F8F8EBEBEBE0E0E0D1D1D1C0C0C0ADADAD9999998181816363632626
              26050505010101040404191A1A4C4B49DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEE588F9C01A6D001ABD601AAD501AAD501AAD501AAD500AAD501AAD601ABD5
              01ABD501AAD501AAD501AAD501AAD500AAD501ABD601AAD501ABD60183A2296B
              7BEFF2F2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE5D5A5A07222A00
              181E001E27001E27001E27001D26002730030C0D0D0C0D3A383A151515ADA7A3
              FFF7F3FBF2EDBFBCBB7E7A7B7A76736D69676E6A695E5A5ADCD6D4DAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEE9E4E1BCBBBBFFFFFFFFFFFFFFFFFFEAEAEA6F6F6FB7B7B7E1E1E1
              F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EBEBEBE0E0E0D0D0D0C0
              C0C0AEAEAE9999998181816363632727270707070303030404041010114C4948
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE198DAB01AAD501AAD801AAD501AA
              D501AAD501AAD50196BB0194B7037C9A017C9D01789901A1C901AAD501AAD600
              ABD601ABD801ABD601AAD60395BE006B87506F77DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEE726D6B0D151901252E00181E001E26001F27001E27001F26001D
              25041D251F2122292A2A2A2B2B211F1F1E1E1E2625236363635C5C5D4D4C4D49
              49493436343734372B2A2ABFBABADAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEE5E1DEDDDCDCFFFFFFFFFF
              FFFFFFFFEBEBEB6A6A6AB3B3B3E0E0E0F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF7F7F7EBEBEBDEDEDED0D0D0C0C0C0AEAEAE9999998080806363632B2B
              2B090909030303040404090909555251DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEEF
              F5F30E7B96017A99039CC301ABD601ABD601A3CD14556A3A121615151A1E161D
              271F272907071027300181A3019CC4008BAD017A98036984016D88015970017F
              A00D4E61989C9EBBB7B6AFA7A6A599969C929284777623232309191E00324000
              212B001B23001E27001E27001E26001E270118214143447474746667661E1E1E
              0C0A0A111111212121707070A2A1A13333333838383D3D3D3838380D0D0D5452
              51DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEE5E2E1D9D8D9FFFFFFFFFFFFFFFFFFEAEAEA737373A9A9A9E0E0E0
              F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EBEBEBDEDEDED0D0D0C0
              C0C0AEAEAE9999998080805454542525250C0C0C0101010404040D0D0D595555
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEECBD4D5017B9A011B22005F7801ABD501A0
              C808586E6605055E04032501012200001B00001100000D00010807080A090C0C
              0E11091015030D110305070A00001401001901011A03031901012A01013C0103
              2E01012915141A1B1A072F3801222B03151A011D25011E27011E26001F27001E
              271E272AA2A1A2B7B6B67777771F1F1F525252909090333333A6A6A6B7B7B733
              33333B3B3B3D3D3D3D3D3D191919181816D9D4D0DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEEBE9E7C4C3C3FFFFFFFFFF
              FFFFFFFFEAEAEA787878A6A6A6DEDEDEF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8F8F8EBEBEBDEDEDED0D0D0C0C0C0ADADAD9999997474742323230E0E
              0E1A1A1A030303040404111111595655DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEE3C8091044455041D25031A210407081001012F01016B0404660404690404
              6904046F04047B0503840504920505A70707BF0807D60808D90909D00808CC08
              07D80809E60908FA0909FF0A09CB09083003031914151B1B1B073B4900263000
              1D27011E29001E29001F29001E26001D235F6669DDDCDDE5E5E66A6A6A252525
              C0C0C0FFFFFF858585D0D0D0CDCDCD3838383A3A3A2929292929292B2B2B4E50
              4E656261DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEF8F3F2B3B3B3FFFFFFFFFFFFFFFFFFEAEAEA848484B7B7B7DEDEDE
              F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EDEDEDE0E0E0D0D0D0C0
              C0C0AEAEAE8F8F8F2F2F2F1212120E0E0E0C0C0C030303040404050505262525
              FFFAF6DAEAEEB1AAA9514E4D2B29290C0A0A1401013301015603047F0404AB07
              07D10808F30908F20909ED0908FF0A09FF090AFF0A09FF0A08FF0A09FF0A09FF
              0909FF0A09FF0A0AFF0909FF0909FF0A0AFF0A0AFF0909FF0A09F109094E0304
              0401031D1D1E181919041F29001B22011D26001E27001E2700161D010E120109
              0A6B6E6FFFFFFFFEFEFE616161222222CBCBCBFFFFFFC3C3C3EFEFEFF1F1F126
              26263636362323231D1D1D222222595A59858383DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEABABABFFFFFFFFFF
              FFFFFFFFEBEBEB7A7A7ABABABADEDEDEF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8F8F8EBEBEBE0E0E0D1D1D1C2C2C2AEAEAE9696966565652323231515
              151A1A1A0303030303030303030A0C0AD6D0CD84807F05050401010104010361
              0404F10907FF0A09FF0A0AFF0A0AFF0A08FF0908BF07075D01032C00015A0304
              AE0707FB0A09FF0A09FF0A09FF0A09FF0A09FF0A09FF0A09FF0A09FB0908F509
              09EE0909E90909E10809AE0A0A3A26252B2B2B100E0E1D1D1A042E37001A2200
              1D26001E27001D250911141412122323228D8D8DFFFFFFDCDADC3A3A3A212121
              1F1F1F6E6E6E8F8F8FFFFFFFFFFFFF5858583A3A3A4141415E5E5E1D1D1D1E1D
              1EE7E5E4DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEF5F1EEB4B4B4FFFFFFFFFFFFFFFFFFEBEBEB737373B3B3B3DEDEDE
              F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EBEBEBDEDEDED0D0D0C0
              C0C0AEAEAE9999997F7F7F373737363636222222010101030303030303090A0A
              83807F1211110304030303030301031B0303D80908FF0A09FF0909FF0A09FF0A
              09F109097303036F27274845453836362F0E0E9C0705D90808D00708C20808AE
              090A9A0D0C83100D6D101065161863272965383A634949625C5C4748452E2E2C
              49484B0E0C0D111412013441032733011E26001F25011D26262B2C3F3D3FD0D0
              D0A7A7A7FFFFFF888888FCFBFBFFFFFFE6E6E62A2A2A151515FFFFFFFFFFFF36
              36363232325E5E5E4747473636365F5C5CDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEEAE4E1D6D5D5FFFFFFFFFF
              FFFFFFFFEBEBEB7A7A7AA7A7A7DEDEDEF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF7F7F7EBEBEBDEDEDED0D0D0C0C0C0AEAEAE9898988080804949495858
              582323230505050707070909090C0C0C12121204040404030304030404040510
              0301900504E20808CD0808BC0807AF0708950D0E5F1515512626494848484547
              4D454576585881696A857A7B8785858989899C9D9DB2B2B2C7C7C7D8D8D8E2E2
              E2EDEDEDF7F7F7FFFFFFB8BBB82F302F3F3D3D6969691F1E1F093F4C013F5000
              1D25001F26001E2516191D343434E6E6E69A9A9AC2C0C2FFFFFFFFFFFFFFFFFF
              FFFFFFDADADA292929E9E9E9FFFFFF5E5E5E3737373838382C2C2C3232326B69
              67DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEEAE5E1CFCFCDFFFFFFFFFFFFFFFFFFEBEBEB808080A1A1A1DEDEDE
              F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EBEBEBE0E0E0D1D1D1C0
              C0C0AEAEAE9999998080804D4D4D595959232323111111141414121212101010
              2E2E2E3333331111110C0C0C2A2A2B3F37375D49476F5A5A7F6E6E8B81839694
              94A3A3A3B3B2B2C0C0C0CDCFCCDDDDDCE9E9E9F2F1F2FAFAFAFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB434343
              5151517C7C7C21211F09333D03303D001B23001E26001E260714181E1E1E4E4E
              4E7B7B7B898888FFFFFFFFFFFF767676FFFFFFFFFFFF585858949494FFFFFF7C
              7C7C373737343434363434323332696765DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEF1E9E6BABABAFFFFFFFFFF
              FFFFFFFFEAEAEA838383A1A1A1DDDDDDF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8F8F8EBEBEBE0E0E0D1D1D1C0C0C0AFAFAF9999998080804343435959
              592B2B2B2727272323231F1F1F1414144949494B4B4B101010454545CBCBCBE4
              E2E4EDEDEDF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFEB6B6B6989999
              7A81835D6B6E4C5A5E545C5DFBFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF6F6F6D5D5D5B3B3B383838340404056565640404018161809232A044B5C00
              1D23001E27001E26041D220C11120107081D2121666667F3F2F3FFFFFFCDCDCD
              FFFFFFFFFFFF6666664C4C4CFFFFFFB4B4B43333343C3C3C3F3D3D343334A5A1
              A0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEFAF2EFABABABFFFFFFFFFFFFFFFFFFEBEBEB878787B4B4B4E0E0E0
              F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EDEDEDE0E0E0D1D1D1C2
              C2C2AFAFAF9A9A9A8080803F3F3F5151513434343434343737373333332C2E2E
              49494B3B3C3C232323A1A1A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF849094365E6903566B00627A006A83006F8C00495C162527807F808B
              888B8484847F7F7F7A7A7A7474767777777A7A7A7F7F7F838383888888878787
              6161611414141D1E1D121F2101364300161D011F27001E26001E26001A21001B
              220C2126B6B7B8898889FFFFFFFFFFFFFFFFFFCCCCCC595958777776D0D1D1FF
              FFFF4C4C4B3838373D3D3D1E1E1EF5F1EFDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEF6EEEBAFAFAFFFFFFFFFFF
              FFFFFFFFEDEDED838383B4B4B4DEDEDEF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8F8F8EDEDEDE0E0E0D0D0D0C0C0C0AFAFAF9999997F7F7F3C3C3C3838
              383838383B3B3B4444444949495858584D4D4D5858582E2E2EB1B1B1FAFAFAFF
              FFFFF3F3F3E0E0E0D1D1D1BCBCBCA7A6A77F838511364003566B0496BC049EC7
              04A2CB05A5CF07677F4447477A7C7C6A777B516E7637626D255D6B14586A5C7A
              83C7C2BFE7E1E0DAEAEEDAEAEEC0BBBB2322221F1E1F232323161919013B4801
              181E001E26001E27001E27001E27001E27001E27595E61D8D8D87776779A9A9A
              6D6D6D3B3B3B8C8C8C6262623C3D3CDEDEDE9494943C3C3C2A2A2A696565DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEF5EEEBB7B7B7FFFFFFFFFFFFFFFFFFEDEDED818181AAAAAADEDEDE
              F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EDEDEDE0E0E0D1D1D1C0
              C0C0AEAEAE9A9A9A8080804545454D4D4D4040404848484747474D4D4D484848
              3F3F3F4C4C4C6A6A6A858585ADADADBCBCBCBEBEBEB3B3B3A7A7A79A9A9A9090
              906A6B6D0E5E7204A7CF04ABD603ABD403AAD301A5CD01789500191D01627C01
              A2CB01A3CD03A5CF0094BB65A0B2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              E5DDDC6965632727271B1B1B074555002530001D26001F27001E27001E27001E
              27001E27011B25697073B8B8B89898984C4C4C1B1B1B3333326562618D8B8B61
              5F5F746F6FABA5A2C4BEBCDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEF8F5F1D3D3D3FFFFFFFFFF
              FFFFFFFFEDEDED838383A0A0A0DDDDDDF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8F8F8EDEDEDE0E0E0D0D0D0C0C0C0AFAFAF9A9A9A8181814C4C4C5656
              563636364040404747474C4C4C2F2F2F44444448484855555548484830303016
              16163D3C3CD6D4D3F8F6F5DAEAEEDAEAEEDAEAEE85A3AA127A9215738C015F76
              01556B00566D0054690059700191B801A5CD0C9ABF3D9EB8B8D4DCDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE9892912C2B2C0C293000
              303C001A22001F27001E27001E27001E27001F26001B212F383BC7BFBEF6F1EE
              DAEAEEDAEAEEDAEAEEDAEAEEBAB6B3A09D9DDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEFAF5F2CBCBCBFFFFFFFFFFFFFFFFFFEDEDED8383839C9C9CDDDDDD
              F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EDEDEDE0E0E0D1D1D1C2
              C2C2AFAFAF9A9A9A8181814D4D4D5A5A5A2727273B3B3B3C3C3C3C3C3C2C2C2C
              1F21211A1A1A0C0C0C040403030404383736DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDCD9D8A5ADAD739DA73A7F915496A6669EAE7E
              A2ADBBD1D6DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE515150111516013B4B00181F001E26011E29011E27001E
              27001E27001B226A6B6BDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEB2ADABB8
              B8B7DCD6D4DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEFBF6F5BBBBBBFFFFFFFFFF
              FFFFFFFFEDEDED8080809C9C9CDDDDDDF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF7F7F7EDEDEDE0E0E0D1D1D1C0C0C0AFAFAF9A9A9A7F7F7F4545455252
              52252525111111272727262626292729525150A09A9852514E4E4D4D949290DA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE6B696610
              404D002B3700212B00212A001F27011E27001F2704181DCBC9C8DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE9995943F3D3D8F8F8F0E0E0E0E0E0E292927DAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEFCF8F6B4B4B4FFFFFFFFFFFFFFFFFFEEEEEE858585A5A5A5DEDEDE
              F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EDEDEDE0E0E0D1D1D1C2
              C2C2AFAFAF9A9A9A747474262626212121181818050505111111121212212121
              BAB4B4DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEB1B4B608435100151A001F27001F29001E
              27001E26222A2CDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEA09A9947494756585862
              62627B7B7B888B88434444FAF6F5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEF6F1EFB4B3B3FFFFFFFFFF
              FFFFFFFFEEEEEE8C8C8CAFAFAFDDDDDDF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8F8F8EDEDEDE0E0E0D1D1D1C2C2C2AFAFAF9A9A9A6D6D6D1E1E1E0C0C
              0C0707070303030505050505051A1A1AE7E2E1DAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEE7F8F92042B3600151A011D26011E2904161ABABAB8DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEC7C4C3E4E5E4FFFFFFFFFFFFF8F7F87C7C7C777472DAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEF6F1EEB6B4B4FFFFFFFFFFFFFFFFFFEEEEEE909090ABABABDDDDDD
              F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EDEDEDE0E0E0D1D1D1C2
              C2C2B1B1B19595954444441414140C0C0C121212030303040404040404161616
              F7F2F2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEAAB2B31A434B1E2E332F37
              3AA3A09EDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC0BEBCC2BFBEA6
              A2A2D6D4D1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEFCF7F6D3D1D1FFFFFFFFFF
              FFFFFFFFEFEFEF898989A3A3A3DDDDDDF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF7F7F7EDEDEDE0E0E0D1D1D1C2C2C2AFAFAF9999997070704444441111
              11101010040404040404040404141414E6E4E1DAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEFAF5F5D0CFD0FFFFFFFFFFFFFFFFFFF1F1F18181819D9D9DDDDDDD
              F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EDEDEDE0E0E0D1D1D1C2
              C2C2AFAFAF9A9A9A8383836161612C2C2C0C0C0C030303030303040404191818
              E7E5E4DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEC4C3C3FFFFFFFFFF
              FFFFFFFFEFEFEF8484849A9A9ADDDDDDF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8F8F8EDEDEDE1E1E1D1D1D1C2C2C2AFAFAF9A9A9A8383836666663636
              360C0C0C030303050505100E10403F3FDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEB6B6B6FFFFFFFFFFFFFFFFFFEFEFEF8787879A9A9ADDDDDD
              F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EDEDEDE1E1E1D1D1D1C2
              C2C2AFAFAF9C9C9C8383836666663333330A0A0A0303030707072222225E5C5C
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEAFAEAEFFFFFFFFFF
              FFFFFFFFEFEFEF8C8C8CAAAAAADCDCDCF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8F8F8EDEDEDE1E1E1D1D1D1C2C2C2AFAFAF9C9C9C8383836666663030
              30080808030303040404211F21504C4DDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEABABAAFFFFFFFFFFFFFFFFFFF1F1F1848484ABABABDDDDDD
              F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EDEDEDE1E1E1D3D3D3C3
              C3C3B1B1B19C9C9C8484846767673030300808080103030404041412124D4B4C
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEBABABAFFFFFFFFFF
              FFFFFFFFF2F2F27C7C7CA3A3A3DCDCDCF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8F8F8EDEDEDE1E1E1D1D1D1C2C2C2B1B1B19C9C9C8484846767673232
              320A0A0A0303030404040C0C0C565555DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEED3D1D3FFFFFFFFFFFFFFFFFFF2F2F28080809A9A9ADCDCDC
              F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EDEDEDE1E1E1D3D3D3C2
              C2C2AFAFAF9C9C9C8484846767673737370D0D0D0303030404040909095E5D5E
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEC0BEC0FFFFFFFFFF
              FFFFFFFFF1F1F18383838F8F8FDDDDDDF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8F8F8EDEDEDE1E1E1D1D1D1C2C2C2AFAFAF9C9C9C8484846767673838
              380D0D0D0303030404041010105A5A59DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEA9A7A7FFFFFFFFFFFFFFFFFFF2F2F2878787949494DCDCDC
              F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEDEDEDE1E1E1D3D3D3C0
              C0C0AFAFAF9C9C9C8484846969693636360909090101010404041D1D1D4C4B4B
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEE9C9A9CFFFFFFFFFF
              FFFFFFFFF3F3F3888888B2B2B2DCDCDCF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8F8F8EDEDEDE1E1E1D3D3D3C2C2C2B1B1B19C9C9C8484846969693232
              320808080101010404042323234B4B4BDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEE9D9D9DFFFFFFFFFFFFFFFFFFF3F3F37F7F7FABABABDCDCDC
              F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EEEEEEE1E1E1D1D1D1C0
              C0C0AFAFAF9C9C9C848484696969323232080808030303030303141414525151
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEB4B4B4FFFFFFFFFF
              FFFFFFFFF5F5F5838383A0A0A0DCDCDCF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8F8F8D1D1D16D6D6D7272726666666262625656565858585050502727
              270909090303030303030C0C0C565656DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEC9C8C9FFFFFFFFFFFFFFFFFFF5F5F58B8B8B919191DADADA
              F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8AEAEAE2323232F2F2F22
              22222525252121212222221B1B1B0909090D0D0D1212120404041B1B1B5F5F5F
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEB3B2B3FFFFFFFFFF
              FFFFFFFFF5F5F58B8B8B858585DCDCDCF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFAFAFAB8B8B81D1D1D3636362929292E2E2E2E2E2E2E2E2E2727270707
              070D0D0D0808080304040505056D6D6DDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEE959595FFFFFFFFFFFFFFFFFFF5F5F58787877B7B7BDADADA
              F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8B7B7B73636364040401F
              1F1F1E1E1E2222222626262222220909090909090404040809080404047A7878
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEE959696FFFFFFFFFF
              FFFFFFFFF5F5F58C8C8CA0A0A0DCDCDCF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8F8F8DADADA9090906F6F6F6161614141412929292323230D0D0D0707
              070707080404051010100405058B8B8BDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEA3A3A3FFFFFFFFFFFFFFFFFFF5F5F58C8C8CA3A3A3DADADA
              F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EEEEEEE0E0E0D3D3D3C2
              C2C2A9A9A99090906969691B1B1B0908080101031F2122141515000000989898
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEB6B4B4FFFFFFFFFF
              FFFFFFFFF6F6F6909090969696DADADAF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFAFAFAEEEEEEE1E1E1D3D3D3C3C3C3B1B1B19D9D9D8484846161612F2E
              2E0C0C0C48494B6366672C2B2BCCCCCCDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEC8C7C7FFFFFFFFFFFFFFFFFFF6F6F69494948B8B8BDADADA
              F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEEEEEEE2E2E2D3D3D3C3
              C3C3B1B1B19D9D9D8585856A6A6A4748451F1F1F4E5152ADAFB2DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEB3B2B2FFFFFFFFFF
              FFFFFFFFF6F6F68F8F8F818181DADADAF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFAFAFAEEEEEEE2E2E2D3D3D3C3C3C3B1B1B19D9D9D8787876A6A6A4548
              472121213D3D40999A9DDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEA7A6A6FFFFFFFFFFFFFFFFFFF6F6F68C8C8C7E7E7ED9D9D9
              F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEEEEEEE2E2E2D3D3D3C3
              C3C3B1B1B19D9D9D8787876A6A6A48484822232534343888898BDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEA5A5A5FFFFFFFFFF
              FFFFFFFFF6F6F69494949C9C9CD9D9D9F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF1F1F1CBCBCBD6D6D6BBBBBBB1B1B1A2A2A29595958585856B6B6B4848
              4829292944454888898CDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEA7A6A6FFFFFFFFFFFFFFFFFFF6F6F69494949A9A9ACCCCCC
              B2B2B2909090909090AEAEAEC7C7C7E5E5E5FFFFFFFFFFFFEDEDED9E9E9EFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3D8D8D8D6D6D677777754
              54546262625D5D5D4B4B4B4B4B4B3B3B3A2929296D6E709A9DA1DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEF1EFEF7B7A7AB7B7B7C8C8
              C8B1B1B17777774B4B4B6666669494949A9A9ACDCDCDFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF1F1F1EDEDEDE0E0E0AFAFAFA3A3A3AEAEAE9292927474744D4D4D2727
              2616151669696DA7A9ADDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000C0BFBE5150503838382323232626263434342727273636367E7E7EC2C2C2
              D6D6D6F2F2F2EBEBEBEBEBEBC5C5C5ABABAB999999B7B7B77C7C7C8B8B8B5E5E
              5E4141416666666969695858585D5D5D7C7C7C5A5A5A6B6B6B6666666565657C
              7C7C7878787676767474746565654444441E1E1F5A5C5FABADB1DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000888887262626636363999999A2A2
              A2BABABA9595957070706E6E6E8B8B8B6F6F6F3D3D3D3A3A3A54545445454541
              41414D4D4D7474746161616A6A6A7F7F7F8383839292927B7B7B747474737373
              7878786D6D6D5959595656563D3D3D2727271E1E1E1818181818182323232A2A
              2A1B1B1B404144A7AAADDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEB1B1B19E9E9EFFFFFFFFFFFFFFFFFFF7F7F78989892323231E1E1E
              474747838383BFBFBFD6D6D6DCDCDCE9E9E9FFFFFFFFFFFFFFFFFFADADADFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9C9C9C9D0D0D07F7F7F62
              62628383836767674E4E4E2E2E2E121414161818505051898B8FDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEA5A5A5FFFFFFFFFF
              FFFFFFFFF7F7F78585855858587373737C7C7C888888898989AAAAAADADADAFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8F8F8E9E9E9E1E1E1C2C2C2A7A7A78989895D5D5D4949494747473637
              371E2323444D515D666ADAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEA1A1A1FFFFFFFFFFFFFFFFFFF8F8F8898989555555858585
              B4B4B4DADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEEEEEEE2E2E2D5D5D5C4
              C4C4B2B2B29595957A7A7A5555552E303207384505728F076B851D4D5CF1F5F6
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEA1A1A1FFFFFFFFFF
              FFFFFFFFF8F8F8969696838383D5D5D5F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFAFAFAEEEEEEE2E2E2D4D4D4C4C4C4B3B3B39E9E9E8888886D6D6D4345
              450C4B5A0191B60187A7105466EBEFF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEC4C4C4FFFFFFFFFFFFFFFFFFF8F8F8AEAEAEABABABD9D9D9
              F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEFEFEFE2E2E2D5D5D5C4
              C4C4B3B3B39E9E9E8888886D6D6D4447480D54630192B60187A9105567EAEEEF
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEC3C3C3FFFFFFFFFF
              FFFFFFFFF8F8F8A1A1A1A0A0A0D9D9D9F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFAFAFAEFEFEFE2E2E2D4D4D4C4C4C4B3B3B39E9E9E8888886D6D6D4448
              490C5F720195BA0188AA0C5466E9EDEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEAAAAAAFFFFFFFFFFFFFFFFFFF8F8F89595958F8F8FD9D9D9
              F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEFEFEFE2E2E2D4D4D4C5
              C5C5B3B3B39E9E9E8888886D6D6D4547480A566A0095BB0087AA075165DEE4E5
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEE969696FFFFFFFFFF
              FFFFFFFFFAFAFA8F8F8F888888D8D8D8F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFAFAFAEEEEEEE2E2E2D4D4D4C4C4C4B3B3B39E9E9E8888886D6D6D4748
              470C414E006E8B016681095165DDE4E5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEE989898FFFFFFFFFFFFFFFFFFFBFBFB919191A2A2A2D8D8D8
              F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEFEFEFE2E2E2D4D4D4C4
              C4C4B3B3B39E9E9E8888886E6E6E4B4B4B191F2104273201323F0C4452E2E9EA
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEA2A2A2FFFFFFFFFF
              FFFFFFFFFBFBFB9999999D9D9DD8D8D8F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBFBFBEFEFEFE2E2E2D4D4D4C4C4C4B3B3B39E9E9E8888886E6E6E4C4C
              4C1E211F26303436404723434CDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEC3C3C3FFFFFFFFFFFFFFFFFFFBFBFBB2B2B2AAAAAAD8D8D8
              F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEFEFEFE2E2E2D5D5D5C5
              C5C5B3B3B3A0A0A08888886E6E6E4C4C4C2325234B4D50A1A6AAEDEEEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEB6B6B6FFFFFFFFFF
              FFFFFFFFFBFBFBA6A6A69D9D9DD8D8D8F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBFBFBEFEFEFE4E4E4D5D5D5C4C4C4B3B3B3A0A0A08888886E6E6E4C4C
              4C26252638383AA6AAADDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEE989898FFFFFFFFFFFFFFFFFFFBFBFB9A9A9A8C8C8CD8D8D8
              F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEFEFEFE2E2E2D5D5D5C5
              C5C5B4B4B4A0A0A08989896E6E6E4C4C4C262626262729808487DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEE878787FFFFFFFFFF
              FFFFFFFFFBFBFB949494858585D8D8D8F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBFBFBEFEFEFE2E2E2D4D4D4C4C4C4B3B3B3A0A0A08888886E6E6E4D4D
              4D2627262C2E2E7B7C80DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEE929292FFFFFFFFFFFFFFFFFFFCFCFC9696969E9E9ED8D8D8
              F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEFEFEFE2E2E2D5D5D5C5
              C5C5B3B3B3A0A0A08989896E6E6E4D4D4D2B2B2B4B4B4C888B8DDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEE9A9A9AFFFFFFFFFF
              FFFFFFFFFCFCFCA1A1A1969696D8D8D8EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBFBFBEFEFEFE2E2E2D5D5D5C5C5C5B3B3B3A0A0A08989896E6E6E4D4D
              4D2A2A2A5C5D5EA6A9ABDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEB7B7B7FFFFFFFFFFFFFFFFFFFCFCFCB8B8B8A6A6A6D6D6D6
              EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF1F1F1E4E4E4D5D5D5C5
              C5C5B4B4B4A1A1A18989896F6F6F4E4E4E262626494B4BAAAEB1DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEB1B1B1FFFFFFFFFF
              FFFFFFFFFCFCFCAAAAAA9A9A9AD6D6D6EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBFBFBF1F1F1E4E4E4D5D5D5C5C5C5B4B4B4A0A0A08989896E6E6E4E4E
              4E272727373A3AA7ABAEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEA0A0A0FFFFFFFFFFFFFFFFFFFEFEFE9E9E9E8C8C8CD6D6D6
              EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEFEFEFE4E4E4D5D5D5C5
              C5C5B4B4B4A0A0A08989896F6F6F4E4E4E27272727292A87898CDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEE999999FFFFFFFFFF
              FFFFFFFFFCFCFC9D9D9D838383D6D6D6EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBFBFBEFEFEFE4E4E4D5D5D5C5C5C5B4B4B4A0A0A08989896F6F6F4E4E
              4E292929292A2B7F8184DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEE9C9C9CFFFFFFFFFFFFFFFFFFFCFCFCA2A2A2989898D6D6D6
              EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF1F1F1E5E5E5D5D5D5C5
              C5C5B4B4B4A1A1A18989896F6F6F4D4D4D2C2C2C4144448B8D90DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEE9D9D9DFFFFFFFFFF
              FFFFFFFFFEFEFEA3A3A3898989D6D6D6EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBFBFBF1F1F1E4E4E4D5D5D5C7C7C7B6B6B6A1A1A18989896F6F6F4E4E
              4E2B2B2B595C5CA2A6AADAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEB8B8B8FFFFFFFFFFFFFFFFFFFFFFFFB3B3B3989898D6D6D6
              EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEFEFEFE5E5E5D5D5D5C7
              C7C7B4B4B4A1A1A18989896F6F6F4E4E4E2927294D4E51A9ADAFDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEEBEBEBEFFFFFFFFFF
              FFFFFFFFFEFEFEAFAFAF9D9D9DD6D6D6EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBFBFBEFEFEFE4E4E4D5D5D5C5C5C5B4B4B4A1A1A18989896F6F6F4E4E
              4E2929293D3F3FA7ABAEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEAFAFAFFFFFFFFFFFFFFFFFFFFEFEFEA6A6A68F8F8FD5D5D5
              EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEFEFEFE4E4E4D5D5D5C5
              C5C5B4B4B4A1A1A18989896F6F6F4E4E4E2929292A2A2B949699DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEDAEAEE9D9D9DEFEFEFFBFB
              FBF7F7F7D8D8D88B8B8B787878D5D5D5EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFCFCFCEFEFEFE4E4E4D5D5D5C5C5C5B4B4B4A1A1A18B8B8B6F6F6F5050
              502A2A2A2527267C8080DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEE565656363636404040494949383838212121818181D6D6D6
              EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF1F1F1E4E4E4D5D5D5C5
              C5C5B4B4B4A1A1A18B8B8B7070705050502C2C2C40414185888BDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEED4D4D44E4E4E5050506E6E
              6E7878786363632A2A2A898989D5D5D5EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFBFBFBF1F1F1E5E5E5D5D5D5C5C5C5B4B4B4A1A1A18484846262624444
              44272727565859969A9DDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEE7E7E7E7A7A7AF5F5F5FFFFFFFFFFFFFEFEFEBFBFBFA7A7A7D5D5D5
              EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF1F1F1E5E5E5D6D6D6C7
              C7C7B4B4B49E9E9E5959591A1A1A1919191A1A1A292A2A3D3F3FB2B2B2DAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEA0A0A0B3B3B3FFFFFFFFFF
              FFFFFFFFFFFFFFC9C9C9A3A3A3D5D5D5EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFCFCFCF1F1F1E4E4E4D6D6D6C7C7C7B4B4B49E9E9E5151511515151919
              193030303436342325236B6B6BDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEE969696E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFBCBCBC919191D4D4D4
              EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1
              F1E9E9E9E7E7E7E6E6E6E6E6E6D4D4D3CCCCCBD3D3D3D5D5D5CFCFCFBFBFBFBE
              BEBEB3B3B39D9D9D7A7A7A4848482929290E0E0E0E0E0E373737CDCDCDDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEABABABFCFCFCFFFFFFFFFF
              FFFFFFFFFFFFFFB7B7B77A7A7ACCCCCCD5D5D5C0C0C092929291919165656549
              49493636362121211212122727271B1B1B181818111111181618252526141414
              1616161A1A1A2323233737372A2A2A3232323636364444445151515050504545
              45262626747474DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEE999999FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFB8B8B8656565484848
              3030301515150404040303030101010303030404040505050404040404040505
              050707070707070808080909090A0A0A0A0A0A09090907070705050504040404
              04040404040404040505050808080C0C0C161616969696DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEE9D9D9DF6F6F6FFFFFFFFFF
              FFFFFFFFFFFFFFC2C2C236363604040401010101010103030303030303030304
              04040404040404040404040404040505050707070707070909090909090A0A0A
              0A0A0A0808080707070505050505050505050404040404040404040303030303
              031D1D1DB7B7B7DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEE9E9E9EF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFD5D5D56161611A1A1A
              1515150909090303030303030303030303030404040505050404040404040505
              050505050707070808070909090A0A0A0C0A0C08080805050505050505050504
              0404040404070707111111222222494949A2A2A2DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEE959595EBEBEBFFFFFFFFFF
              FFFFFFFFFFFFFFDEDEDEA0A0A0515151BFBFBFC4C4C4A0A0A05E5E5E4444443C
              3C3C1B1B1B0A0A0A0E0E0E1111110C0C0C040404070707101010151515141414
              1212121111111E1E1E3030304141415454546D6D6D959595CCCCCCDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEE888888E4E4E4FFFFFFFFFFFFFFFFFFFAFAFAC9C9C9989898494949
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEF2F2F2E7E7E7F1F1F1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEE8484847777776D6D6D8989
              898D8D8D8080804E4E4E4545452A2A2ADAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEE5656562F2F2F2F2F2F5252524040402F2F2F2626261F1F1F1A1A1A
              D5D5D5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000DAEAEEB6B6B65959594141414848
              483F3F3F3C3C3C383838373737777777DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEF2F2F2DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE000000}
            Transparent = True
          end
          object Image_Pied_HemisphereSud_Allemande: TImage
            Left = 227
            Top = 222
            Width = 85
            Height = 43
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            AutoSize = True
            Picture.Data = {
              07544269746D6170362B0000424D362B00000000000036000000280000005500
              00002B0000000100180000000000002B0000C40E0000C40E0000000000000000
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEBCCACE151617000000090A
              0A0304040000006B7375DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE545A5C000000869093D8E8
              ECCAD9DD2D3131060606CFDEE2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE9CA8AB7D8689D9E9EDDAEA
              EECCDBDE363A3B010101C9D7DBDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC8D7DB737B7D3438
              39060606000000414547DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC2D0D31516170000000404
              042F3233788183D3E2E6DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE727B7D0000006A7274CCDB
              DEDAEAEE95A0A2A2AEB1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE7F888B000000676F71AFBB
              BF808A8C010101454A4BDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED1E0E4393E3F0000000000
              000000001E2020B9C6CADAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED8E9ECD6E8EAD6E8EAD7E8ECD6E8EA
              D4E6E8D2E6E6D8E9ECD9E9EDD9E9EDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9E9EDB6C3C79EA9
              ACADBABDD6E6EADAEAEEDAEAEEDAEAEEDAEAEEDAEAEED7E8EBD3E5E8CFE2E5CC
              E0E2C9DEE0C7DCDEC5DBDCC2D9D9C1D8D9BFD7D7BDD6D5BDD6D5BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BFD6D6BFD7D7C1D8D8C2D9DAC4DADBC6DCDDC9DE
              E0CCE0E2D0E3E5D3E5E8D7E8ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEED9E9EDD3E5E8CFE3E4A5CFB2BDD8D1BFD7D7BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6C0D7D8C4DBDBCADEE0D0E3E5D6E7EADAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9EAEED3E5E8CCE0
              E2C4DADBBFD7D7BED6D6BED6D693C2A512881452A55C9AC6ADBED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C1D8D8C8
              DDDFD0E3E5D8E9ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEB5C2C5BCCACEDAEAEEDAEAEEC5D3D7B4C1C4D6E6EADAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9EAEDD2E4E7C8DDDFC0D7D8BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D656A76100800000800025912A6CB179AE
              CFC4BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BFD6D7C6DCDDD1E3E6D9EAEDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEC1CFD2010101131515D9E8ECDAEAEE414647000000A5B1B4DAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEED7E8ECCCE0E2C1D8D8BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6B6D2CD1C8D2000800000800000800005
              82053D9C4585BC95BBD4D2BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6C1D8D9CEE1E4D9E9EDDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEE8E989B000000000000B4C1C5D6E5E90C0D0D0000006F7779DAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEED8E9ECCBDFE1BFD7D7BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D694C3A603810300800000800000
              800000800000800012881556A7619EC8B2BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C2D9D9D3E5E8DAEAEEDAEAEE
              DAEAEEDAEAEE5A6062272A2A0B0B0C7D8688A8B5B8000000393D3E3A3E3FDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              D1E4E6C0D8D8BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D659A86400800000800000
              800000800000800000800000800000800029932F70B37EB3D1C9BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6CDE2DFDAEAED
              DAEAEEDAEAEE2629295D64663D4243454A4B6F7779191B1C869092090A0AD5E5
              E900DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEECCE0E2
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6B7D3CE1D8D2100800000
              8000008000008000008000008000008000008000008000068307429E4A8BBF9C
              BCD5D4BED6D6BDD6D5B8D3CFB8D3CFB8D3CFB0D0C6A5CBBAA5CBBAA5CBBA96C4
              A892C2A592C2A58EC0A080BA9080BA9080BA9074B4826DB17B6DB17B6DB17B5B
              A9675AA9665AA96654A65E48A15148A15154A65E6FB27D94C3A7BCD5D3CDE1E3
              DAEAEECAD9DC0202028E999C757D7F1011113337384F5557B7C4C7000000A9B6
              B900DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEECDE1E3BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D694C3A702810300
              800000800013841044933674A45A92AC7296AC76A2B07E9EAE7991AA6E81A565
              77A2635F9750398C2F0E83080080000080000080000080000080000080000080
              0000800000800000800000800000800000800000800000800000800000800000
              80000381031F8E234BA25475B5849EC7B2BBD5D3BED6D6BED6D6BED6D6BFD7D7
              D6E7EB98A3A6000000C0CED1ACB9BC000000010101858F92D8E8EC0F1010747C
              7E00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED7E8EBBFD7D7BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6B9D4D090C1A22A912D3E
              87308E9972C8B0A8DFC3BCEACDC5EED1C9EECFC8E9CBC4E2C5BFDCBFB9D1B7B0
              C0A9A2AB9791978B7C80875B61883325840F0080000080000080000080000080
              000080000080000080000080000080000080000080000E860F35983C61AC6D8B
              BF9DB1D0C8BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              CDE1E27780822F3334D9E9EDD6E6EA26292A1E2020BCCACEDAEAEE505657575D
              5F00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEECEE1E3BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6B1D0C788BE995AA9662B9330078308008000457E349B
              8984C6ADA7E0C3BEF0D2CCF6D9D1FADBD2FADAD2F5D6CEECD0C8E4C7C1D9BEB8
              C9B1AAB5A09AA18E88867572665C544B55301475080080000080000080000080
              000080000080000281032290274BA25577B686A1C9B5BCD5D4BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              CCE0E2DAE8ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEECBE0E1BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BDD6D5AACD
              BF7CB88C4EA4582490280180010080000080000080000080000080003D773066
              5F5DBEA7A1DCC0BAEFD0CBF8D8D3FBDDD4FCDDD4F8DAD1EED3CAE4CAC3D9C0B9
              C9B2ABB6A19AA28E888675716357543C35322F561A0080000080000F8711389A
              4061AC6E8DC09FB5D2CCBED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              D3E5E8DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE002E31321C1E1F1C1E1F1C1E1F1C1E1F1C1E1F606769D3E5E8BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BCD5D49EC8B272B481459F4E168A190080
              000080000080000080000080000080000080000080000080000080003D773167
              5F5EBEA7A1DCC0BAEFD0CBF8D8D2F8DCD3FEDED5FCDDD4F5D8CFE9CFC7E1C5C0
              D4BBB4C0AAA3AD999298847F74666351474425211E62AC6EA3CAB7BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C7DCDD
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00141616141515585E60585E60585E60585E60869093DAEAEEC8DEDFBED6D6
              BED6D6B9D4D195C4A867AF743A9A410F87110080000080000080000080000080
              0000800000800000800000800000800000800000800000800000800000800068
              605FBEA7A1DCC0BAEFD0CBF8D8D2F8DCD3FDDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AC999298847F74666350474425211E4AA254BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C4DADBD8E9ED
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00141616313435DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9EAED79B987
              48A15129932E228F262F953534983B34983B449F4D47A05047A05059A8645AA9
              655CAA686CB17A6CB17A71B37F7FB98F7FB98F87BD9991C2A491C2A491C2A469
              6160BEA7A1DCC0BAEFD0CBF8D8D2F8DCD3FDDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AC999298847F74666350474425211E048204A4CAB9BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C8DDDFD9E9EDDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00141616272A2AAFBCBFAFBCBFAFBCBFAFBCBFD3E2E6DAEAEEDAEAEED9EAEC
              CAE0DEBED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D66A
              6261BEA7A1DCC0BAEFD0CBF9D9D2F9DCD3FDDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AC999298847F74666350474425211F00800047A050BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6C2D9D9D1E4E7DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00141616000000000000000000000000000000B4C1C5DAEAEEDAEAEEDAEAEE
              DAEAEED4E6E9C5DBDCBED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D66A
              6261BEA7A1DCC0BAEFD0CBF9D9D2F9DCD3FDDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AC999298847F74666350474426221F008000038103A1C9B6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6C3D9DACFE2E5D9EAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE001416162326279FABAD9FABAD9FABAD9FABADD0DFE3DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEED4E6E9C8DDDEBFD7D7BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D66B
              6362BEA7A1DCC0BAEFD0CBF9D9D1F9DCD3FCDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AB999298847F74666350474426221F008000008000439F4CBED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6C0D7D8C9DEDFD3E5E8DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00141616313435DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEED8E9EDD0E3E5C7DCDEC0D7D7BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D66C
              6463BEA7A1DCC0BAEFD0CBF9D9D1F9DCD3FCDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AB999298847F74666350474426222050A45A0E86100281029FC8
              B3BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C3D9DACADFE0D2
              E5E7D9E9EDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE0014161605060618191A18191A18191A18191A828B8EDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9EAEDD4E6E9CDE1
              E3C7DCDEC1D8D9BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D66D
              6564BEA7A1DCC0BAEFD0CBF9D9D1F9DCD3FCDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AB999298847F746663504744262220BED6D6B7D3CE7CB88C72B3
              80BED6D6BED6D6BED6D6C0D7D8C5DBDCCADFE1D1E3E6D7E8EBDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE006870725C63655C63655C63655C63655C6365A1ADB0DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEED7E8ECD3E5E8CEE2E4CADFE1C7DCDDC3DADBC3DADBC0D8D86F
              6665BFA7A1DCC0BBEFD0CBFADAD1FADCD3FCDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D5BBB4C0AAA3AB999298847F746663504744272321C0D7D7C3DADAC6DCDDCBDF
              DFCFE3E1C3D4D7DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE66
              5F5DBEA7A1DCC0BAEFD0CBF8D8D3F8DCD3FEDED5FCDDD4F5D8CFE9CFC7E1C5C0
              D4BBB4C0AAA3AD999298847F74666351474425211EEFE9E6DAEAEEDAEAEEDAEA
              EE373B3C0E0F0FDAEAEEDAEAEECAD9DD141516000000B4C1C5DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE68
              605EBEA7A1DCC0BAEFD0CBF8D8D2F8DCD3FDDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AC999298847F74666350474425211EEDE7E5DAEAEEDAEAEEDAEA
              EE373B3C0E0F0FDAEAEEDAEAEE545B5C000000000000B4C1C5DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE6A
              6260BEA7A1DCC0BAEFD0CBF8D8D2F8DCD3FDDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AC999298847F74666350474425211FEBE6E4DAEAEEDAEAEEDAEA
              EE373B3C0E0F0FDAEAEEA3AFB2010202010101000000B4C1C5DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE6C
              6362BEA7A1DCC0BAEFD0CBF9D9D1F9DCD3FCDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AB999298847F746663504744262220E9E5E3DAEAEEDAEAEEDAEA
              EE373B3C0E0F0FD3E3E72224250808094B5152000000B4C1C5DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE6E
              6564BEA7A1DCC0BAEFD0CBF9D9D1F9DCD3FCDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AB999298847F746663504744262220E7E4E2DAEAEEDAEAEEDAEA
              EE373B3C0E0F0F6B7375000000727A7C6B7375000000B4C1C5DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE70
              6765BFA7A1DBC0BAEFD0CAFADAD1FADCD3FCDED5FCDDD4F5D7CEE9CFC6E0C5BF
              D4BBB4C0A9A3AB999297847F746663504643272321E6E3E1DAEAEEDAEAEEDAEA
              EE373B3C040404060606272A2AD5E5E96B7375000000B4C1C5DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE71
              6867BFA7A1DBC0BAEFD0C9FADAD1FADCD3FCDED5FCDDD4F5D7CEE9CFC6E0C5BF
              D4BBB4C0A9A3AC999297847F746663504643282422E4E2E0DAEAEEDAEAEEDAEA
              EE373B3C000000020303A9B5B9DAEAEE6B7375000000B4C1C5DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE73
              6A68BFA8A1DAC1BAEFD0C9FADAD1FADCD3FCDED5FCDDD4F5D6CDE9CFC5E1C5BF
              D4BBB4C0A9A4AC999396847F7466635045432A2524E3E1DFDAEAEEDAEAEEDAEA
              EE373B3C0000005B6263DAEAEEDAEAEE6B7375000000B4C1C5DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE74
              6B6ABFA8A1DAC1BAEFD0C8FADAD1FADCD3FCDED5FCDDD4F5D6CDE9CFC5E1C5BF
              D4BBB4C0A9A4AD999396847F7466635045432B2625E1E0DEDAEAEEDAEAEEDAEA
              EE99A4A7838D8FCEDDE0DAEAEEDAEAEEAEBABE838D8FCBDADDDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE75
              6C6AC0A9A2DAC2BAEFD0C8F9D9D0FADCD3FCDED5FCDDD4F5D6CDEACFC5E2C5BF
              D4BAB3C0A9A4AD989396847F7467625045432B2625E1E0DEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE75
              6C69C0A9A3DAC2BAEFD0C8F9D9D0FADCD3FCDED5FCDDD4F5D6CDEACFC5E2C5BF
              D4BAB3C0A9A4AD989396847F7467625045432A2524E3E1E0DAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE74
              6B68C1AAA4DBC2BAEFD0C9F8D9D0FADCD3FCDED5FCDDD4F5D6CEEBCFC6E2C5BF
              D4BAB3C0A9A3AD989296847F746762504543282423E5E3E1DAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE73
              6A67C2AAA5DBC2BAEFD0CAF8D9D0FADCD3FCDED5FCDDD4F5D6CEECCFC6E2C5BF
              D4BAB3C0A9A3AD989296847F746762504543272322E7E4E3DAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE73
              6A67C3ABA6DCC2BBEFD0CBF8D9D0FBDCD3FCDED5FCDDD4F5D6CFEDCFC7E2C5BF
              D4BAB3C0AAA3AD989296847F746762504544262221EAE6E5DAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00}
            Transparent = True
            Visible = False
          end
          object Image_Pied_Allemande: TImage
            Left = 227
            Top = 222
            Width = 85
            Height = 43
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            AutoSize = True
            Picture.Data = {
              07544269746D6170362B0000424D362B00000000000036000000280000005500
              00002B0000000100180000000000002B0000C40E0000C40E0000000000000000
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE373B3C0E0F0FDAEAEEDAEA
              EECAD9DD141516000000B4C1C5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE373B3C0E0F0FDAEAEEDAEA
              EE545B5C000000000000B4C1C5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE373B3C0E0F0FDAEAEEA3AF
              B2010202010101000000B4C1C5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE373B3C0E0F0FD3E3E72224
              250808094B5152000000B4C1C5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE373B3C0E0F0F6B73750000
              00727A7C6B7375000000B4C1C5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE373B3C040404060606272A
              2AD5E5E96B7375000000B4C1C5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE373B3C000000020303A9B5
              B9DAEAEE6B7375000000B4C1C5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE373B3C0000005B6263DAEA
              EEDAEAEE6B7375000000B4C1C5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED8E9ECD6E8EAD6E8EAD7E8ECD6E8EA
              D4E6E8D2E6E6D8E9ECD9E9EDD9E9EDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE99A4A7838D8FCEDDE0DAEA
              EEDAEAEEAEBABE838D8FCBDADDDAEAEEDAEAEEDAEAEED7E8EBD3E5E8CFE2E5CC
              E0E2C9DEE0C7DCDEC5DBDCC2D9D9C1D8D9BFD7D7BDD6D5BDD6D5BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BFD6D6BFD7D7C1D8D8C2D9DAC4DADBC6DCDDC9DE
              E0CCE0E2D0E3E5D3E5E8D7E8ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEED9E9EDD3E5E8CFE3E4A5CFB2BDD8D1BFD7D7BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6C0D7D8C4DBDBCADEE0D0E3E5D6E7EADAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9EAEED3E5E8CCE0
              E2C4DADBBFD7D7BED6D6BED6D693C2A512881452A55C9AC6ADBED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C1D8D8C8
              DDDFD0E3E5D8E9ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEB5C2C5BCCACEDAEAEEDAEAEEC5D3D7B4C1C4D6E6EADAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9EAEDD2E4E7C8DDDFC0D7D8BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D656A76100800000800025912A6CB179AE
              CFC4BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BFD6D7C6DCDDD1E3E6D9EAEDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEC1CFD2010101131515D9E8ECDAEAEE414647000000A5B1B4DAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEED7E8ECCCE0E2C1D8D8BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6B6D2CD1C8D2000800000800000800005
              82053D9C4585BC95BBD4D2BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6C1D8D9CEE1E4D9E9EDDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEE8E989B000000000000B4C1C5D6E5E90C0D0D0000006F7779DAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEED8E9ECCBDFE1BFD7D7BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D694C3A603810300800000800000
              800000800000800012881556A7619EC8B2BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C2D9D9D3E5E8DAEAEEDAEAEE
              DAEAEEDAEAEE5A6062272A2A0B0B0C7D8688A8B5B8000000393D3E3A3E3FDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              D1E4E6C0D8D8BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D659A86400800000800000
              800000800000800000800000800000800029932F70B37EB3D1C9BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6CDE2DFDAEAED
              DAEAEEDAEAEE2629295D64663D4243454A4B6F7779191B1C869092090A0AD5E5
              E900DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEECCE0E2
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6B7D3CE1D8D2100800000
              8000008000008000008000008000008000008000008000068307429E4A8BBF9C
              BCD5D4BED6D6BDD6D5B8D3CFB8D3CFB8D3CFB0D0C6A5CBBAA5CBBAA5CBBA96C4
              A892C2A592C2A58EC0A080BA9080BA9080BA9074B4826DB17B6DB17B6DB17B5B
              A9675AA9665AA96654A65E48A15148A15154A65E6FB27D94C3A7BCD5D3CDE1E3
              DAEAEECAD9DC0202028E999C757D7F1011113337384F5557B7C4C7000000A9B6
              B900DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEECDE1E3BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D694C3A702810300
              800000800013841044933674A45A92AC7296AC76A2B07E9EAE7991AA6E81A565
              77A2635F9750398C2F0E83080080000080000080000080000080000080000080
              0000800000800000800000800000800000800000800000800000800000800000
              80000381031F8E234BA25475B5849EC7B2BBD5D3BED6D6BED6D6BED6D6BFD7D7
              D6E7EB98A3A6000000C0CED1ACB9BC000000010101858F92D8E8EC0F1010747C
              7E00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED7E8EBBFD7D7BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6B9D4D090C1A22A912D3E
              87308E9972C8B0A8DFC3BCEACDC5EED1C9EECFC8E9CBC4E2C5BFDCBFB9D1B7B0
              C0A9A2AB9791978B7C80875B61883325840F0080000080000080000080000080
              000080000080000080000080000080000080000080000E860F35983C61AC6D8B
              BF9DB1D0C8BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              CDE1E27780822F3334D9E9EDD6E6EA26292A1E2020BCCACEDAEAEE505657575D
              5F00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEECEE1E3BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6B1D0C788BE995AA9662B9330078308008000457E349B
              8984C6ADA7E0C3BEF0D2CCF6D9D1FADBD2FADAD2F5D6CEECD0C8E4C7C1D9BEB8
              C9B1AAB5A09AA18E88867572665C544B55301475080080000080000080000080
              000080000080000281032290274BA25577B686A1C9B5BCD5D4BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              CCE0E2DAE8ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEECBE0E1BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BDD6D5AACD
              BF7CB88C4EA4582490280180010080000080000080000080000080003D773066
              5F5DBEA7A1DCC0BAEFD0CBF8D8D3FBDDD4FCDDD4F8DAD1EED3CAE4CAC3D9C0B9
              C9B2ABB6A19AA28E888675716357543C35322F561A0080000080000F8711389A
              4061AC6E8DC09FB5D2CCBED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              D3E5E8DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE002E31321C1E1F1C1E1F1C1E1F1C1E1F1C1E1F606769D3E5E8BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BCD5D49EC8B272B481459F4E168A190080
              000080000080000080000080000080000080000080000080000080003D773167
              5F5EBEA7A1DCC0BAEFD0CBF8D8D2F8DCD3FEDED5FCDDD4F5D8CFE9CFC7E1C5C0
              D4BBB4C0AAA3AD999298847F74666351474425211E62AC6EA3CAB7BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C7DCDD
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00141616141515585E60585E60585E60585E60869093DAEAEEC8DEDFBED6D6
              BED6D6B9D4D195C4A867AF743A9A410F87110080000080000080000080000080
              0000800000800000800000800000800000800000800000800000800000800068
              605FBEA7A1DCC0BAEFD0CBF8D8D2F8DCD3FDDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AC999298847F74666350474425211E4AA254BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C4DADBD8E9ED
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00141616313435DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9EAED79B987
              48A15129932E228F262F953534983B34983B449F4D47A05047A05059A8645AA9
              655CAA686CB17A6CB17A71B37F7FB98F7FB98F87BD9991C2A491C2A491C2A469
              6160BEA7A1DCC0BAEFD0CBF8D8D2F8DCD3FDDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AC999298847F74666350474425211E048204A4CAB9BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C8DDDFD9E9EDDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00141616272A2AAFBCBFAFBCBFAFBCBFAFBCBFD3E2E6DAEAEEDAEAEED9EAEC
              CAE0DEBED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D66A
              6261BEA7A1DCC0BAEFD0CBF9D9D2F9DCD3FDDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AC999298847F74666350474425211F00800047A050BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6C2D9D9D1E4E7DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00141616000000000000000000000000000000B4C1C5DAEAEEDAEAEEDAEAEE
              DAEAEED4E6E9C5DBDCBED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D66A
              6261BEA7A1DCC0BAEFD0CBF9D9D2F9DCD3FDDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AC999298847F74666350474426221F008000038103A1C9B6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6C3D9DACFE2E5D9EAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE001416162326279FABAD9FABAD9FABAD9FABADD0DFE3DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEED4E6E9C8DDDEBFD7D7BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D66B
              6362BEA7A1DCC0BAEFD0CBF9D9D1F9DCD3FCDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AB999298847F74666350474426221F008000008000439F4CBED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6C0D7D8C9DEDFD3E5E8DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00141616313435DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEED8E9EDD0E3E5C7DCDEC0D7D7BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D66C
              6463BEA7A1DCC0BAEFD0CBF9D9D1F9DCD3FCDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AB999298847F74666350474426222050A45A0E86100281029FC8
              B3BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C3D9DACADFE0D2
              E5E7D9E9EDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE0014161605060618191A18191A18191A18191A828B8EDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9EAEDD4E6E9CDE1
              E3C7DCDEC1D8D9BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D66D
              6564BEA7A1DCC0BAEFD0CBF9D9D1F9DCD3FCDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AB999298847F746663504744262220BED6D6B7D3CE7CB88C72B3
              80BED6D6BED6D6BED6D6C0D7D8C5DBDCCADFE1D1E3E6D7E8EBDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE006870725C63655C63655C63655C63655C6365A1ADB0DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEED7E8ECD3E5E8CEE2E4CADFE1C7DCDDC3DADBC3DADBC0D8D86F
              6665BFA7A1DCC0BBEFD0CBFADAD1FADCD3FCDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D5BBB4C0AAA3AB999298847F746663504744272321C0D7D7C3DADAC6DCDDCBDF
              DFCFE3E1C3D4D7818B8D687072727A7DA8B5B8DAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE66
              5F5DBEA7A1DCC0BAEFD0CBF8D8D3F8DCD3FEDED5FCDDD4F5D8CFE9CFC7E1C5C0
              D4BBB4C0AAA3AD999298847F74666351474425211EEFE9E6DAEAEEDAEAEEDAEA
              EEBCCACE151617000000090A0A0304040000006B7375DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE68
              605EBEA7A1DCC0BAEFD0CBF8D8D2F8DCD3FDDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AC999298847F74666350474425211EEDE7E5DAEAEEDAEAEEDAEA
              EE545A5C000000869093D8E8ECCAD9DD2D3131060606CFDEE2DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE6A
              6260BEA7A1DCC0BAEFD0CBF8D8D2F8DCD3FDDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AC999298847F74666350474425211FEBE6E4DAEAEEDAEAEEDAEA
              EE9CA8AB7D8689D9E9EDDAEAEECCDBDE363A3B010101C9D7DBDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE6C
              6362BEA7A1DCC0BAEFD0CBF9D9D1F9DCD3FCDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AB999298847F746663504744262220E9E5E3DAEAEEDAEAEEDAEA
              EEDAEAEEC8D7DB737B7D343839060606000000414547DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE6E
              6564BEA7A1DCC0BAEFD0CBF9D9D1F9DCD3FCDED5FCDDD4F5D8CFE9CFC7E0C5BF
              D4BBB4C0AAA3AB999298847F746663504744262220E7E4E2DAEAEEDAEAEEDAEA
              EEC2D0D31516170000000404042F3233788183D3E2E6DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE70
              6765BFA7A1DBC0BAEFD0CAFADAD1FADCD3FCDED5FCDDD4F5D7CEE9CFC6E0C5BF
              D4BBB4C0A9A3AB999297847F746663504643272321E6E3E1DAEAEEDAEAEEDAEA
              EE727B7D0000006A7274CCDBDEDAEAEE95A0A2A2AEB1DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE71
              6867BFA7A1DBC0BAEFD0C9FADAD1FADCD3FCDED5FCDDD4F5D7CEE9CFC6E0C5BF
              D4BBB4C0A9A3AC999297847F746663504643282422E4E2E0DAEAEEDAEAEEDAEA
              EE7F888B000000676F71AFBBBF808A8C010101454A4BDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE73
              6A68BFA8A1DAC1BAEFD0C9FADAD1FADCD3FCDED5FCDDD4F5D6CDE9CFC5E1C5BF
              D4BBB4C0A9A4AC999396847F7466635045432A2524E3E1DFDAEAEEDAEAEEDAEA
              EED1E0E4393E3F0000000000000000001E2020B9C6CADAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE74
              6B6ABFA8A1DAC1BAEFD0C8FADAD1FADCD3FCDED5FCDDD4F5D6CDE9CFC5E1C5BF
              D4BBB4C0A9A4AD999396847F7466635045432B2625E1E0DEDAEAEEDAEAEEDAEA
              EEDAEAEED9E9EDB6C3C79EA9ACADBABDD6E6EADAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE75
              6C6AC0A9A2DAC2BAEFD0C8F9D9D0FADCD3FCDED5FCDDD4F5D6CDEACFC5E2C5BF
              D4BAB3C0A9A4AD989396847F7467625045432B2625E1E0DEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE75
              6C69C0A9A3DAC2BAEFD0C8F9D9D0FADCD3FCDED5FCDDD4F5D6CDEACFC5E2C5BF
              D4BAB3C0A9A4AD989396847F7467625045432A2524E3E1E0DAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE74
              6B68C1AAA4DBC2BAEFD0C9F8D9D0FADCD3FCDED5FCDDD4F5D6CEEBCFC6E2C5BF
              D4BAB3C0A9A3AD989296847F746762504543282423E5E3E1DAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE73
              6A67C2AAA5DBC2BAEFD0CAF8D9D0FADCD3FCDED5FCDDD4F5D6CEECCFC6E2C5BF
              D4BAB3C0A9A3AD989296847F746762504543272322E7E4E3DAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE73
              6A67C3ABA6DCC2BBEFD0CBF8D9D0FBDCD3FCDED5FCDDD4F5D6CFEDCFC7E2C5BF
              D4BAB3C0AAA3AD989296847F746762504544262221EAE6E5DAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00}
            Transparent = True
          end
          object Label_Tube_Est_Allemande: TLabel
            Left = 57
            Top = 110
            Width = 93
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = '(Tube '#224' l'#39'Est)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label_Tube_Ouest_Allemande: TLabel
            Left = 57
            Top = 203
            Width = 112
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = '(Tube '#224' l'#39'Ouest)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
            WordWrap = True
          end
          object RadioGroup_Etat_Telescope_Allemande: TRadioGroup
            Left = 18
            Top = 30
            Width = 162
            Height = 215
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Ctl3D = True
            DoubleBuffered = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemIndex = 0
            Items.Strings = (
              ' Retourn'#233
              ' Non retourn'#233)
            ParentCtl3D = False
            ParentDoubleBuffered = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = RadioGroup_Etat_Telescope_AllemandeClick
          end
        end
        object GroupBox_Parametres_critiques_Allemande: TGroupBox
          Left = 404
          Top = 29
          Width = 397
          Height = 210
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Param'#232'tres critiques'
          Color = clBtnHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object LabelUniteAngleHoraireOuest: TLabel
            Left = 315
            Top = 36
            Width = 56
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'minutes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object LabelUniteAngleHoraireEst: TLabel
            Left = 315
            Top = 80
            Width = 56
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'minutes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object LabelAngleHoraireOuest: TLabel
            Left = 18
            Top = 80
            Width = 196
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Angle horaire critique Ouest'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object LabelAngleHoraireEst: TLabel
            Left = 18
            Top = 36
            Width = 177
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Angle horaire critique Est'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object LabelDeclinaisonOuest: TLabel
            Left = 18
            Top = 167
            Width = 184
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'D'#233'clinaison critique Ouest'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object LabelDeclinaisonEst: TLabel
            Left = 18
            Top = 123
            Width = 165
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'D'#233'clinaison critique Est'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object LabelUniteDeclinaisonOuest: TLabel
            Left = 315
            Top = 123
            Width = 49
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'degr'#233's'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object LabelUniteDeclinaisonEst: TLabel
            Left = 315
            Top = 167
            Width = 49
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'degr'#233's'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object SpinEdit_Angle_horaire_critique_Est_Allemande: TSpinEdit
            Left = 240
            Top = 30
            Width = 66
            Height = 32
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Symbol'
            Font.Style = []
            Increment = 5
            MaxValue = 0
            MinValue = -360
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Value = -60
            OnChange = Modification_angle_horaire_critique_Est_Allemande
          end
          object SpinEdit_Angle_horaire_critique_Ouest_Allemande: TSpinEdit
            Left = 240
            Top = 75
            Width = 66
            Height = 32
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Symbol'
            Font.Style = []
            Increment = 5
            MaxValue = 360
            MinValue = 0
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Value = 60
            OnChange = Modification_angle_horaire_critique_Ouest_Allemande
          end
          object SpinEdit_Declinaison_critique_Ouest_Allemande: TSpinEdit
            Left = 240
            Top = 162
            Width = 66
            Height = 32
            Hint = 'T'#233'lescope '#224' l'#39'Ouest, contrepoids '#224' l'#39'Est'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Symbol'
            Font.Style = []
            Increment = 5
            MaxValue = 90
            MinValue = -90
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            Value = 10
          end
          object SpinEdit_Declinaison_critique_Est_Allemande: TSpinEdit
            Left = 240
            Top = 119
            Width = 66
            Height = 32
            Hint = 'T'#233'lescope '#224' l'#39'Est, contrepoids '#224' l'#39'Ouest'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Symbol'
            Font.Style = []
            Increment = 5
            MaxValue = 90
            MinValue = -90
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Value = 10
          end
        end
        object GroupBox_Parametres_pointage_Allemande: TGroupBox
          Left = 405
          Top = 243
          Width = 398
          Height = 252
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Param'#232'tres du pointage'
          Color = clBtnHighlight
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          object LabelAngleHoraireUnite: TLabel
            Left = 314
            Top = 36
            Width = 56
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'minutes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object LabelRayon: TLabel
            Left = 17
            Top = 143
            Width = 185
            Height = 60
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 
              'Rayon de d'#233'placement    a priori sans retournement ni d'#233'retourne' +
              'ment'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object LabelRayonUnite: TLabel
            Left = 315
            Top = 162
            Width = 49
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'degr'#233's'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label97: TLabel
            Left = 17
            Top = 210
            Width = 120
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'D'#233'lai de d'#233'cision'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label95: TLabel
            Left = 315
            Top = 210
            Width = 69
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'secondes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label120: TLabel
            Left = 18
            Top = 105
            Width = 235
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Temps de poursuite horaire >'
            Color = clBtnHighlight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label_Temps_de_Poursuite_Horaire_Minimal_Allemande: TLabel
            Left = 266
            Top = 105
            Width = 36
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Alignment = taRightJustify
            AutoSize = False
            Caption = '120'
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clBlue
            Font.Height = -17
            Font.Name = 'Symbol'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label122: TLabel
            Left = 315
            Top = 105
            Width = 64
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'minutes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label123: TLabel
            Left = 18
            Top = 30
            Width = 123
            Height = 60
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Angle Horaire de retournement au pointage'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object SpinEdit_Angle_Horaire_Retournement_Allemande: TSpinEdit
            Left = 240
            Top = 32
            Width = 66
            Height = 32
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Enabled = False
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Symbol'
            Font.Style = []
            Increment = 5
            MaxValue = 60
            MinValue = -60
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Value = -60
            OnChange = SpinEdit_Angle_Horaire_Retournement_AllemandeChange
          end
          object SpinEdit_Rayon_Minimal_Allemande: TSpinEdit
            Left = 240
            Top = 156
            Width = 66
            Height = 32
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Symbol'
            Font.Style = []
            Increment = 5
            MaxValue = 360
            MinValue = 0
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Value = 0
          end
          object SpinEdit_Delai_Decision_Allemande: TSpinEdit
            Left = 240
            Top = 206
            Width = 66
            Height = 32
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Symbol'
            Font.Style = []
            Increment = 5
            MaxValue = 300
            MinValue = 0
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            Value = 20
          end
          object CheckBox_Optimiser_Poursuite_Allemande: TCheckBox
            Left = 240
            Top = 72
            Width = 356
            Height = 26
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Optimiser'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            State = cbChecked
            TabOrder = 3
            OnClick = CheckBox_Optimiser_Poursuite_AllemandeClick
          end
        end
        object GroupBox_Retournement_Allemande: TGroupBox
          Left = 14
          Top = 341
          Width = 381
          Height = 154
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Retournements sur ordre'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          object Label_Consigne_Retournement_Allemande: TLabel
            Left = 12
            Top = 66
            Width = 254
            Height = 168
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 
              'Mode d'#39'emploi : pour retourner (ou d'#233'retourner) le t'#233'lescope, il' +
              ' suffit de renouveler l'#39'ordre de pointage en maintenant simultan' +
              #233'ment appuy'#233'e la touche '#171' CONTR'#212'LE '#187'.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -18
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
            Visible = False
            WordWrap = True
          end
          object CheckBox_Retournement_Allemande: TCheckBox
            Left = 12
            Top = 29
            Width = 356
            Height = 25
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Autoriser les retournements sur ordre'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = CheckBox_Retournement_AllemandeClick
          end
        end
      end
      object GroupBox_Pointage_Fourche: TGroupBox
        Left = 5
        Top = 5
        Width = 813
        Height = 489
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Monture '#224' fourche'
        TabOrder = 0
        object GroupBox_Algorithme_Pointage_Fourche: TGroupBox
          Left = 20
          Top = 33
          Width = 772
          Height = 344
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Algorithme de pointage'
          Color = clBtnHighlight
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          object GroupBox_Pointage_Prudent_Fourche: TGroupBox
            Left = 245
            Top = 30
            Width = 513
            Height = 297
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Algorithme de pointage prudent'
            Color = clBtnHighlight
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentColor = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            object Image_Meridien_Algorithme_Prudent: TImage
              Left = 308
              Top = 23
              Width = 124
              Height = 176
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              AutoSize = True
              Picture.Data = {
                07544269746D617076590000424D765900000000000036040000280000007C00
                0000B0000000010008000000000040550000C40E0000C40E0000000100000000
                000002020200028202008282820082C282000202FA00C2C2C200C2E2C2000A4A
                0A00469E46008686C600E2E2E2004242FE00E2F2E200122E1200464646002222
                DE0062B2620022922200A2A2A200A2A2FE00A2D2A200C2C2FE00F2F2F2006666
                66006262FE002A2A2A00F2FAF200128A120052AA52001212FE00D2EAD2008282
                FE00E2E2FE003232FE00B2B2B200B2DAB2001212120092929200D2D2D2005252
                FE005656560072BA7200B2B2FE00D2D2FE009292FE0092CA9200329A32007676
                760046A6460036363600FAFAFA001E921E000A0AFE00E2EEE200EAF2EA002222
                22002222FE00F2F2FE001A8E1A00DAEADA00B6B6B600BADABA000A0A0A000A86
                0A008A8A8A008AC68A00CACACA00CAE6CA000E7A0E004A4AFE004E4E4E006AB2
                6A00AAAAAA00AAAAFE00AAD6AA00CACAFE006E6E6E007676FE005AAE5A001A1A
                FE008A8AFE00EAEAFE003A3AFE001A1A1A009A9A9A00DADADA005A5AFE005E5E
                5E007ABE7A00BABAFE00DADAFE009A9AFE003A9E3A00FAFEFA002A2AFE000606
                FE0042A242002A962A00F2F6F20032323200168E16009ACE9A007E7E7E004EA6
                4E003E3E3E00EAEAEA00EAF6EA0026262600DAEEDA00BEBEBE00BADEBA006AB6
                6A0006060600068606008686860086C286000202FE00C6C6C600C6E2C6004242
                4200E6E6E6004646FE00E6F2E600162E16004A4A4A0026922600A6A6A600A6A6
                FE00A6D2A60036663600AABAAA006A6AFE007E7EFE006A6A6A002E2E2E001616
                160096969600D6D6D6005A5A5A007A7A7A003A3A3A001E261E00BABABA000E0E
                0E008E8E8E00CECECE0052525200AEAEAE00727272001E1E1E009E9E9E00DEDE
                DE0062626200EEEEEE00C6C6FE001616FE008686FE00E6E6FE003636FE005656
                FE00B6B6FE00D6D6FE009696FE000E0EFE002626FE00F6F6FE004E4EFE00AEAE
                FE00CECEFE001E1EFE008E8EFE00EEEEFE003E3EFE005E5EFE00BEBEFE00DEDE
                FE009E9EFE002E2EFE00F6FAF600168A160056AA5600D6EAD600B6DAB60076BA
                7600369A36004AA64A001E8E1E000E860E008EC68E00CEE6CE00AED6AE005EAE
                5E007EBE7E003E9E3E00FEFEFE0046A24600F6F6F6009ECE9E00EEF6EE00DEEE
                DE00BEDEBE006EB66E00FAFAFE00000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2CAA24BC2C2C2C2C2C2519C5149A2C2C2C249A2C2C220AAA0C27F5BC27F
                5BC2C2C213B0C2C2C213B0C2C2CA59502BCAC2C2AF8420C2C25A849DC2C2AB49
                49A55B7FC2A18451C2C2A52A2CA1C2C2C2A2A7C2C2C22C2AC2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                9F56C2C2C2C2C2C25B38A556A4C2C2C29F5EC2515E7445C22721C2A621C2C2C2
                459EC2C2C27952C2200B74747418A5C2AE7415C2C259749AC24B9B7474AD5EA6
                C22A74A8C25A217474744DA5C2A456C2C2C238ADC2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C29A1DAFC2
                C2C2C239AC9CC256A4C2C2C29FB1C22B747FC2C2A621C2A621C2C2C24552C2C2
                C279ACA59FA69DC29A4FB0C259749AC2C2A0744BA50B459DCAB03427C2A7742B
                A50BAD51CA591DA0C2A456C2C2C238ADC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2A5529CC2C2C2C2AE
                9B5AC2565EC2C2C29F5EC2A174A7C2C22721C2A621C2C2C2459EC2C2C27952AF
                A92AC2C2C2C2C2C2AE7415C2C259749AA19B59C2C2CAB1A6C2A7742BA81D4BC2
                C2C2C2C2C2A456C2C2C238ADC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C250747474747474A6C2C256
                A4C2C2C29FB1C22B74A7C2C2A621C2A69EC2C2C2459EC2C2C279521574747474
                74740BC259749AC2C2A0749AA0744BC2C2C22127C2A7742B4974747474747456
                C2A456C2C2C238ADC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2201D45841F835FA7C2C256A4CAC2C2
                9F5EC22B74A7C2C22721C2A65EA5C2C24521CAC2C279529D38A0C2C2CA521FC2
                AE7459C2C259749AA19B59C2C2A55EA6C22A74A85A9B4BC2C2CAA45BC2A427CA
                C2C238ADC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2CA2718C2C2B0A939C2C25634B0CAAF21A6C22B
                74A7C2C2A621C2A6A313A5205E3849CA5A5E56CA18799DCA49A915C2597483CA
                C2A0744BCA0B279DCA2C3427C2A7742BCAA65651CA5B4FA1C2A44F15C24B1D1F
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2AE9B9D390B84C2C2C2561D9E7474342AA1747474B1C2
                2721C2A6B18374741DAE9F7474A359C2399F747434A2C2C2AE745674B059749A
                C2151D747456A4A6C2A7742BC251457474A37FC2C2A4A43874749B5AC2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2395250A81D5AC2C2C2A72CA5A050AFC25118749F5BC27F5BC27F
                5BCAAEAA20C2CAA0AAAFC2C2C2C215AAAFC2C2C2AF845A13A1AF849DC2C2517F
                A7A52127C25A8451C2C2CA59A29DC2C2C22CA7AB7FA251C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C21F9E8345CAC2C2C2C2C2C2C2C2C2C2C2A174A7C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2154BC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C221A6
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C25A
                A3747FC2C2C2C2C2C2C2C2C2C2C2C29D79A7C2C2A621C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C24BA4AEC2C2C2C2C2C2C2C2A0744BC2C2C2C2C2C22127C2A7742B
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2CA13AA39C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2A5C2C2495BC2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2B0A2A5C2C2C2C2C2C2C2AF849DC2C2C2C2C2C25B7FC25A8451C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C279
                5F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2455F15C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2793415C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2455F15C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2795F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2455F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2793415C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2455F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C279
                5F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2455F15C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2793415C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2455F15C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2795F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2455F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2793415C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2795F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C279
                3415C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2325597C20A927788C2780F0409C20A
                460E88C2C42699C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C23299C27828853CC2C2C2C2C2C2C2793415C2C2C2C2C2C2
                78669293C2C416C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C4947C88C2C2C2C2C2C2C2C2C2C2C2C2455F15C2C2C2C2C2C2C2C2C2C2
                C297287705C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2268816C2
                16C2C2C2C2C2C2C2C2C2C2C2C2C2C2795F15C2C2C2C2C2C2C2C2C2C2C2C2C232
                32C26D48C4C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2888591C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2455F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C29954
                8A0AC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C23C91C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2793415C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C412
                78C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C269927216C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2455F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C28E7C96C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C4C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C279
                5F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C4C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C23296
                9299C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2455F15C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C254980AC2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C27540C4C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2793415C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2427232C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C299C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2455F15C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C432C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C232885732C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2795F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C23C9297C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2420232C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2455F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2268B32C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2793415C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C299
                170AC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2455F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2023CC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C216286DC2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C279
                5F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C299573CC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2320AC2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2455F15C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                1669C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C23297C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2793415C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C29969
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2326688C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2455F15C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C20A4655C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2052FC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2795F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2914C32C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2455F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C455C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2793415C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C497C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C26648C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2455F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2169297C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2260E3E868AC2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C279
                5F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2754CC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2166B0000008769C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2455F15C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C4C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C26D000000000012C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2793415C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C4C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C242000000000048C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2455F15C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                9372C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C48C0000008616C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2795F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2198832
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C21637708C
                9478C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2455F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C263005716C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2120068C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2793415C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C26300008626C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C48C7022C2C2C2C2C2C2C22222
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2455F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C20A024C8EC2C2C2C2630000008F7E32C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C205006332C2C2C2C2C2322F0096C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C279
                5F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2895300000096C2C2C26300000000004CC4C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2570096C2C2C2C2C20A68000054C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2455F15C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                94000000008699C2C23100003E9354989897C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C269248799C2C2C2C23C8700000096C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2793415C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C298000000
                003769C2C2866B8A0090C2C2C232C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2960057C2C2C2328B000000000054C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2455F15C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C27E700000002832C2
                C23772053E8C16C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2324670
                3CC2C20A7795288A00000096C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2795F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2028F000005C2C2C2777832
                860026C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2998F8716C2C242
                69C2C298006B0054C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2455F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C28B004CC2C2C296C2C2660072C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2930028C2C2C2C2C2C29953
                24058F96C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2793415C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C289873769C2C232C2C26D3E0EC4C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2850096C2C2C2C2C2C2930046C28596
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2455F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C20E008EC2C2C2C2C2C4378F0AC2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C4313E26C2C2C2C2C2328A007EC2267EC2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C279
                5F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2250094C2C2C2C2C2C28A003CC2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2787095C2C2C2C2C2C299878769C23299C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2455F15C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2428F3116C2C2C2C2C225008BC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C222008AC2C2C2C2C2C275007CC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2793415C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C4197089C2C2C2C2C26D3E7C32C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                400040C2C2C2C2C2C2400072C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2455F15C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2850096
                C2C2C2C2C278873799C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2577093C2
                C2C2C2C23292708EC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2795F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2880094C2C2C2C2
                C2C2193E0AC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C232313E89C2C2C2C2C2
                16862497C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2455F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C26D3E4632C2C2C2C2C29200
                6DC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C216532416C2C2C2C2C2693E95C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2793415C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C297878699C2C2C2C2C22F0054C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2167053C2C2C2C2C2C2910077C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2455F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C23237240AC2C2C2C2C2880002C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C20A0031C2C2C2C2C2C2220057C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C279
                5F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2770089C2C2C2C2C27E0085C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C291007CC2C2C2C2C2C296002FC2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2455F15C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2920075C2C2C2C2C26D3E8AC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2050092C2C2C2C2C2C2720040C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2793415C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C257008EC2C2C2C2C2053E9232C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C26D
                0057C2C2C2C2C2C2400088C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2455F15C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C29400
                7EC2C2C2C2C2758F7CC4C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2930098C2C2
                C2C2C2C22F0054C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2795F15C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2660096C2C2C2
                C2C2918F7C32C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C28E0098C2C2C2C2C2C2
                660088C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2B90176C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2660054C2C2C2C2C2758F
                7C32C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2050092C2C2C2C2C2C2400090C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C33F06C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C294007EC2C2C2C2C26D3E92C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C226000EC2C2C2C2C2C2540066C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2170022C2C2C2C2C23C7057C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C297008CC2C2C2C2C2C27E002FC2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C228006DC2C2C2C2C2480085C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2690086C2C2C2C2C2C2220057C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2770091C2C2C2C2C296002FC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C216248732C2C2C2C2C289008CC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C23237240AC2C2C2C2C2020040C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C4
                318F55C2C2C2C2C2992453C4C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C20A8786
                99C2C2C2C2C2980093C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C292708EC2
                C2C2C2C216632455C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2BDC862C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2058F7C32C2C2C2
                C2C28C0089C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2940054C2C2C2C2C2
                3292703CC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2B93F06C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2120085C2C2C2C2C2C49587
                69C2C2C27592008C8832C2C2C2C2C2C2C2C2C2C254002FC2C2C2C2C2C2720002
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C30176C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2170012C2C2C2C2C255243116C2C248
                000000000017C2C2C2C2C2C2C2C2C2C291008CC2C2C2C2C2C2750077C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2B93FC8C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C232863E55C2C2C2C2C28E7028C2C2C43700378B28
                000093C2C2C2C2C2C2C2C2C216958F99C2C2C2C2C299538799C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C3
                0106C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C226246316C2C2C2C2C2660025C2C291000005C2C27C008AC2
                C2C2C2C2C2C2C2C23246708EC2C2C2C2C23246703CC2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2B93F06C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2120085C2C2C2C2C2C2770091C2C28E178C32C2C22F0095C2C2C2C2C2
                C2C2C2C2C2720002C2C2C2C2C2C2880017C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C30106C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                7C0022C2C2C2C2C278873799C2C2C2C2C2C2C2C22F0095C2C2C2C2C2C2C2C2C2
                C2420068C2C2C2C2C2C2788F5399C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C33F06C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C255873769C2
                C2C2C2C28E3E2832C2C2C2C2C2C2C2C20E0057C2C2C2C2C2C2C2C2C2C216378F
                55C2C2C2C2C232280048C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C26E146AC2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C290004CC2C2C2C2C2C2
                850025C2C2C2C2C2C2756628007091C2C2C2C2C2C2C2C2C2C2C22F0072C2C2C2
                C2C2C2930046C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C4310005C2C2C2C2C216373E97C2
                C2C2C2C2C26D00001942C2C2C2C2C2C2C2C2C2C2C2C2910063C2C2C2C2C2C299
                373E42C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C248706816C2C2C2C2C248704632C2C2C2C2C2
                C2890000007EC2C2C2C2C2C2C2C2C2C2C2C2C4633E42C2C2C2C2C2C2900092C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C29124000000000000007CC2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C48C0093C2C2C2C2C2C228007EC2C2C2C2C2C2C2C2C402
                007069C2C2C2C2C2C2C2C2C2C2C2C2400085C2C2C2C2C2C269378F75C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C21686000000000000007CC2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C248706316C2C2C2C2C297875369C2C2C2C232783CC2C21600007EC2
                C2C2C2C2C2C2C2C2C2C2C278248F0AC2C2C2C2C2C290007CC2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C266000037660266027EC2C2C2C2C2C2C2C2C2C2C2C2C2C2
                168C0096C2C2C2C2C2C28B0085C2C2C2C2C23C000055C269000012C2C2C2C2C2
                C2C2C2C2C2C2C2C24C0066C2C2C2C2C2C299197048C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2107D43C2C2C2C2C2C2
                C2C2C2C2C20A95002405C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C225006816
                C2C2C2C2C269533E89C2C2C2C2C2162400198B0E007078C2C2C2C2C2C2C2C2C2
                C2C2C2C2553E9599C2C2C2C2C2C222006B99C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C30176C2C2C2C2C2C2C2C2C2C2
                C2C2483E005355C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C297533E05C2C2C2C2C2
                C240008A32C2C2C2C2C2C290000000000090C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                328A0072C2C2C2C2C2C2C492002FC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C33F06C2C2C2C2C2C2C2C2C2C2C2C2C285
                00007799C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2570085C2C2C2C2C2C269373E91
                C2C2C2C2C2C2C2C21277006854C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2893E87
                97C2C2C2C2C2C289243E3CC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2B90176C2C2C2C2C2C2C2C2C2C2C2C2C2C48A00008A
                C4C2C2C2C2C2C2C2C2C2C2C2C2C29670370AC2C2C2C2C2C202008A32C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2940098C2C2C2
                C2C2C2C25400370AC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C33F06C2C2C2C2C2C2C2C2C2C2C2C2C2C21646000054C2C2C2
                C2C2C2C2C2C2C2C2C226877093C2C2C2C2C2C226878F91C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C26953706DC2C2C2C2C2C2
                3298004632C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2B90176C2C2C2C2C2C2C2C2C2C2C2C2C2C2C26931001978C2C2C2C2C2C2
                C2C2C2C2168C008BC2C2C2C2C2C2C292002FC2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2880031C4C2C2C2C2C2C2691900
                4CC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C3
                7106C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C28E3E0093C2C2C2C2C2C2C2C2C2C4
                8A007716C2C2C2C2C2C248706B69C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C468002FC2C2C2C2C2C2C291537002C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2B7C31EC2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C463004CC2C2C2C2C2C2C2C2C24C006B55C2
                C2C2C2C2C269190048C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C289243E8EC2C2C2C2C2C2C26D247088C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2888A17C2C2C231007CC2C2C2C2C2C2C2C202705326C2C2C2C2C2C2
                328A0092C4C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C296003769C2C2C2C2C2C2C2933E3E25C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C240001978C299190002C2C2C2C2C2C23266002405C2C2C2C2C2C2C28870370A
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2328A0046C4C2C2C2C2C2C2C27E8F7066C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2053E00
                0E8B0E003E75C2C2C2C2C2C48500873CC2C2C2C2C2C2C242873E8EC2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C269860085C2C2C2C2C2C2C2C23C240017C4C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C232980000000000
                8532C2C2C2C29992009575C2C2C2C2C2C2C278860002C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C289
                537040C2C2C2C2C2C2C2C27553008C89C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C4408C003172C4C2C2C2
                C27519001926C2C2C2C2C2C2C299680092C4C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C26D8F7012
                C2C2C2C2C2C2C2C2978C002412C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C280730CC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C232258F0046
                0AC2C2C2C2C2C2C2C446006899C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C27E703E12C2C2C2
                C2C2C2C2C2C42F00009297C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C3
                0176C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C22677003E7232C2C2C2C2
                C2C2C2C457008678C2C2C2C2C2C212000097C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C296703E12C2C2C2C2C2C2
                C2C2C22295008F40C4C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2B93FC8C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2162F3E001905C2C2C2C2C2C2C2C21657
                003755C2C2C2C2C2C2C212000097C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C296707088C2C2C2C2C2C2C2C2C2
                169470003796C4C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C30106C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C42595008F02C4C2C2C2C2C2C2C2C2997C003789C2C2
                C2C2C2C2C2C21200000AC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C29670702F32C2C2C2C2C2C2C2C2C29177
                00006B96C4C2C2C2C2C2C2C2C2C2C2C2C2C2C2B93F06C2C2C2C2C2C2C2C2C2C2
                C2C2C2C216259500009255C2C2C2C2C2C2C2C2C2788C008697C2C2C2C2C2C2C2
                C2C212000097C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C24824004669C2C2C2C2C2C2C2C2C2C28E680000
                878575C2C2C2C2C2C2C2C2C2C2C2C2C30106C2C2C2C2C2C2C2C2C2C2C2328E98
                8F00004642C2C2C2C2C2C2C2C2C2C24219008C78C2C2C2C2C2C2C2C2C2C21200
                0097C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2266B006B91C2C2C2C2C2C2C2C2C2C2C205467000006B
                943C99C2C2C2C2C2C2C2C2C33F06C2C2C2C2C2C2C2C26948859500003E8A91C2
                C2C2C2C2C2C2C2C2C2C2253E004699C2C2C2C2C2C2C2C2C2C2C212000097C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C26946003E72C4C2C2C2C2C2C2C2C2C2C2C27825630000000031
                17903C55C2C2C2C30106C2C232552240981900000070689699C2C2C2C2C2C2C2
                C2C2C2C26928003E7232C2C2C2C2C2C2C2C2C2C2C2C21200000AC2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C232723E008C26C2C2C2C2C2C2C2C2C2C2C2C2C2975428530000000000
                0000530D0D8D53000000000000009557960AC2C2C2C2C2C2C2C2C2C2C2C2C248
                3700956DC2C2C2C2C2C2C2C2C2C2C2C2C2C212000097C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C29131003E8B99C2C2C2C2C2C2C2C2C2C2C2C2C2C2C28948028A63953E0000
                0000008F378C57724855C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2979200004678C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C212000097C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C232
                023E00532516C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2320AC2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C216728F009548C2C2C2C2C2C2C2
                C2C2C2C2C2C2C29732C212000097C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2555700
                006B96C4C2C2C2C2C2C2C23278C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2997287003E9499C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C26B8A789600000AC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2420E000087
                8B97C2C2C2C2C2C23C2F99C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C278028700709291C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C26B
                00952F000097C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C26D7C0000704648
                99C2C2C2C428196DC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C47E7C7000705726C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C20A57700000
                0097C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2554C2400003E0E5497
                C28987709416C2C2C2C2C2084443C2C2C2C2C2C2C2C2C2C2C2787E9824000024
                4C55C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C22570000097C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C21612923E00000095928600
                00196DC2C2C4663E003189C2C2C2C2C23289484C190000003E922232C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2321700000AC2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C216229837000000000000702F
                164800000000638866944637700000000095981299C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C297870097C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C269936B000000005388280000
                0000000000000000248C985455C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2329400008F988E32C24000000000538B
                257E0569C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C417709248C4C2C2C2C20A8600007088C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2489699C2C2C2C2C2C2C2C299810782C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2BC6F0CC2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2BC100CC2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2B9BB43C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C3BBBDC2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2B9BB43C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C3BBBDC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2B9BB43C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C3
                BB43C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2B9BBBDC2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C6C01E
                C2C214BCB2C236C0B5C2C25DC873BD5DC2C27AC06CC2C20CC0C7C2C262BE801A
                C514C2C7C00CC2C2C20CBCBE1AC2C23BC07AC2C2B5C036C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C26C0180C20C3A3F
                06C2B5014AC27A67010101B462C24301B6C2C276013DC21E3A01011CB860C2C8
                01C8C2C22DBB0101B376C2B60143C2C2BE01BDC2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C23B0180C23D330841C2BD01
                BECA106035C2BD332DC27601B6C2C276016EB21CC1355D803F08C26E0176C26E
                3ABE5D6210B81ABE01BDC2C2BE011EC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C26C0114C210B7145C5DB501807ABA80
                C2C2C2C2C2C24301B6C2C276013DC73ABEC2C25D5C60C2C801C8C2290832C2C2
                C2C2C2230143C2C2BE01BDC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C23B0180C65CBEB57D3BBD01BEBD010101010101
                2EC27601B6C2C276013D0601C8C2C2C2C160C26E0176C2B80101010101014323
                01BDC2C2BE011EC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C26C011476BA6AB2C1651E014A6A6180C2C25DC3B7C24301
                BEC2C276013DC7BABEC2C2325C08C2C801C8C203C1C2C2C2BE7D7AB601C8C2C2
                2301BDC2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C23B0180C0B9C2C2B71CBD01BEC2C9C1C7C2B6BAB6C27601BFB2C276
                016E5D67C37A5DC53F60C2C80176C276BA4A327AC3BF5DBE01BF6A32C9B3C7C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C26C0165082DC2C206BAC8014AC2B21001010141C2C243014E01BC76013DC243
                640101672EC1C2C80106C2C2BE1B0101C17AC2B601C13F010110C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C23B01C0
                116CC2C2C6B80301BEC2C2C27641C7C2C2C27AC0B5141E0C03C7C2C2C64A801A
                6060C2C7C00CC2C2C26A2D6E5DC2C26CC00C1E4106C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C26C01C31132C2C2
                C267C3014AC2C2C24306C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C26008C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C23B010103C2C2C2C2BE0101
                BEC2C2C21E7DB6C2C2C2C2C2C2C2C276016EC2C2C2C2C2C2C160C2C80106C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C603C01EC2C2C2C27A03C0B5C2C2C2
                C2142D1AC2C2C2C2C2C2C27A036CC2C2C2C2C2C21414C2C7030CC2C2C2C2C2C2
                C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
                C2C2}
              Transparent = True
            end
            object Label89: TLabel
              Left = 11
              Top = 42
              Width = 227
              Height = 60
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              BiDiMode = bdLeftToRight
              Caption = 
                'Le programme interdit le franchissement de l'#39'antim'#233'ridien sous l' +
                'e p'#244'le, '
              Color = clBtnHighlight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentColor = False
              ParentFont = False
              WordWrap = True
            end
          end
          object GroupBox_Pointage_Rapide_Fourche: TGroupBox
            Left = 245
            Top = 30
            Width = 513
            Height = 299
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Algorithme de pointage rapide'
            Color = clBtnHighlight
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentColor = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            Visible = False
            object Label88: TLabel
              Left = 18
              Top = 45
              Width = 168
              Height = 60
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Caption = 'Le programme permet une rotation libre autour de l'#39'axe horaire.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Image_Meridien_Algorithme_Rapide: TImage
              Left = 308
              Top = 23
              Width = 126
              Height = 175
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              AutoSize = True
              Picture.Data = {
                07544269746D6170B65B0000424DB65B00000000000036040000280000007E00
                0000AF000000010008000000000080570000C40E0000C40E0000000100000000
                000002020200028202008282820082C282000A0A8600C2C2C200C2E2C200024A
                020046A246004242FE007686DA00E2E2E200E2F2E2000202FE004AA64A009EAA
                E6000A0A6E00A2D2A20042424200229222006E6EE60066B266001A1E1A00A2A2
                A200C2C2FE002222FE0062626200F2F2F2009292FE00D2E6D200F2FAF200128A
                120096C29600E2E2FE00B2B2FE00B2D6B2007272FE007EB27E00121212009292
                9200D2D2D2005252FE001212FE005AAE5A0052525200329A32002E2E2E00B2B2
                B200D2D2FE003232FE00727272008282FE00FAFAFA000A860A00CAE2CA00E2EE
                E200EAF2EA0056AE5600A2A2FE0072BA7200262626009A9AFE00DAEEDA0092CA
                9200BADEBA007A7AFE000A0A0A008A8A8A008AC68A000222BA00CACACA004A4A
                FE000A0AFE0052AA5200AAD6AA004A4A4A002A962A006262FE006EB66E00AAAA
                AA00CACAFE002A2AFE006A6A6A00F2F2FE001A8E1A00EAEAFE00BABAFE0076BA
                76001A1A1A009A9A9A00DADADA005A5AFE001A1AFE005A5A5A003A9E3A00BABA
                BA00DADAFE003A3AFE007A7A7A008A8AFE00FAFEFA00AAAAFE009ACE9A000686
                06002A2A8E00668A66003A3A3A006AB66A00222222009696FA00D2EAD200B2DA
                B2001216120062B2620036363600CAE6CA00EAEAEA00EAF6EA007E7EFA006A6A
                FE007EBE7E0006060600068206008686860086C28600C6C6C600C6E2C600026A
                02004646FE007E9E7E0026269E008282E200E6E6E60046464600A6A6A6006666
                6600F6F6F60096969600D6D6D6005656560032323200B6B6B600767676002A2A
                2A000E0E0E008E8E8E00CECECE004E4E4E00AEAEAE006E6E6E007ABE7A009E9E
                9E00DEDEDE005E5E5E00BEBEBE007E7E7E003E3E3E00EEEEEE000606FE00C6C6
                FE002626FE00E6E6FE00B6B6FE007676FE005656FE001616FE00D6D6FE003636
                FE008686FE00A6A6FE009E9EFE004E4EFE000E0EFE006666FE00CECEFE002E2E
                FE00F6F6FE00EEEEFE00BEBEFE005E5EFE001E1EFE00DEDEFE003E3EFE008E8E
                FE00AEAEFE00E6F2E6004EA64E00A6D2A600269226006AB26A001E1E1E00F6FA
                F600168A16005EAE5E00369A36000E860E00DEEEDE0096CA9600BEDEBE008EC6
                8E0056AA5600AED6AE002E962E001E8E1E003E9E3E00FEFEFE009ECE9E00D6EA
                D600B6DAB60016161600CEE6CE00EEF6EE00FAFAFE009696FE007E7EFE000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDA233B0CDCDCDCDCDD4D5AA212430CDCD2124A6CD55B7A3B5B52460B5
                2460CDCDB524B5CDCD6024B5CDCDB24163A6CDCDCDB7AACDCDCDB7AACDCDB0A9
                A356AE2455CDA83ACDCDD4A2A3B7B5CDCD5024B1CDCD9F2453CDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCD184856CDCDCDCDCD602A3DAE0D22CDCD500DA2CDAD0D2A189F0D5618
                0DB2CDCDB20D18CDCD560D9FB0779EAC482AA9CDCD31ABCDCDCDAF29CDB1470D
                ACACA40D60CDA0B3CD535B48AC48A556CD3D0DA1CDCDD50D55CDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCD53615BCDCDCDCDCDA8B421300D22CDCD500DA2CD4731B0CD9F0D5618
                0DB2CDCDB20D18CDCDB20D18AAAC3DD4B14DA7A1CD31ABCDCDCD3129CD1C9E3D
                D430510DA6CDA05BCD63AC65D4A129B6533D0D21CDCD3D0DA1CDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDB75CA6B1B1B1B5AFADCDAE0D22CDCD500DA2CD4761CDCD9F0D5618
                0DB2CDCDB20D18CDCD560D9FAB6155B1B1B1B1CDCD31ABCDCDCDAF29CDB680D4
                CDCD1C0D60CDA0B3CDA7AB55B1B1B1B1CD3D0DA1CDCDD50D55CDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCD21A50D0D0D0D0D4818CDAE0D22CDCDAE0D22CD47A7CDCD9F0D5618
                0DB2CDCD180D18CDCD560D18619EAC2A2A480DAECD31ABCDCDCD3129CDAF29CD
                CDCD650DA6CDA05BCDA09E2A2A2A480D21AA0D21CDCD3D0DA1CDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCD5BA5631CB751A7D4CDAE0D3DCDCD9F0DA2CD4761CDCD180D5618
                0DAACDCD560D65CDCD560D9F4D61B0CDCDAA2A60CD3109B0CDCDAF29CD80B6B0
                CDCDA80D60CDA0B3CD4747D4CDCDA85C553D0DAECDCD1C0D55CDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCD56AC56CD60A51CCDCD300D5118A14D4818530931B1D49F0D5618
                0DAF18A14D9E619F215B48AE562AD6A1185129B0CD312A2253CDAF29CDAA9E63
                55A25C0DA6CDA05BCD65AC1C5556B4ADD4AA0D80A660B62A55CDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDB131ADCD63B4B5CDCDAE0D61480D0D80B0470D0D0DA29F0D5618
                0D24A50D9E77AAAC0D9EABB0CDAAA50D9EA721CDCD31AF19A0A1AF29CD53299E
                0D2AB30D60CDA0B3CDCDB72A0D9E0955CD3D0DB69E0D9E24CDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD63B4A661B3CDCDCDB11CB5503DB8B0CD2251191C21A11C21A1
                1CA1603DB8B0CDAED5B8B0CDCDCD213DB8B0CDCDCD65A29F3AB0A9A2CDCDD456
                D5AEA90DA6CD3A56CDCDCD603D22D4CDCDA61C5356D556CDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD60A55BACB2CDCDCDCDCDCDCDCDCDCDCDCD4761CDCDD455D4CD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDA1A8A1CDCDCDCDCDCDCDCDCD5353CDCDCDCD
                CDCDA90D60CDB153CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDD4290DAF53CDCDCDCDCDCDCDCDCDCDCDCD1CABCDCD9F0D56CD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDD44709A1CDCDCDCDCDCDCDCDAF29CDCDCDCD
                CDCD650DA6CDA05BCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCD30D518CDCDCDCDCDCDCDCDCDCDCDCDCDCDB1CDCDA1D521CD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDA6D550CDCDCDCDCDCDCDCD6556CDCDCDCD
                CDCD60D553CDA956CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDB0A1B0CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDAA0D33CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD3D0DA8CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDAA0D33CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD3D0DA8CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDAA0D33CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD3D0DA8CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDAA0D33CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD18B322CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD18B322CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDAA0D33CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCD34886D0DD688CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8884
                8A2F2762999385680D82128B5D8E4317460B1BCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD1B5A86959C58
                00000000794290100D0442427900000000D1725D892874CDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD1B92431290000090BE
                729902972F5F46830D149A9A2F977B52126C267900798F872F0B34CDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8846626A7900428F5217469D
                CDCDCDCDCDCDCD3D0DA8CDCDCDCDCDCDCD888A94328C260000BE1A5F9DCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD1B5F934200422E62051BCDCDCDCD
                CDCDCDCDCDCDCD65B41CCDCDCDCDCDCDCDCDCDCDCDCD8A899358000072910BCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9D4F1279008F9B7D34CDCDCDCDCDCDCD
                CDCDCDCDCDCDCDB055B0CDCDCDCDCDCDCDCDCDCDCDCDCDCDCD0B276A90006C02
                98CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCD8886720079725974CDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD34055D2600
                BE4384CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCD34922C7942124F88CDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9287
                26008F171BCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCD7402D1008C2F34CDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                468B90009392CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCD348D8C00D19B9DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CD348D7200D1911BCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCD1B024279857DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD21A2A6CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCD9D6226008B98CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD0B5D00D12788CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD3D0DA3CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCD9A8C003C9ACDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCD4672008F9ACDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDAA0D24CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCD849979D14F34CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD34
                CDCDCDCD344FBE004B98CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD3D0DA3CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD887B90905934CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8D
                CDCDCDCD179042329DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDAA0D24CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCD8926424388CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8899
                9DCDCD4F909089CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD3D0DA3CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCD4FD1798E1BCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD743C
                9A3494264291CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDAA0D24CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCD5F6C003288CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD2800
                7B8DD17943CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD3D0DA3CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCD466C004334CDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8600
                6CD1790234CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD21B8A6CDCDCDCDCDCDCDCDCDCDCDCDCDCD1B92929292929292
                2898CDCDCDCDCDCDCDCDCDCDCD5FD1424FCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8E00
                0000724F942F8ACDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9A42000000000000
                008BCDCDCDCDCDCDCDCDCDCDCDCD5942D17DCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD344B00
                000000008F4384CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD746C000000000000
                008BCDCDCDCDCDCDCDCDCDCDCDCDCD9B793C5ACDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9D3C00
                00008F2774CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9500008F862F2F
                2F92CDCDCDCDCDCDCDCDCDCDCDCDCD885D001274CDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD984200
                8F2774CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD5ABE00798934CD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD749C008E34CDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD885A0B172E89
                74CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDB0A153CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD174200905FCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9258425FCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD0B8BD1BE6A98CD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDB8A063CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8E7900BE92
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD89792E84CDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD341A0000000027CD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD3D0DA3CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD1B99000072
                84CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8893004B3246CDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9D6C000000004BCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDAA0D24CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD1B4B0000
                3234CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD89000000905FCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD1B6A0000000087CD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD3D0DA3CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD848C00
                265ACDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9C000000009334CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD270000006C92CD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDAA0D24CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9442
                0089CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8C000000009C88CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD341A00120228CDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD3D0DA3CDCDCDCDCDCDCDCDCDCDCDCDCDCDCD340B98CDCD1B3C
                001ACDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD620000000002CDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8A90580BCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDAA0D24CDCDCDCDCDCDCDCDCDCDCDCDCDCDCD526C9388CDCD3C
                005DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD1B87BEBE931BCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD320032CDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD22611CCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD52002646CD9A26
                0002CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD980B4B46CDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD84BED15ACDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8D42006C125800
                9028CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8CBE5FCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD17005DCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD34520000000079
                0234CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDBE00268634CDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD344B792FCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD884F8B6A5D4F
                34CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD1BD10000422734CDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8A423C88CDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD0B90000000796288CDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD270032CDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD289000006C7226879DCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD884B425FCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDAE33B2CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9A422E79727492275934
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8426BE9DCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDAA0D24CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD94267D3C7998CDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD94008BCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD3D0DA3CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD599534870097CDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8E0027CDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDAA0D24CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD170BCD4F005DCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD88124246CDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD3D0DA3CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9DCDCD0B263C1BCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD74D1BE1BCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDAA0D24CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD6C7984CDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD920012CDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD3D0DA3CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD930005CDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD860087CDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD3A2AD6CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD620059CDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9B0091CDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDB130A1CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD970032CDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD1A794FCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD7D429334CDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD34934205CDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD5A907288CDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD889C9028CDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD74908F88CDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD1B8CD10BCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD88D1BE1BCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9D3CD174CDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDB1AE21CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDD1269DCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9D6C581BCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD3AACD6CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD3C799DCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD7458581BCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD0F450ACDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8C009DCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9D3CD11BCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD660157CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8F009DCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD1B2ED184CDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD400866CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD58909DCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD1B722698CDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD88D1D11BCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD88129028CDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9D263C1BCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD34934246CDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD0B902E88CDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD52004FCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD46421234CDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD430043CDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD867987CDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD94001ACDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD73576FCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD430043CDCDCD
                0000CDCDCD9D9A5F98CDCDCDCDCDCDCDCDCDCDCD28009CCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD660157CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD99008DCDCDCD
                0000CDCD2F8F7900BE7B34CDCDCDCDCDCDCDCDCD7426581BCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCE013BCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD6A008ACDCDCD
                0000CD9290000000007927CDCDCDCDCDCDCDCDCD889C907DCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD660157CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9DD1581BCDCDCD
                0000CD990042279A8C005874CDCDCDCDCDCDCDCDCD320089CDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCE013BCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD5F424B34CDCDCD
                000088580093CDCD9A007994CDCDCDCDCDCDCDCDCD94005DCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD660157CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD020043CDCDCDCD
                0000CD8D9B2FCDCD9D000089CDCDCDCDCDCDCDCDCD0B906C88CDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCE013BCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD120092CDCDCDCD
                0000CDCDCDCDCDCD5A000017CDCDCDCDCDCDCDCDCD889C427DCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD11C078CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD74D1BE1BCDCDCDCD
                0000CDCDCDCD88885200905ACDCDCDCDCDCDCDCDCDCD43008ECDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD1E3ED3CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD86798B34CDCDCDCD
                0000CDCDCD1B723C797902CDCDCDCDCDCDCDCDCDCDCD5A903C1BCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD930094CDCDCDCDCD
                0000CDCDCD883C00006288CDCDCDCDCDCDCDCDCDCDCD8885798DCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9826BE9DCDCDCDCDCD
                0000CDCDCD34626C00D17DCDCDCDCDCDCDCDCDCDCDCDCD590099CDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD910052CDCDCDCDCDCD
                0000CDCDCDCDCD988C0093CDCDCDCDCDCDCDCDCDCDCDCD8458D18ACDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD3472007DCDCDCDCDCDCD
                000034895D97CDCD520058CDCDCDCDCDCDCDCDCDCDCDCDCD8E0062CDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD38C6C4CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD94797288CDCDCDCDCDCD
                0000342E002E849D6A008FCDCDCDCDCDCDCDCDCDCDCDCDCD5A90BE84CDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD113596CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD349C004FCDCDCDCDCDCDCD
                0000CD7B0000BE6C00007BCDCDCDCDCDCDCDCDCDCDCDCDCDCD1A0043CDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD660157CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD2F798C1BCDCDCDCDCDCDCD
                0000CD9D85000000002C1BCDCDCDCDCDCDCDCDCDCDCDCDCDCD46906C98CDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCE013BCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD344B0059CDCDCDCDCDCDCDCD
                0000CDCD9D979999971BCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD34520052CDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD660157CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD4F792E9DCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9858267DCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCE013BCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9D8F004FCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD43004B34CD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD660157CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8E002C88CDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9D8C7927CD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD66013BCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD46262628CDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD5F42D146
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD3EC573CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD1B9C007BCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9B009C
                9DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD3200129DCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9D1200
                8ECDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD4F42588ACDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD46D1
                4259CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCD5A6C7917CDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD4F
                42268DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCD846A009534CDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                91796C92CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCD9D4B004B9DCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                8895008C8ACDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD4ABC44CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCD1B99006A0BCDCDCDCDCD5A171788CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CD1B5D008F28CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCE013BCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCD8852008F5ACDCDCDCDCDCD59000074CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCD9D99003C7DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD660157CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCD9D99796C28CDCDCDCDCDCDCD89000074CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCD1B87006C5FCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCE013BCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCD742C003C92CDCDCDCDCDCDCDCD59000074CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCD9D8700268934CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD660157CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCD989C00728ACDCDCDCDCDCDCDCDCD89000074CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCD887B4242951BCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCE013BCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD5F3C001298CDCDCDCDCDCDCDCDCDCD59000074CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD945800858ACDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD660157CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCD880290009974CDCDCDCDCDCDCDCDCDCDCD89000074CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCD926A00582788CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD232DC7CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCD5A9379262788CDCDCDCDCDCDCDCDCDCDCDCD59000074CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCD748E42799328CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD64D364CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCD1B2758002E7DCDCDCDCDCDCDCDCDCDCDCDCDCDCD89000074CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCD9A8C00D18E0BCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CD059C79425284CDCDCDCDCDCDCDCDCDCDCDCDCDCDCD59000074CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCD7462D100BE4374CDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD28
                1A90009C9A34CDCDCDCDCDCDCDCDCDCDCDCDCD9592CD89000074CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCD8A8742008F7B5ACDCDCDCDCDCDCD8A46CDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD929926
                0058279DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD58269127000074CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCD34462C7900D1999A34CDCDCDCD8899621B
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD1B2F8B900058
                9B98CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD9300793C000074CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD344652D100422E629A88CDCD92586A
                05CDCDCDCDCDCDCFCED2CDCDCDCDCDCDCDCDCDCDCDCDCD347D326C42006C7B84
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD88599000000074CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD340B438C7900423C5217926200
                269B1BCDCDCD3481076988CDCDCDCDCDCDCDCD345A86528F4200424B9774CDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD5F90000074CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD1B929B6A790000902600
                00006A05CD348E4200791A88CDCD1B922F91878C260000796A435A34CDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD62000074CDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD885A5987729000
                00000026628D26000000008C6A6CD190790000793C1A975A88CDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD8495871BCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD842C00
                0000585D9B327900000000000079BE9C9902868A1BCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD1B1A0026
                2C4F74CDCD986C000000262F84849D88CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD1B1A4B590B
                34CDCDCDCDCD4F16007089CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD989834CDCD
                CDCDCDCDCDCDCD207F25CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD7536B9CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDBFB91ECDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD11C344CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD66017CCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCE0178CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD66017CCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCE0178CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD66017CCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCE017CCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCD733B40CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCD6E7A6FCDB9CA13CFCDD235D0CDCDCECAC3CC40
                CDCD063506CDCDC6357ECDBF03CB54BBCC49CDD035D2CDCDCFC8C31378BFCDC9
                35CFCDCD4A7AC4CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDD201C9CD067A35BBCD3601D0CDC735BA57CC1F
                40CDC601C6CDCD40017ECD577A0E4E2DC30ECD2301D2CDCF13BC3B71C315CDBB
                01CFCDCDBB013ECDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCD6E01C9CD4E5EC849CD7301D00CCB3BCDCD1EC7
                6FCD0601C6CDCDC601C6C4C03BCDCDD2C00ECDD00136CD6BBC0CCDCD407CD34A
                01CFCDCDBB01CFCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDD201C91EC27CCEBCB93601D03601717C7C7C7C
                BBCDC601C6CDCD400106C60106CDCDCDC20ECD2301D2CD5E4C7C7C7C7C7CD3BB
                013ECDCDBB013ECDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCD6E01C91DC006CFC0D03601D0737AC896965713
                08CD0601C6CDCDC601C6C601C6CDCDCDC20ECD6F01D2CDC2BC969657C87ACF4A
                011DCDCD4A01CFCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDD201C9C7BC1EBFCC4E3601D0384C3BCDCD0CCB
                78CDC6013FCDCDD0017ECF5478CDCD6EC00ECD2301D2CD9613B9CDCD6B4C75BB
                0166CDCDC7013ECDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCD6E01BB086BCDCD03CAC601D0CD661F3978CA13
                3ECD0601BC57D24001C6CD717AC1964C7A0ECDD001D2CD0C4CCA78C835C7CD4A
                01C3BD571FBCD3CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDD201C7C04ACDCD7E1FC701D0CDCDC9CA7A08CF
                CDCDC601031F5740017ECD756BC31FCE2D0ECD6F01D2CDCD0CC17A1366CDCD4A
                013F2D014C6FCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCD6E01BACB0CCDCD75CA4901D0CDCDCDCD6464CD
                CDCDCDCDCD64CDCDCDCDCDCDCDCD64CD5E0ECDCD34CDCDCDCDCDCDCDCDCDCDCD
                CDCDCD64CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDD2013508CDCDCDCDC17A0140CDCDCD440ED3CD
                CDCDCDCDCDCDCDC4030CCDCDCDCDCDCDC20ECD3E0375CDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCD6E0101C5CDCDCDCD6F0101D0CDCDCDB9130875
                CDCDCDCDCDCDCDC60106CDCDCDCDCDCD5E0ECDD001D2CDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                0000}
              Transparent = True
            end
            object Label93: TLabel
              Left = 18
              Top = 165
              Width = 187
              Height = 60
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Caption = 
                'Rien n'#39'interdit alors '#224' l'#39'axe horaire de faire plusieurs tours s' +
                'ur lui-m'#234'me !'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -17
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Label96: TLabel
              Left = 18
              Top = 137
              Width = 75
              Height = 40
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Caption = 'Attention !'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -17
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
          end
          object RadioGroup_Algorithme_Pointage_Fourche: TRadioGroup
            Left = 24
            Top = 30
            Width = 206
            Height = 153
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Choix de l'#39'algorithme'
            ItemIndex = 1
            Items.Strings = (
              'Pointage rapide'
              'Pointage prudent')
            TabOrder = 0
            WordWrap = True
            OnClick = RadioGroup_Algorithme_Pointage_FourcheClick
          end
        end
        object GroupBox_Parametres_Fourche: TGroupBox
          Left = 20
          Top = 383
          Width = 772
          Height = 94
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Param'#232'tres'
          Color = clBtnHighlight
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object Label70: TLabel
            Left = 24
            Top = 41
            Width = 173
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'D'#233'clinaison polaire limite'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label71: TLabel
            Left = 311
            Top = 41
            Width = 49
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'degr'#233's'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object SpinEdit_Declinaison_Polaire_Limite_Fourche: TSpinEdit
            Left = 225
            Top = 36
            Width = 72
            Height = 31
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Increment = 5
            MaxValue = 90
            MinValue = 0
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Value = 90
            OnChange = Visibilite_Delai_Decision_Fourche
          end
          object GroupBox_Delai_Decision_Fourche: TGroupBox
            Left = 417
            Top = 20
            Width = 339
            Height = 61
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Color = clBtnHighlight
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentColor = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            Visible = False
            object Label_secondes: TLabel
              Left = 254
              Top = 21
              Width = 69
              Height = 20
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Caption = 'secondes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label_DelaiDecision: TLabel
              Left = 18
              Top = 21
              Width = 120
              Height = 20
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Caption = 'D'#233'lai de d'#233'cision'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object SpinEdit_Delai_Decision_Fourche: TSpinEdit
              Left = 168
              Top = 15
              Width = 72
              Height = 31
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Increment = 5
              MaxValue = 300
              MinValue = 0
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Value = 20
            end
          end
        end
      end
      object GroupBox_Pointage_FerACheval: TGroupBox
        Left = -3
        Top = 5
        Width = 818
        Height = 507
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Monture '#171' fer '#224' cheval '#187
        TabOrder = 2
        Visible = False
        object GroupBox_Etat_Telescope_FerACheval: TGroupBox
          Left = 15
          Top = 29
          Width = 378
          Height = 298
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = #201'tat actuel du t'#233'lescope'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          StyleElements = [seFont, seClient]
          object Image_Telescope_Retourne_FerACheval: TImage
            Left = 203
            Top = 93
            Width = 109
            Height = 102
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            AutoSize = True
            Picture.Data = {
              07544269746D6170E6820000424DE68200000000000036000000280000006D00
              0000660000000100180000000000B0820000130B0000130B0000000000000000
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC1D6C48FB29688AC92
              96B89DCDE0CEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE3EFF2D7E7DD42824A11
              552610542710542710542611552677A285E1EEF0DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEEAF4
              F32C6E44115426105427105427105427105427105427105426B0CBBBDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDEECF095BEB11054271054271054271054271054271054271054271054
              275F916EDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEE6F1F32C7351105427105427105427105427105427
              105427105427105427478460DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC9DCD810542710542710542710
              54271054271054271054271054271054278DAF9ADAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDEECF078A18E1054
              27105427105427105427105427105427105427105427115427D4E3DEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              E6F1F32D6A471054271054271054271054271054271054271054271054273B73
              4EE6F1F3DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEE1ECEB115428105427105427105427105427105427105427
              10542710542797B6A5DEECF0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDEECF0D6E2DE10542710542710542710542710
              5427105427105427105427125428DCE8E6DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE8F1F4BACBC11054271054
              271054271054271054271054271054271054273F7351E7F1F4DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEA4B9B0
              063710105427105427105427105427105427105427105427105427618C6FDEEC
              F0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEE1EEF11F4F2A04380C115427105427105427105427105427105427105427
              105427628C70DEECF0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEB9CBC301370901370910522610542710542710542710
              5427105427105427105427316A43E6F1F3DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EEF1446C4D0037080037080E51251054
              271054271054270F522616583121633E14542D115427D4E2DEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED4E1DC02380B003708
              00370809471D105427105427105326235E512B6669447F7A336E6D13493491B0
              9DDEECF0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDDEBEFE2EEF1E6F1F2E5EEECEBF2F1E9F2F4E5F0F3E0EDF1DCEBEFDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EFF16A
              8A71003708003708003708043E141054271054271D5A3F4D7F91769AA9839A9F
              4D6B76284C543A6950E7F1F4DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEE3EDEC9EBAAA497B5A1C5B3012552816572B29663D477B596691
              758AAA96B0C6B9CBDBD5DFEBE9E5F0F2DEECF0DAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEE8EFEE0E41170037080037080037080038090E4F2510542724594A4F
              6B7D7B8E9CC1C8CC657A7F07221F104826DBE7E5DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEE447D53105427105427105427105427105427
              1054271054271054271054271054271154271154271C5C31719980E1EBEADAEA
              EEDAEAEEDAEAEEDAEAEEE2EEF1E4EDECC8D5CDB4C5B8CBD8D0E1EBEAE8F2F3E9
              F2F4E7F1F3E5F0F2E3EFF2E1EEF1DFEDF0DDEBEFDBEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEE9FB4A60037080037080037080037080037080B47
              1F1054271956312751483856587E8C8F576F690328100F52259CB8A9DAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE548A6510542710542710
              5427105427105427105427105427105427105427105427105427105427105427
              1054273E7350E1EEF0DAEAEEE3EFF2ECF2F17C97820E41150137080037080037
              0802390B1044192C5A334C73536E897C99A3BDAAAFD6959ACD8086C36970B85C
              64B14A54AB3D4BA63745A23843A1373F9E353EA02B369814296F0D2E4C093433
              03321A02371001360C104B261054261153271A5431416B531747270E4E221054
              27799F89DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE9F2
              F29BBDAF3F7A5D10502611532610542610542610542610542710542710542710
              5427105427105427105427105427CCDBD5ECF4F6C6D5CE204F28003708003708
              00370800370800370800360B0331230A2B4712266F19238F1A22951B22951A22
              951B22951B22951B22951B22951B22951B22951B22951B22951B22951B22951B
              22951B22951B22941A24901726850E255E0B2A3F103F35125028115427105427
              10542710542718572DBDCFCADAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDDEBEFE2EEF1E5EFF1DCE8E8CEE0DDBBD2CCA3C1B688AC
              9C6B96804A7E64246240115429105427105427105426AAC2B2C0D0C40E421700
              370800370800370800370903331B0D2B5015257C1A23931B22951B22951B2295
              1B22951B22951B22951B22951B22951B22951B22951B22951B22951B22951B22
              951B22951B22951B22951B22951B22951B22951B22951B22951A22951B229415
              237713334F103D2C2E5B3D8BA894E3EAE5E3EFF1DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDBEBEEDFEDF0E2EFF1E6F1F3EAF3F5E5EEEE90AC9E14552C1154268CA7
              950F42170037080037080036090330241028631A23901B22951B22951B22951B
              22951B22951B22951A22951A22961A23951A22951A22951A22951A22951A2294
              1B22941B22951B22951B22951B22951B22951B22951B22951B22951B22951B22
              951B22951B22951B22951B22951A2290161D7255598AB0B5C7E9F2F4DAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEEBF4F6
              4D7E640D4B1F073C1100370800370803321F0F26631A22901B22951B22951B22
              951A249B1A25A11A27A51B28AB1E2AB51D28BA1E29BD202AC0202BC0222DC121
              2BC1222CC1212CC01F28BB1D26B71C26B21C27AE1924A81622A1182297192295
              1B22951B22951B22951B22951B22951B22951B22951B22951B22951B22951A22
              91324197B4C0D7E2EEF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEE2EFF1628A7101380B0037080135110E2D561A23901B2295192498
              1E29A6222EB32633BE2836C82937CB2B39CC2B39CC2A38CC2A38CD2A38CD2A38
              CD2A38CD2A38CD2A38CD2A38CD2B38CD2B38CD2A37CD2A38CD2A38CD2936CB26
              32C9222EC21B27BA1820A919209C1A22951B22951B22951B22951B22951B2295
              1B22951B22951B22951B22951A23934853A3CBD2E1E2EEF1DAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEE2EFF1CCDAD40F4317003708062F2B14257F18229317
              239C1E2DAF2837C22A39CB2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3A
              CE2C3ACE2C39CE2B39CE2B38CD2937CC2935CD2630CC1E27C21922B11620A019
              21961B22951B22951B22951B22951B22951B22951B22951B22951A24926470B0
              DDE4ECE2EFF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EFF1CEDBD612451A00360909293C1721
              8A18249A1D2BB02634C42B39CB2B39CD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C
              3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C39CE2B38CD2A37
              CD2936CD2530CA1F2BBF1823A51921961B22951B22951B22951B22951B22951B
              22951B22951B2295212B92828DBEEBF1F3E3EFF2DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDDEBEFE2EFF2E9F2F5CEDBD614461B01320F
              0E225919259A1E2CAF2533C12A38CB2B39CD2C3ACE2C3ACE2C3ACE2C3ACE2C3A
              CE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C
              3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE2C3ACE2B39CE2B38CE2A38CC2A37CA212DC01B25AD18219A1B22
              951B22951B22951B22951B22951B22951B22951B22942D3B99BAC6DBE3EEF2DA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE1EEF1A6BFCA90A2A7BDC8CCDAE3DD19
              4A2104332514267F212EB02634C22937CA2B3ACE2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C39
              CE2B39CD2B39CD2B39CD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C
              3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B39CD
              2A38CC2632C71B26B417209C1B22951B22951B22951B22951B22951B22951B22
              951A2392919CC5E1EDF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EEF1A7BFCA53899F1D40
              4C0A2622204E29022E17162A8B2533C02A38CB2B39CD2C3ACE2C3ACE2C3ACE2C
              3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACD2733B9202A99
              1B2481182071151C6613196013195F151C65181F6E1A227B1E278C222DA22935
              BC2A39CB2B38CD2B39CE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C
              3ACE2C3ACE2C3ACE2C3ACE2B39CD2B39CC2631C71C27B5171F9E1A21961B2295
              1B22951B22951B22951B22951A22944854A2DFE6EDE2EFF1DAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC9D9DF
              99B3BD9CB2BA6E9195033413022E131827792532BE2A38CC2C3ACE2C3ACE2C3A
              CE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B39CD2B38CD2835C01C258612174C2F
              31426162628B8B8BA7A8A9BCBCBDC9CACBD1D2D2D3D3D3CCCDCDC1C1C1B1B1B1
              9B9B9B8080805F5E5F3B3C48191C3F1218581A23842531B42B38CD2B38CE2C39
              CE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B39CD2A38CC2B39CC26
              32C61922AB1820981B22941B22951B22951B22951B22951B22952A3494C2CCDC
              E2EEF2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEB8CCD48FAAB593ADB0245336012F10172B792532BC2A38CB2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B39CD2A38CA212CA212164F4242
              4AA1A3A4E0E7E8DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED3D4D573747F0F0F25
              070926121857202A972A38C92C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3A
              CE2C3ACE2B39CD2A39CA2C3AC91F2ABA151DA21B22961B22951B22951B22951B
              22951B22941E2791B3BBD5E2EFF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEECF3F5A4C0CA3864510233111A2F76202DB529
              37CB2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B38CC232EA6151844
              666667D7DBDCE7F1F4DEECF0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDDEBEFE2EEF1E6F0F3D1D7E09799B150507B17
              175001013F00003F00003F010135010122050720141A5A242FA92B39CD2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B39CD2B39CB2936C61822AC1820
              981B22941B22951B22951B22951B22951C2393A8B0D3E3EFF2DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE8F1F4C9D5D001360B132A
              5E2330B52937CA2B39CD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B39CD2836C014
              195859595CDCE1E2E2EEF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDDEBEFE2EEF1E5EFF2D0D7E09EA2B855588013144D0001
              3F00003F00003F00003F00003F00003F00003F00003F00003F00013F02033605
              06200F123B2029922A38CA2B39CD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B39CD
              2B3ACB2C3AC91F2BB9151D9D1B22951B22951B22951B22951B22951B2392A3AB
              CCE2EFF2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDEECF0
              738F7B092E361D28A92836C72B39CD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2A38
              CB212B9A25273AC2C6C7E2EEF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDDEBEFE3EFF2E9F2F4E9F0F3C9CDD98D8FAA47487410104A00003F00003F
              00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F08094719215C0E123B222D9F2B39CD2C3ACE2C3ACE2C
              3ACE2C3ACE2C3ACE2C3ACE2B3ACD2C3ACA2733C5141CA31921951B22951B2295
              1B22951B22951A22929CA3C6E3EFF2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDEECF0D2DCE012258E2431BF2B38CC2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2937C7172072535356E8EDEEE3EFF2DAEAEEDAEAEEDAEAEEDAEAEEDDEB
              EFE3EFF2E9F2F4E8EFF2C5C9D6898BA74444720E0E4800003F00003F00003F00
              003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F
              00003F00003F00003F00003F00003F00003F0103530C15A12A36B7151A521217
              4F2734BA2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B39CD2C3ACC2B37CA16
              1FAB1820951B22951B22951B22951B22951A22929AA1C4E2EEF1DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEE8F1F47081BE1D29B22A37CA2C3ACE2C3ACE2C
              3ACE2C3ACE2C3ACE2A37C7131A5D929597E2EEF1DAEAEEDAEAEEDDEBEFE3EFF2
              E9F2F5E7EEF1C2C7D48385A240416F0C0C4700003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00
              003F00003F00003F00003F00003F00003F00003F00003F00003F01066B030D9B
              1F28AC2C39CC1E28970B0E331D25812B39CC2C3ACE2C3ACE2C3ACE2C3ACE2C3A
              CE2C3ACE2B39CD2B38CD1C24B3171F951B22951B22951B22951B22951A219095
              9CBEE2EEF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED2DBE81929A42835C52B39
              CD2C3ACE2C3ACE2C3ACE2C3ACE2A38CB151C62888888DAEAEEDAEAEEDAEAEEE5
              ECF0C0C4D28082A03B3B6B0A0A4600003F00003F00003F00003F00003F00003F
              00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00
              003F010983000C9E1017952C3ACC2C3ACE2B3AC9181F6B1014462935BB2C3ACD
              2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B39CE2D3ACF222ABC1920971B22951B22
              951B22951B22951A22909DA4C4E3EFF2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EEF14E5BB1
              2330BE2A38CC2C3ACE2C3ACE2C3ACE2C3ACE2A38CB1A237D727273EAEBEFB4B5
              C675759736366708084500003F00003F00003F00003F00003F00003F00003F00
              003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F
              00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F000042010C98000C9E030D96222DB12C3ACE2C3ACE2C3ACE23
              2EA10C0F33232D9D2B39CD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACD2C39CD2F3CCF
              262FBF161D961B22951B22951B22951B22951A2291B4BBD7E3EFF2DAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEC2CCE31E2CB42937CA2C3ACE2C3ACE2C3ACE2C3ACE2B39CC2230A406071C
              2F306206064300003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00
              003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F
              00003F00003F00003F00003F00003F010454000C9F000C9E000C9E111A942D3A
              CD2C3ACE2C3ACE2C3ACE2937BF1014431B237B2B39CD2C3ACE2C3ACE2C3ACE2C
              3ACE2C39CE2B38CE2D3ACF222AC0141A951B22951B22951B22951B22951E288C
              CED5E2E3EFF2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEE2EEF14E5DBB2734C52B39CD2C3ACE2C3ACE2C3ACE2B39CD27
              35BF0B0D2910104800003F00003F00003F00003F00003F00003F00003F00003F
              00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00
              003F00003F00003F00003F00003F00003F00003F00003F020668000C9E000C9E
              000C9E040D942632B92C3ACE2C3ACE2C3ACE2C3ACE2C3ACB181E64151B5D2A39
              C92C39CD2C3ACE2C3ACE2C3ACE2C3ACE2B39CE2C39CF2129BE1318941B22951B
              22951B22951B22953D4AAAECF2F6DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC8D2E51D2BB42B38CC2C3ACE2C3ACE2C3A
              CE2C3ACE2837C9121B5913133C1D1D5D06064600003F00003F00003F00003F00
              003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F
              00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F01
              0879000C9E000C9E000C9E010C9E161E9B2C3ACD2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACD1C257D11164C2B37C82B3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C39
              CF2027BB1319921B22951B22951B22951B22957B88C9E2EFF1DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EEF1526BB92532C32B39CD
              2C3ACE2C3ACE2C3ACE2B39CD202D9F0A0A1F1D1D5D1D1D5D16165600003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00
              003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F
              00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F010A8A000C9E000C9E000C9E000C9E060E922835C12C3ACE2C
              3ACE2C3ACE2C3ACE2C3ACE2C3ACE1F288B0F13452936C72B39CE2C3ACE2C3ACE
              2C3ACE2C3ACE2C39CE2C39CE2027BC171E961B22951B22951B22951C2596BFC6
              DCE3EFF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE5EFF31B
              31A62836C92C3ACE2C3ACE2C3ACE2C3ACE2937C80E143E18194E1D1D5D1D1D5D
              1D1D5D0A0A4A00003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00
              003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F
              00003F00003F00003F00003F000040010C97000C9E000C9E000C9E000C9E010D
              9E1A23A22C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE202A900F134629
              36C92C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACD2F3DCB212BB31B22951B2295
              1B22951B22952E3697E7ECF2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDDEBEFC2D0E43144C52B39CC2C3ACE2C3ACE2C3ACE2B3ACD2530A20C0C241D
              1D5D1D1D5D1D1D5D1D1D5D1A1A5A02024100003F00003F00003F00003F00003F
              00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00
              003F00003F00003F00003F00003F00003F00003F000041010C99000C9E000C9E
              000C9E000C9E000C9E0810932B39C82C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3A
              CE2C3ACE1F288B11154E2A37CC2C3ACE2C3ACE2C3ACE2C3ACE2B39CD2C39CD2E
              3AC81B23A51B22941B22951B22951B2295737BB9E3EEF1DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEE3EFF28F9DD12A3AC02A38CC2B39CD2B39CD2B39CD2938
              C811164818184C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C0E0E4D00003D00003D00
              003D00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D
              00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D0000
              3D00003D00003D00003D00003D00003D00003D00003D00003D00003D00004201
              0C9A000C9C000C9C000C9C000C9C000C9C010D9C1C27A82B39CC2B39CD2B39CD
              2B39CD2B39CD2B39CD2B39CD2B39CD1B237B151A602B38CC2B39CD2B39CD2B39
              CD2B39CD2B39CD2B3ACB2936C31A229D1A21941A21941A21941C2593C4CCDEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE8F2F44F5BBD2A39C52B39CD2B39CD
              2B39CD2B39CD2936B9090A1F1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1A1B
              5A03034100003D00003D00003D00003D00003D00003D00003D00003D00003D00
              003D00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D
              00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D0000
              3D00003D000042010C9A000C9C000C9C000C9C000C9C000C9C000C9C0C14942B
              3AC92B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD161C621C247C
              2A38CB2B39CD2B39CD2B39CD2B39CD2B39CD2F3CCC232DB81A21981A21941A21
              941A2194364098E1EDF0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE1EAF2313FBB2A
              38C82B39CD2B39CD2B39CD2A38CB1D26831010341C1C5C1C1C5C1C1C5C1C1C5C
              1C1C5C1C1C5C1C1C5C11125100003D00003D00003D00003D00003D00003D0000
              3D00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D00
              003D00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D
              00003D00003D00003D00003D00003F010B95000C9C000C9C000C9C000C9C000C
              9C000C9C020D9A212CAC2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B
              39CD2B39CA1014461E28952A38CB2B39CD2B39CD2B39CD2B39CD2B39CC2F3DCB
              202AB41921941A21941A2194192293ABB4D6E2EEF1DAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EECED7EC2B39C12A38CB2B39CD2B39CD2B39CD2938CA161D5817184D1C1C5C1C
              1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C06064400003D00003D00003D
              00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D0000
              3D00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D00
              003D00003D00003D00003D00003D00003D00003D00003D010A8D000C9C000C9C
              000C9C000C9C000C9C000C9C000C9C0E17972A39CB2B39CD2B39CD2B39CD2B39
              CD2B39CD2B39CD2B39CD2B39CD2937C00D0F352433B52A38CC2B39CD2B39CD2B
              39CD2B39CD2B39CC2C39C61B22A11A21941A21941A21942C3597EAF0F4DAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEB7C0E62633C62A38CC2B39CD2B39CD2B39CD2B3AC90C10
              311C1C5B1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C15155500
              003D00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D
              00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D0000
              3D00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D01
              0981000C9C000C9C000C9C000C9C000C9C000C9C000C9C030D9A222EB42B39CD
              2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2430A71015422A38
              CA2B39CD2B39CD2B39CD2B39CD2A38CC2E3CCB2630BD1921951A21941A219419
              2293A1A9CFDEECF0DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE9DA6DD2736CA2B39CD2B39CD2B39CD
              2B39CD2938C50A0B231C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C
              5C1C1C5C1C1C5C09094800003D00003D00003D00003D00003D00003D00003D00
              003D00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D
              00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D0000
              3D00003D00003D010876000C9C000C9C000C9C000C9C000C9C000C9C000C9C00
              0C9C121B9B2B39CC2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD
              2B39CD1A23771921712A38CC2B39CD2B39CD2B39CD2B39CD2A38CB2C39C71B24
              A71922931A21941A21942F3896E5F0F2DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE919ADC2836CA2B
              39CD2B39CD2B39CD2B39CC2634BA0A0A201C1C5C1C1C5C1C1C5C1C1C5C1C1C5C
              1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C18185801013E00003D00003D00003D0000
              3D00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D00
              003D00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D
              00013100053001063900013D00003D010769000C9C000C9C000C9C000C9C000C
              9C000C9C000C9C000C9C040E98232FB72B39CD2B39CD2B39CD2B39CD2B39CD2B
              39CD2B39CD2B39CD2B39CD2B39CB101442232FA92A38CC2B39CD2B39CD2B39CD
              2B39CD2D3BCC2835C31920971A21941A2194192293C4CCE1DAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDBEA
              EE949BE02937CB2B39CD2B39CD2B39CD2A38CC212EA80B0B241C1C5C1C1C5C1C
              1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C0D0D4C00003D
              00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D0000
              3D00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D00
              003D00003D000139040E2F0313301C3554192C5105083F01065C000C9C000C9C
              000C9C000C9C000C9C000C9C000C9C000C9C000C9C131C9D2B39CD2B39CD2B39
              CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2734B60D113A2B38C92B
              39CD2B39CD2B39CD2B39CD2A38CC2E3CCA1E25A91A21931A21941A21935E67B0
              E2EEF1DAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDEECF09EA5E62A37CB2B39CD2B39CD2B39CD2A38CC1E2AA10B0C
              261C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C
              1C5C1A1A5A03034000003D00003D00003D00003D00003D00003D00003D00003D
              00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D0000
              3D00003D00003D00003D00003D0A1642263E60294162566C8870889B3F527102
              054C010C9C000C9C000C9C000C9C000C9C000C9C000C9C000C9C000C9C050E97
              2532BD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39
              CD1B247C1921732B38CC2B39CD2B39CD2B39CD2B39CD2C3ACC2935C31A21981A
              21941A2194202895E2EAF1DAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEE1EEF1A9AFE82A37CD2B39CD2B39CD2B39CD
              2A39CB202CA30B0B231C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C
              5C1C1C5C1C1C5C1C1C5C1C1C5C11115000003D00003D00003D00003D00003D00
              003D00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D
              00003D00003D00003D00003D00003D00003D0409461C3A681F3B6120385C5D6E
              7FD2E0E55C6F8603073F020D95000C9C000C9C000C9C000C9C000C9C000C9C00
              0C9C000C9C010C9C151EA22B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD
              2B39CD2B39CD2B39CD2B39CA0F123D2733B62B39CD2B39CD2B39CD2B39CD2A38
              CC2F3DCC1D27AC1921931A2194192193AAB0D4DEECF0DAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE5F0F3B8BDEC2A37CC2B
              39CD2B39CD2B39CD2A39CA202DAA0A0A201C1C5C1C1C5C1C1C5C1C1C5C1C1C5C
              1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1B1B5B030441090E480C12
              4C01023D00003D00003D00003D00003D00003D00003D00003D00003D00003D00
              003D00003D00003D00003D00003D00003D00003D00003D00003D0307461D3B78
              193A681C3762263D5B697E8E4B5F7801033C020B82000C9C000C9C000C9C010D
              9B000C9B000C9C000C9C000C9C000C9C060E952635C12B39CD2B39CD2B39CD2B
              39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2430A711164C2B38CC2B39CD
              2B39CD2B39CD2B39CC2C3ACB2A36C41821981A21931A21945C65B1E7F1F4DAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE8F1
              F4C5CAEF2937CC2B39CD2B39CD2B39CD2B39CC2836BD090A211C1C5C1C1C5C1C
              1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1C1C5C1A1E5B091131
              141F354469844C728A1C2E4A0C104500003D00003D00003D00003D00003D0000
              3D00003D00003D00003D00003D00003D00003D00003D00003D00003D00003D00
              003D00003D060C4D1C397B1E407A2542722A466D14214E00003D030A6E000C9D
              020F9511268F142F811330860F2B87081B8A010D95000C9C010C9D1923A62B39
              CC2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CC13
              1853222DA32B39CD2B39CD2B39CD2B39CD2A39CB2E3CC91C24A81A21941A2194
              242D98E8EFF4DAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDBEAEEDEECEFE0EDF1
              E3EEF2E5F0F3E8F2F4D0D6F22937CB2837CA2838C92838C92839C92637BE0C0F
              2E1B1D5C1C1C5C1B1C5B1B1C5B1B1C5C1B1C5C1B1C5C1B1C5C191D5B181D5A18
              1E5A101834030F19212C348C9FA7596C772B3C4D18253E070C44050C46030843
              03084303084303084302074301034100024000024000023F0002400103400002
              3E00013D00033A00033800023700033602073C0E1E5319306711215401023D00
              003D030656010D9719368519438F1745971847991C4B9E1B4899143186071595
              000C9C0A13962C3BC82B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39
              CD2B39CD2B39CD2733B31014462A38CC2B39CD2B39CD2B39CD2B39CD2D3BCC27
              32BF182195181F92182093C1C8DFDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EEF1E1EAEDC7D4D9AABDC48DA1A98E
              B2BC84B3BD79AAB66A8F9C6486984A77993863AF234EAD2756AB2A64B22866B2
              296BB1286EAD276DA2276DA02971A42876A62576A52679A8287AA92B7EAD2A7E
              AD2A80AF2D81AD173752000811061018090E148D999EC0C8CA8290973B52692F
              76A1227CAA2079A72078A51F70A115598F0F4B861249871147860F44820E3F7E
              0B3C7A083B770939730A386E06356A08275006193C01082A00032100051D0004
              1C00031B000321000235010344122E881A478D1746971745971947971E4C9B22
              52A021509E1A3B89091891020D9C2937B42A39CC2B39CD2B39CD2B39CD2B39CD
              2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD13174F2531AD2B39CD2B39CD2B39
              CD2B39CD2A39CC3140CB1B27A11A21931A2194858EC4DAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EFF1DDE7E8A8C5CC7CAAB65D9E
              AD4A94A41E3C464996A84995A94A95A94896A84790A24D8D9E4176902D668E1D
              65971C6D9C1B709F1D73A21E73A21B6C9D1A6B9C1A6E9E1D6F9F1B6C9D1B6A9B
              1D6B9E1D6B9D1C6D9D1E729D134159010811040F18101922131C25212830D1D5
              D6C7CFD1778A97236B95146B9E146D9B136C9C13689A1061960F5D940F5A930D
              56910D548F0C528D0A4F8B094E89064B8604488206477F0749800D497D0D3E6F
              0C234802092200061B00031A000217000119060D2D254A8414438A1847951644
              9118469022529422549D2251A01F519C2144910713931623A02C3BCA2B39CD2B
              39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD242FA6131958
              2B39CD2B39CD2B39CD2B39CD2B39CD2A39CB202BB41A21931A2193464EA2DAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EEF1D7EBED7AB7C2
              519CAD4A95A94A95A94A95A91E3B474A94A74A95A94A95A94A95A94A95A94A95
              A94995A74587993D799726709D226E9E206C9E206C9D206C9E216C9E216B9D20
              6A9C206A9B206A9C226AA0236DA12772A01B4861010912040F180F1722121B24
              232C355E6C71313D423B42492C323E1E557C176E9C176E9D17709E176F9D166C
              9B1567991466981363971160960F5C940E578E0D548E0C528D084E880A4B820A
              477D0D477B0A2F5C091A3A060B2300051B00021B0002190000192D405C204881
              14458A13428B15448D183D80304E7B3367A520519B25559D2B5FA81C3C93030E
              982F3FBD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B
              39CD2B39CC0E123B2A37C62B39CD2B39CD2B39CD2B39CD2B3ACC2934C1192096
              1A21941E2890F2F4F700DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EFF2ECF3F4AF
              D6DB5EA7B64A95A94A95A94A95A94A95A94A95A921424D468EA04A95A94A95A9
              4A95A94A95A94A95A94A95A94A95A94992A54585A0226D992271A1216F9F216E
              9E216E9E226C9C216B9B206A9A1F68991F669D246C9E1C4864010A11020D1407
              131C0E17211C252E6D77806F7A8239444C3E4851274358216F9A1C73A21C72A0
              1C71A01B72A119709F166E9C176B9B17689A1565991263971160940F5A900C55
              8C095088084B8110487B082650010E2E000C2800071F00031B00011B00011A01
              031B445F7F204E8B194A8E0934791040851945890D1A4D1F4E9024549D24559D
              2A5CA128589E162B931F2DAA2B3ACC2B39CD2B39CD2B39CD2B39CD2B39CD2B39
              CD2B39CD2B39CD2B39CD2B39CD1A23771F278A2B39CD2B39CD2B39CD2B39CD2B
              39CD3643CB18209C1A21941A2292D2D5E700DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDCE7E888BAC34B98AA4A95A94A95A94A95A94A95A94A95A94995A9284F5B40
              82934A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94C97AB4C95AC
              226F9722709E216E9E206D9D216B9B216A9B1F699A1E67991F669B174263010B
              14010B11040F1608121B19222B666E76707A833B444D3D49526E91A31F729A1D
              76A12076A02175A02174A12174A22072A11D72A01D71A0196F9E176D9C156A99
              1368971164950F6193095B8C0B53830B325B01133200102D000C280613300208
              2200011A00011A0E122A436C9415468418478A24518E1A4C89154489153A7E1C
              468F2553A0234D962B57972A5C9F2447960D1B9B313FC42B39CD2B39CD2B39CD
              2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2835B811164B2B39CD2B39
              CD2B39CD2B39CD2B39CD3745CD1F26A51A21941A2193BEC3DF00DAEAEEDAEAEE
              DAEAEEDAEAEEE0EDF08EBBC3509CAD4A95A94A95A94A95A94A95A94A95A94A95
              A94996A82E5D6B3A73834A95A94A95A94A95A94A95A94A95A94A95A94A95A94A
              95A94A95A94B96AA4793A9226C90216E9C226D9C226C9C216B9B1F69991E669A
              215A83000917000A0E020D1107121A0E1922565F68757D85414B54313A427692
              A324729A2079A12177A02376A12376A12377A12376A02274A12173A22173A220
              72A11D709F1B709E186E9D146D9B186E9C166E9C105985071A3B00122D00112C
              00082412305110305100021A00001A0A112A305D881448851C48881D3061386D
              A11241851746902350A02753A4244B95132A682555992D5AA80D1F862434B02B
              39CC2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD
              0F123A2B39CA2B39CD2B39CD2B39CD2B39CD3340CD2A32B11A21931A2193A6AA
              D300DAEAEEDAEAEEDAEAEEE2EEF1B1C9D058A2B24A95A94A95A94A95A94A95A9
              4A95A94A95A94A95A94896A8356C7B3365744A95A94A95A94A95A94A95A94A95
              A94A95A94A95A94A95A94A95A94A95A94B96AA377C95226C91226D98206B9820
              6C9B206A9B206A9722618105111D000910020E1508151E38434C6F7982455059
              283139758B98256E942177A12275A02275A02275A02174A02275A02275A02275
              A02275A02173A22072A12072A11F71A01F71A01D709F1F71A01E71A012466D01
              0F2D01102B000E29000B2612294914355603061E00011A121B322E618E174B87
              1A4B8A0D235C1A4986144488235092325FA02857A02958A3183070183B822654
              A221469C0F19943443C52B39CC2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B
              39CD2B39CD2B3ACC1A2160232FA52B39CD2B39CD2B39CD2B39CD2F3DCC313BBD
              1A21941A21949196C900DAEAEEDAEAEEDAEAEED2DEE26EABB94995A94A95A94A
              95A94A95A94A95A94A95A94A95A94A95A94A95A93D7A8A2B57644A96A84A95A9
              4A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94792A62C71
              8D24709B216F9E206E9D216C9C216B9B1F66901D445801070F06101817232C51
              5D66536068202B337485932A698F20739D20739E20739E20739E2174A02173A0
              21749F2174A020739F20739E2072A12173A21F71A01E709F1E709F1C6E9D1E70
              9F1A69960F315400102C102C49162E49000E28020E2709152E020A230614311F
              3656356A97164A861A4A8A153F7F113C7D1344883C699F2550901B49923163AB
              2B59A42653A121509F2756A71022922F3BB32B39CC2B39CD2B39CD2B39CD2B39
              CD2B39CD2B39CD2B39CD2B39CD2B39CD26318B1A22792B39CD2B39CD2B39CD2B
              39CD2C3ACC3540C61A20951A21937B81BF00DAEAEEDAEAEEE2EEF1A5C8CF539C
              AE4A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A944899A24
              49554A96A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A9
              4A95A94A95A9448BA1266E8E216E9C226D9D226C9C216A9B1F689B2261851C36
              4909162243545E4758612635403E59682B6489226F9D24719E2673A026739F24
              75A02574A02475A12476A12475A12376A12375A02072A12073A120739F1E709E
              1D6F9E1C6E9D1D6F9E155A840D2947001530102B4713304B02162F000E26050D
              242B3F55608EA81233592C618F154A82184B86184888164787143F801742831B
              4285153E851B468B2D5AA12255A6265AAA285BAB1833911420A23341CA2B39CD
              2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2D3AAF1318542B39
              CD2B39CD2B39CD2B39CD2B39CC323EC91C21991A2194686FB500DAEAEEDAEAEE
              E5F0F172B3C04A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95
              A94A95A94992A420404B4896A94A95A94A95A94A95A94A95A94A95A94A95A94A
              95A94A95A94A95A94A95A94A95A94A95A93C849C266F92216E9A266E9B276D95
              266D932368902B6683275169335364294452203D4D2D617E28749B2A76A12A75
              A22C76A32D78A42C77A42E79A62F7BA72D7DA82E7CA82C7CA82F7CA9307EAA2E
              7EA9287AA52979A52879A62577A52879A7144C75092746031E3B1028420E223D
              02152E03122A04132918344D99BCCC3C5D7E30618F164C82184D84174B871748
              87123F7D173E74040F340D224520395F1E3F71234D992C5FB0275CAA22489E04
              11952F3DB92B39CC2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD
              3545C60F123E2B39CD2B39CD2B39CD2B39CD2B39CD3C4ACB1F249B1A21945B63
              B100DAEAEEDEECF0C7E2E6519DAF4A95A94A95A94A95A94A95A94A95A94A95A9
              4A95A94A95A94A95A94A95A94995A8203D484995A84A95A94A95A94A95A94A95
              A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94894A732769234
              7998357A99387D9B397E9C377D9B3277953075922E6C89225A7428637E347A9B
              327EA43481A73682AA3683AA3683AA3885AC3888AE3585AB3585AA3485AB3386
              AC3487AD3588AD368AAE3484AD3383AB3485AB3486AD3484AB1A537908284706
              2948082947031631031C37061C37071C3403091F3C5C756A8EA5376E98174D81
              194E84164B83164A8413427C0F305D000F2B1B3050263F641C3A642245842E5E
              AA336DAD3164B20D21981825A62E3DCA2B39CD2B39CD2B39CD2B39CD2B39CD2B
              39CD2B39CD2B39CD3545CB10143B2B39CD2B39CD2B39CD2B39CD2B39CD3D4AD0
              2228A11A21944E55AD00DAEAEEE7F1F495C5CF4A96A84A95A94A95A94A95A94A
              95A94A95A94A95A94A95A94A95A94A95A94A95A94896A920414C4892A44A95A9
              4A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95
              A94A95A941859D3A809E3D82A14086A44690AD4795B24591AF3D87A53E87A43E
              88A53A86A33986A33D8DA94191AF4798B64798B74598B74699B8469ABA4599B8
              4497B64196B43D94B13C93B13D95B23E96B23E95B4388EAF3990B13A90B1398F
              B02565890C2B4A0F2F4B0E2844011A34011B35041E3801152D000F250A1E373F
              5E7723507E154A7F17477C467AA6235D8E1848810E32611933523B537122395B
              1E39631B3C77203A883D6CA8396CB818319C010D9D2E3CBC2B39CC2B39CD2B39
              CD2B39CD2B39CD2B39CD2B39CD2B39CD2E3FCA10143C2B39CC2B39CD2B39CD2B
              39CD2B39CD3A48CF232BA51A2194464DAB00DAEAEEE2EEF073B1BF4A95A94A95
              A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94996A926
              4B574287984A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A9
              4A95A94A95A94A95A94A95A9478FA44588A44990AD488EAC509EBA53A2BE51A0
              BD4B9AB74F9FBB4797B34B9AB74697B24697B24B9DB84FA1BC57A7C25AAAC657
              A8C255A8C24FA4BF4EA3BE50A2BF4DA2BE48A0BB479FBA49A0BC4AA1BC449CB7
              449CB8459DB9479EBA3077960D2E4D061F3A011530011832041D38122C47031C
              37021A34031C35041B37335D871E55890F3D72274D7B34729F1B4D8515427536
              506C92A6B7657482263E6224437D1C368E0414623F69BD1D399B010C9B1724A5
              2B3ACA2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD3040CA0E123A2C39
              CC2B39CD2B39CD2B39CD2B39CD3946CF2730AA1A2194434AA900DAEAEED0E3E9
              5AA1B14A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95
              A94A95A94A95A92D59663C798A4A95A94A95A94A95A94A95A94A95A94A95A94A
              95A94A95A94A95A94A95A94A95A94A95A94A95A94792A65FA1B9589FB858A0BA
              55A3BC59A5BD57A5BF54A3BE54A3BF50A0BC52A1BE4D9FBA4E9FBA51A2BC56A6
              BF5DAAC261ADC65FADC558A9C358A9C351A6C14DA3BE4DA0BC4EA3BE51A6C151
              A4C04CA0BC4DA2BD4EA4BF4FA5C053A6C24C96B0123752081F39223B561B3953
              1A324B16354E0B2B450D2D480E2E470C2C482C5B84215C8E16487D143B70194B
              801E4F861F5086405977A0B4C3B1C0C8314B692B4A832449A5203D963964BF2B
              4BAB010D9A020E9D2938BB2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD
              3040CD1317402C39CB2B39CD2B39CD2B39CD2B39CD3947D02831AF1A21945E66
              B400DAEAEEA4CAD44B97A94A95A94A95A94A95A94A95A94A95A94A95A94A95A9
              4A95A94A95A94A95A94A95A94A95A9346877366B7A4A95A94A95A94A95A94A95
              A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A963
              A4B96BAFC45EA9C05BA7BF5CA7BF5BA9C15DA6BE5DA9C15CA9C259A6BF57A6C0
              57A7BF5BA9C160AAC364ACC563ADC562AFC75AABC35EAEC557AAC456A9C356A8
              C357AAC456A9C356A9C354A8C257A9C355A9C355AAC357A9C365ABBF1C455E12
              2C4445637B3854695B7380304F65113B59103958184261224E72255C88256B9B
              134478204D821C4C822152871F4F88204A7B2F47664A61792E4A6F1F41872048
              A9254CB02D54B72747A7020E9A000C9C1927A82C3ACC2B39CD2B39CD2B39CD2B
              39CD2B39CD2B39CD2E3DCD0F133C2B38CD2B39CD2B39CD2B39CD2B39CD414DD4
              2931AF1A2193767DBD00DAEAEE85B9C64896A84A95A94A95A94A95A94A95A94A
              95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A93A77862F5D6A4A96A9
              4A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95
              A94A95A94995A95999AD7CBBCE64AEC462ABC361AAC062ADC467AFC665ACC466
              AEC562ACC461ACC462ACC465AEC466AEC668AFC865AFC365B2C962B3CA64B4CB
              62B3CA61B3CA61B2C95CACC35BACC45CADC55EB0C75CACC35AACC35BACC45CAC
              C36CB6C82D5F782648627E9DA9526A7A26384C2B506C24597E265E8238719343
              7E9E5092B3438AB2225A881D4C822051881B4D821D4D842152891D4D81214C80
              15427C1B49931E4AA31B47A5214AAB2849A506139B000C9C05119E303FC52B39
              CD2B39CD2B39CD2B39CD2B39CD2B39CD2B3ACB0E123C2B39CD2B39CD2B39CD2B
              39CD2C3ACC4F5ADE2830B11921939096C900EFF5F671ADBC4A95A94A95A94A95
              A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A941
              8696274F5B4896A84A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A9
              4A95A94A95A94A95A94A95A94A95A94B8B9C72A6B86FB5C868AEC46CB2C668AF
              C664ACC565ACC56AB2C765ADC664ABC465ACC565ADC567AFC767AEC765ACC46D
              B7CA69B9CC68B9CC66B8CB65B6CC66B7CB67B6CD5FAFC761B2CA61B2C969B7CD
              5EAFC661B2C961B1C96AB8CC528CA13A6A84ADC8D190A1A73F627C28597B3E79
              9A5698B64D8BAC4986A83C779A3D7DA32A628D1B4E8322558A21548816467D23
              568C2D62911B4C82305E9316438A18469915449716439F183C96041298000C9C
              000C9C1A29AD2B39CD2B39CD2B39CD2B39CD2B39CD2B39CD2C3AC80E123F2B39
              CD2B39CD2B39CD2B39CD2D3BCD555FE2252CAC1A2193A7ABD200E1EBED5BA0B0
              4A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95
              A94A95A94A95A94690A222434F4896A84A95A94A95A94A95A94A95A94A95A94A
              95A94A95A94A95A94A95A94A95A94A95A94A95A94996A94B8E9E6A94A378B9CA
              66AEC56AB0C46BB3C866ADC665ACC56BB2C76AB0C767AEC766ADC663AAC366AD
              C663AAC365ACC567B1C769BACD68BACD69BBCE67B9CF69BBCE66B7CD62B4CB64
              B5CC64B5CC67B8CE62B3CA63B5CC62B4CB64B5CB68A5B54374913E66816E8EA1
              3A617A1743662653773463862E5E84235177275179274F76316D96194F811F53
              8825568A265C8C164A801E518923548B1E518B1A49913D6EA9548AB8113D911E
              409E020E99000C9C000C9C05129F2937C32B39CD2B39CD2B39CD2B39CD2B39CD
              2732B21318552B39CD2B39CD2B39CD2B39CD2F3CCD5D65E62129A7192293CFD3
              E600CFDDE15199AB4A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A9
              4A95A94A95A94A95A94A95A94A95A94895A7213F4B4996A84A95A94A95A94A95
              A94A95A94A95A94A95A94A95A94A95A94A96A84994A74081923162702B576333
              6776638B987CBACA67AEC56CB2C770B7CC68AFC767AFC66DB5C970B8CB69B2C7
              69B2C767AFC565ADC667AFC769B0C865B0C766B8CC69BBCE69BBCD69BCCE69BC
              CF68BACF68BBD068BBD169BCCF68BACF67B9CF68BAD168BAD068BBD07FBFCC3C
              688518395F0E2F540F2F530E2F530B2C5114365C1E3F6718396207234C0F274E
              4572982B64921D52882147774A74992660901C4C85184A84194C8A1E4F923B6B
              A44275A415418B1D3C95010D99000C9C000C9C000C9C121FA92B39CD2B39CD2B
              39CD2B39CD2B39CD1C268A1B237B2B39CD2B39CD2B39CD2B39CD3340CF5B65E6
              2027A1252F96DAEAEE00B4C5CC4A95A74A95A94A95A94A95A94A95A94A95A94A
              95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A938718016242D2E5A67
              4995A84A95A94A95A94A95A94996A94996A8468D9F366F7E2B59662B5865346B
              7A438A9B4896A84896A872A0AD82BECE6CB3C96EB8CB76BBCF70BBCD6DB8CA73
              BACD76BDD073BDCF6EBACC6EB9CB6BB4C970BBCD6DB9CB6DB9CC6DBDCF6FC0D2
              6FC1D36EC2D36CC0D26CBFD26BBED16DC0D26EC1D36DC0D26ABED06BBFD16CC0
              D26DC1D27FC9D96597AB0E2D510A284E0C274D07244A04204709254E0E28510F
              2A530C234E041843305882447EA5235C8E25508120385E2255881E4C831A4A82
              184C851C4E8D2757980C2666173C8318368B000C9C000C9C000C9C000C9C050E
              9C2533C02B39CD2B39CD2B39CD2B39CD141A5B2631A92B39CD2B39CD2B39CD2B
              39CD3743D2555CE31B249B626BB2DAEAEE00A6BBC24896A84A95A94A95A94A95
              A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94995A81A
              2D37141D26131D26376F7D4896A84894A63D7D8E2F5F6D2B5764305F6E3E7E8E
              4894A64995A94A95A94A95A94A95A94A95A96FA3B07DB5C376BECF73BCCE77BD
              D07BC2D279C0D17BC0D17EC3D37EC3D47BC3D478C2D376C1D178C3D376C2D374
              C1D375C2D479C4D67BC7D97BC8D97AC8D97BC8DA7BC9DB7CCADC7DCADC7DCADD
              7AC9DB77C6D879C7D980CCDE93D6E488C5D5304E6709284D2241653F74960820
              49061C4B0B20500B204E0B1F4E1936633C779F346F9826618E285D90163B6B1B
              477C1E4B822250825991B81A4E86245492285393133C7D17338D000C9C000C9C
              000C9C000C9C000C9C1620AC2B39CD2B39CD2B39CD2B39CD0E11392B38C92B39
              CD2B39CD2B39CD2B39CD3743D24449D91A2297A5ADD2DAEAEE00ADC4CA4A95A9
              4A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95
              A94A95A9468FA0131D26141D26141D261D333D2B59662B596637707F468E9F4A
              95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94995A9679CA9689AAB
              7ABDCC7EC2D17FC3D182C5D481C6D381C6D38BD0DD86CBD986CBD886CCD887CC
              D785CAD782C8D683C9D883C9D884CAD987CCDB88CEDE8ACFE28AD0E38BD0E38C
              D0E48ED1E58ED2E58ED1E58DCFE48FD1E594D5E99CDDEE95D6E86895A7072649
              2F56783B7D9C1C4067071D4D061B4C041848081C4B1A335C5C8FAC27466C3E78
              A1215989235285235086214E842D588949779C2A5F8F28548A234E871943811A
              3498000C9C000C9C000C9C000C9C000C9C07109D2839C72B39CD2B39CD2632B1
              1318512B39CB2B39CD2B39CD2B39CD2B39CD3E49D73438CC1D2693DBE4ECDAEA
              EE00B6C9CF4A96A84A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A9
              4A95A94A95A94A95A94892A43B7585121D26141D26141D261827304995A74996
              A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A949
              95A94C81906996A578B8C885C6D287C9D486C9D488CAD689CBD98DD0DC90D3DE
              8FD2DF8CCFDE8DD0DF8CD0DE8BD0DD8AD0DD8BD0DE8BD1DD8ED2E090D3E191D3
              E794D6EA95D6EA96D7EB97D7EC97D8ED99D9EE99DAEF9ADBEF9ADBEF9DDDF3A0
              E0F789C7D734536C204064568BA90B2A54081E4F0921531F3B640219420B1E46
              5A758F0818403A597D326B95225182204C82204C81204E812A517F1C477D2451
              861F4B80335E960B1B9B000C9C000C9C000C9C000C9C000C9C010C9D2735BA2B
              39CC2B39CD171F6A212B972B39CD2B39CD2B39CD2B39CD2B39CD3E49D8282CB8
              5A63ADE2EEF1DAEAEE00BBCCD14894A74A95A94A95A94A95A94A95A94A95A94A
              95A94995A94995A84286973267752B58652C5C693975841E3741141D26141D26
              1929334A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95
              A94A95A94A95A94A95A947808E80A8B486C4D283C6D387CAD589C9D58DCBD88F
              CFDB91D1DC93D3DF93D3DF93D4DF94D4E094D5E294D5E393D4E492D4E493D5E4
              94D6E596D7E797D7EB98D9ED99D9ED9ED9EF9CDAEF9CDCF19CDCF29DDDF39EDE
              F49FE0F5A1E0F9A2E1FA9EDFF277A5B90B244819365D071F4D061D4E38557C6E
              A1BC16325A06194105143B021133142442416D912E68921A4D7C1744761D497C
              194577204C7F1C497C1E4C7D3356A0000C9C000C9C000C9C000C9C000C9C000C
              9C000C9C111FA72B3AC92B39CA0D10372B39CA2B39CD2B39CD2B39CD2B39CD2B
              39CC3D45D91F24A5C5CCE0DAEAEEDAEAEE00CFDADE4894A64A95A94A95A94A95
              A94A95A94790A23974832D5C692B59663268764387984995A84A95A94996A939
              7180131E27141D262648534995A94A95A94A95A94A95A94A95A94A95A94A95A9
              4A95A94A95A94A95A94A95A94A95A94A95A944859588B1BC9DD7E38CCAD686C8
              D48DCBD795CEDA98D1DE99D2DF9AD3E09BD4E39BD4E59CD5E49CD5E69CD5E89D
              D6E89CD8EA9BD9EA9BD9EC9DDAEF9DDAEF9EDBF09FDCF1A1DCF3A0DEF49EDEF4
              A0E0F6A0E0F6A2E2F9A4E3F9A5E4FAA4E4F9A4E4F994D0E150799505204A0A21
              500821513B5479A1CADC1E3C6405164103143B071533141E2E2030424D809F3B
              70961849771846771746771445761947754873958E9FC6141EA1000C9C000C9C
              000C9C000C9C000C9C000C9C010D9D2939BB1F298F19206E2B39CD2B39CD2B39
              CD2B39CD2B39CD2B3ACC383ED04149A7E2EEF1DAEAEEDAEAEE00E8EEEE4892A4
              4994A74082933163712C58652E5E6C3B7A8A4892A44996A84996A94A95A94A95
              A94A95A94A95A94A95A9376B7A1B313B458B9D4A95A94A95A94A95A94A95A94A
              95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94889999AC5D0
              A6DCEAA0D6E491CCD890CCD896CFDC99D2DF99D2DF9BD4E1A0D8E7A0D8E9A1D9
              EAA1D9EAA1D9EAA2DAECA4DBEFA5DCF2A3DDF3A5DCF3A5DDF4A5DDF4A4DFF5A2
              E2F6A4E2F8A4E3F9A5E3FAA7E4FBA9E4FBAAE5FBAAE5FCAAE6FCA8E6FBA8E7FA
              8EC7D83F67850E29531029580F27595D789A07215704174E02123F2531471821
              29111A2217232E567B90598FAF3A698D2B587D476F8C66879DB7C8D0EBF3F5CE
              D5E8151FA1000C9C000C9C000C9C000C9C000C9C000C9C1522A80E123B2936BF
              2B39CD2B39CD2B39CD2B39CD2B39CD2E3CCE2E35C1B0B9D8DAEAEEDAEAEEDAEA
              EE00DAEAEE5386922C5A67366C7B448B9D4995A94995A94A95A94A95A94A95A9
              4A95A94A95A94A95A94A95A94A95A94A95A94995A722424E4A96A94A95A94A95
              A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A949
              95A94E869697C7D2ABDDEBA9DBE99DD2DF96CEDA9AD2DE9DD5E19DD5E19ED6E4
              A1DAE9A3DBECA5DDEEA3DBECA5DDEEA6DDF1A6DDEFAAE0F5AAE2F8AAE2F9AAE1
              F7AAE1F8AAE2F9AAE4FAABE4FBABE6FBABE7FBABE7FBACE8FBADE8FBAFE8FBB0
              E9FCAFE9FBADE9FAB0E9F996CDDA4D728A1A355B122E5F0D235C0A205D0A1F57
              4D638033424E29313623282E1D22290E161DB1C0C5C3D9E2B6CBD5C6D8DFE1EC
              EFE2EEF1DAEAEEE2EEF1DAE1ED464FB2010C9B000C9C000C9C000C9C000C9C2E
              379C2F37782B39CD2B39CD2B39CD2B39CD2B39CD2A38CC323ED05157C1E0EDF0
              DAEAEEDAEAEEDAEAEE00DAEAEE95BDC74A95A94A95A94A95A94A95A94A95A94A
              95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94995A922424D
              4A95A84A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95
              A94A95A94A95A94995A9477B8CA4D6E3ACDEEDAADDEBA4D9E7A2D8E7A3D7E6A3
              D7E6A1D9E6A3DAE9A5DCEFA8DFF2AAE0F3A8DFF1A9E0F3AAE1F6ABE0F5AEE4FA
              AFE5FAAEE6FAB0E7FBAFE5F9ADE6FAADE7FBAEE8FBAEE9FAB1EBFAB3ECFAB3ED
              FBB4EDFAB5EEFBB5EFFBB4EDFAB4EDFAB4EDFAB3ECF9AFE5EF93BBC767859949
              678253738E98B9CA86A5AE303B42353D422F363B2F373C61676CE9F2F4E3EFF2
              DDEBEFDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EEF1CAD3E68A92CC6269
              BE7C84C8BDC6E0E1EEF19FAADD2B3ACB2B39CD2B39CD2B39CD2B39CD2938CC33
              3ECCC9D0E7DAEAEEDAEAEEDAEAEEDAEAEE00DAEAEECADFE54994A84A95A94A95
              A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A
              95A94996A82447534890A24A95A94A95A94A95A94A95A94A95A94A95A94A95A9
              4A95A94A95A94A95A94A95A94A95A94995A952899CB4E6F7B5E7F8B3E6F7ABE0
              F1ADE2F4ACE1F3AEE3F4ACE0F2B0E4F6AEE3F8AFE5F9AFE5F9B0E5F9AFE5F9B0
              E7FAB1E7F9B2EAFAB3EBFAB3ECFAB4EDFAB2EBFAB3ECFAB4EDFAB5EEFBB5EFFB
              B7F1FBB7F2FBB7F1FBB7F2FBB8F3FBB8F4FBB7F1FBB7F0FCB7F0FCB6F0FBB6F0
              FBB7F0FBB8F0FBB9F1FBB4ECF5ABDDE450626C4950554C5358464E53495056DE
              E4E5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE5EAF2404FCC2B39CD2B39CD2B39
              CD2B39CD2C3ACB767ED4E2EEF1DAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEE4F0F3
              5499AB4A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95
              A94A95A94A95A94A95A94995A929525F4285964A95A94A95A94A95A94A95A94A
              95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94893A77CB3C0BCF4FA
              BBF4FAB9F0F9B4EBF9B6ECFAB6ECFAB6EDFAB4EBF9B7EEFAB6EDF9B7EDFAB7ED
              FAB8EDFAB6EDF9B6EEFAB6F0F9B7F1FAB7F1FAB7F2FBB7F2FBB6F0FAB7F2FBB8
              F3FAB9F5FABAF6F9BAF8F9BBF8FABBF8FABCF8FABDFAFBBDFAFABCF8FBBBF6FC
              BBF6FABDF5FABDF5FABCF6FABCF6FABEF7FBBCF5F66F98A15A636A61696E656D
              72697278BDC5C8E3EFF2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EEF18793D7
              2B3ACC2B39CD2B39CD2B39CB4450CDE4EAF1DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEE2EEF17AAEBB4A95A94A95A94A95A94A95A94A95A94A95A94A95A9
              4A95A94A95A94A95A94A95A94A95A94A95A94A95A931616F3B76874A95A94A95
              A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A942
              8A9CB4EBEEC2FBFBC2FCFBBDF6FABAF3F9BCF4F9BDF3F8BCF3FABBF3FABCF5F9
              BCF5FABEF4FABCF4FABDF5FABDF6F9BDF6FAC0F7FAC0F8FAC0F9FBC1F9FBBEF8
              FABEF8FAC0F8FBBEFAFBC0FBFAC2FBFAC2FBFBC3FBFCC5FCFBC6FCFBC8FDFAC7
              FCFBC7FCFBC8FCFBC7FCFCC7FBFBC7FAFCC7FBFBC6FCFBC5FBFA81ADB368787E
              767E83787F85747D84A4AFB4E2EEF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEED7DFEC3140C82B39CD2B39CD2F3DCCBCC3E8E2EEF1DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEC9DCE14891A44A95A94A95A94A95A94A
              95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A937707F
              3568784A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95
              A94A95A94996A85D9CA7C7FCFAC6FDF9C6FDFAC4FAFAC2F8FAC2F8FAC1F8FAC2
              F7FAC2F8FAC2FAFBC4F9FBC4F8FAC6F9FBC6FAFCC8FBFBCBFCFCCAFCFCC8FCFA
              C9FCFACBFCFBCBFCFBCBFCFBCCFCFBCBFDFCCCFDFBCDFDFBCDFDFBCEFDFBCEFD
              FBCEFDFBCEFCFBCEFCFBCEFCFBCEFCFBCEFCFBCEFCFBCEFCFBCEFDFBD0FCFA95
              C2C86B80887881877A82877D878D9BA6ABE1EDF0DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEE2EEF16A76CD2B39CC2B39CC6973D4E2EEF1DA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEE1EEF16F9FAD4995
              A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A
              95A94A95A93E7E8E2D5A674A95A94A95A94A95A94A95A94A95A94A95A94A95A9
              4A95A94A95A94A95A94A95A9438EA18CBFC5C5FBFBC6FCFACCFCFBCFFCFBCDFC
              FACFFCFBCFFDFAD0FCFBD0FDFAD1FDFAD3FCFBD4FCFBD4FCFBD4FCFBD8FDFADA
              FDFAD8FDFAD7FDFBD7FDFBD7FDFBD8FDFCD7FCFBD8FEFBD6FDFCD6FDFDD6FDFD
              D2FDFBCFFFF9CFFFF9CFFEFACFFEFBCFFDFCCFFDFCCEFCFBCDFCFBCDFDFBCEFD
              FBCCFCFB9ECBD16B808B7F8D95757F88727C85AFB9BDE1EDF0DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED5DEEE3545C93947
              CBDAE1F0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEED3E2E54B8FA24A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95
              A94A95A94A95A94A95A94A95A9448C9D274D594995A94A95A94A95A94A95A94A
              95A94A95A94A95A94A95A94A95A94A95A94A95A9337486B7E9EDC5F9FAD0FDFA
              D7FDFBDDFDFAE1FDFAE3FDFAE4FDFBE3FDFAE3FDFAE2FDFAE4FDFBE3FDFAE2FD
              FAE1FDFAE0FDFAE0FEFADEFEFADEFEFBDFFEFBDAFDFBD9FDFCD9FDFBD9FEFAD8
              FEFAD7FDFDD6FDFDD2FDFBCFFDFBCFFDFCCFFDFBCEFDFCCDFDFBCCFDFBC9FCFA
              C6F9FBC7FAFBC4F8FA8FBCC4697F8C69747F5E6B75707B83D3DBDDE2EEF1DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              E2EEF1A4B1DCB9C3E5E2EEF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEE2EEF18DB0BC4894A74A95A94A95A94A95A94A95A9
              4A95A94A95A94A95A94A95A94A95A94A95A94A95A94993A62345504996A94A95
              A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94994A8568895D2
              FCFADDFDFAEAFDFBEBFDFBECFCFBF1FCFBF1FDFBF0FDFCEBFCFBEAFDFAEAFDFA
              E9FDFBE6FEFBE3FEFAE2FDF9E0FDF9E0FDFADBFDFADBFEFBDCFEFBD9FDFCD9FD
              FBD8FDFBD8FDFBD7FDFDD4FDFDD0FDFBCFFEFBCEFCFBCEFCFBCDFCFBCAFCFBC4
              F8FBC3F6FBC3F6FBC3F5F9B5DFE584A5B1526879556070919BA5CFD9DDE2EEF1
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEED9E3E75A94A44995A94A
              95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94996A8
              22434F4A96A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95
              A93A7D90BEDADCE9FDFAF0FDFBEFFCFBEBFDFAF0FCFBF0FCFBE9FCFAE8FDFBE8
              FCFBE9FCFAE8FDFAE4FDFAE1FDFAE0FDFADFFDFADCFDFADAFDFBD9FDFBD8FDFA
              D8FCFAD8FDFAD7FDFCD4FDFCD3FDFCD1FDFBCEFDFBCEFCFBCEFCFBCAFCFAC4F8
              FAC1F6F8C3F8F9BCF2F5A2D0D985A6B197AFB9A9B8C0BFCAD0DAE3E6E6F1F3DE
              ECF0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEE2EE
              F1BACFD54D95A84A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A94A
              95A94A95A94996A82447524A93A54A95A94A95A94A95A94A95A94A95A94A95A9
              4A95A94A95A9448FA2598291EFFBFAF0FDFBF2FCFBECFCFAEFFDFBF2FCFBEDFC
              FBE6FDFAE2FDFAE4FDFBE3FDFAE2FDFAE0FDFADFFDFADCFDFAD9FDFBD8FCFAD8
              FCFAD8FCF9D7FCFAD5FCFBD0FCFBCFFCFACEFCFBCDFBFBC9F8FBC2F3F8BCECF5
              ABDCF07FACD6A1C8DCD5F1F2E1F1F3E7F2F3E9F2F5E5F0F3E0EDF1DCEBEFDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEE1EEF186ABB74A95A84A95A94A95A94A95A94A95A94A95
              A94A95A94A95A94A95A94A95A94896A8284F5C448A9C4A95A94A95A94A95A94A
              95A94A95A94A95A94A95A94A95A93A7385CADADDEEFCFBF1FDFCF2FCFBE9FDFA
              F0FDFBF2FCFBE5FDFAE1FDFADFFDFAE0FDFAE0FDFADEFDFADAFDFBD9FDFBD8FD
              FBD6FCFBD6FCFBD4FBFBD0FAFAC9F4F8C5F3F9BBE6F3AAD2E9A1C6E38BADE35E
              7CCB3954B7263AAA0C1D9C1B279AE1E7EEE8F1F4DEECF0DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE5EEF18AB1BD4A95A74A95A9
              4A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A92E5D6B3E7C8D4A95
              A94A95A94A95A94A95A94A95A94A95A94A95A93C8193B4CFD4F0FCFBEAFDFAEC
              FDFBEAFCFBE9FDFAEAFDFAE9FDFAE0FDF9DEFDFADBFDFADEFDFADBFDFBD6FDFA
              D5FCFAD3FCFBCEF9FAC8F7F7CEFBF9C4F1F695BEE86889DA526DCC475DC44559
              C94E60CF3141C72B36BE0E11AB0E10A80D119EC3C9E0E2EFF2DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE1
              EDF0B0CCD44C94A64A95A94A95A94A95A94A95A94A95A94A95A94A95A94A95A9
              366C7B366E7D4A95A94A95A94A95A94A95A94A95A94A95A94792A47A9FA9EDFD
              FBE7FDFAE5FDFAE5FDFAE3FDFAE4FDFAE4FDFADFFDFADBFDFAD5FDFAD4FDFAD3
              FDFBCDF9F8C3F1F5B8E5EDBDE2EAC6E4EAE0F6F7E6F5F6E8F3F5D3E0EF687CD3
              3143C52E3DC92C3ACB2A39CB2A38CC3442CA1A1EB50C0DA79AA0CFE2EEF1DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEE2EEF1BACFD54D8A9B4994A74A95A94A95A94A95A94A
              95A94A95A94A95A93C7A8B30606E4A95A94A95A94A95A94A95A94A95A94995A9
              6194A1DCF1F1E4FDFADCFDFAD9FDFAD8FDFAD9FDFAD9FDFAD5FBFACAF5F9C5F3
              F9C9F4F8D3F5F7DAF2F3DFF0F2E6F1F3E7F1F3E2EFF1DDEBEFDAEAEEDAEAEEDA
              EAEEDAEAEEE2EEF1CBD4E67686CB4C5ECB2D3CC82B39CB2E3DCB2832C35255B6
              E1EEF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EEF1CFDCE07BA2AE498E
              A04996A84A95A94A95A94A95A94A95A943899A28525F4A95A94A95A94A95A949
              95A94A95A95C95A4CAECECD5FDFBD4FCFBCDF8F7C8F4F8CDF6F9D5F8F9DBF5F6
              DEF0F4E4F2F4E7F2F4E5F0F3E0EDF1DCEBEFDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EEF1D8E2EAACB9DC717FD047
              57C86D7BCCEAEDF4DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEE1EEF1C4D2D85880914082954895A74995A94A95A94892A52449544995
              A94996A94E99AA67A8B785B9C3C1E6EBCFF1F4D5F1F3D9ECEFE1EFF2E5F1F3E4
              F0F3E0EDF1DCEBEFDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC6D0D595ADB78CB6C180B4C1
              71ABB86989938FBBC5ADD1D8D4EBEEE8F3F4F1F7F7DAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00}
            Transparent = True
            Visible = False
          end
          object Image_Telescope_NonRetourne_FerACheval: TImage
            Left = 233
            Top = 41
            Width = 89
            Height = 137
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            AutoSize = True
            Picture.Data = {
              07544269746D6170A28F0000424DA28F00000000000036000000280000005900
              00008900000001001800000000006C8F0000130B0000130B0000000000000000
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC1D6C48FB2
              9688AC9296B89DCDE0CEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE3EF
              F2D7E7DD42824A11552610542710542710542611552677A285E1EEF0DAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEEAF4F32C6E4411542610542710542710542710542710
              5427105426B0CBBBDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDEECF095BEB110542710542710
              54271054271054271054271054271054275F916EDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE6
              F1F32C7351105427105427105427105427105427105427105427105427478460
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEC9DCD8105427105427105427105427105427105427
              1054271054271054278DAF9ADAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDEECF078A18E105427105427
              105427105427105427105427105427105427115427D4E3DEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              E6F1F32D6A471054271054271054271054271054271054271054271054273B73
              4EE6F1F3DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEE1ECEB1154281054271054271054271054271054
              2710542710542710542797B6A5DEECF0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDEECF0D6E2DE1054271054
              27105427105427105427105427105427105427125428DCE8E6DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEE8F1F4BACBC11054271054271054271054271054271054271054271054273F
              7351E7F1F4DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEA4B9B006371010542710542710542710542710
              5427105427105427105427618C6FDEECF0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE1EEF11F4F2A04380C11
              5427105427105427105427105427105427105427105427628C70DEECF0DAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEB9CBC3013709013709105226105427105427105427105427105427105427
              105427316A43E6F1F3DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEE2EEF1446C4D0037080037080E5125105427105427
              1054270F522616583121633E14542D115427D4E2DEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED4E1DC02380B003708
              00370809471D105427105427105326235E512B6669447F7A336E6D13493491B0
              9DDEECF0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDDEBEFE2EEF1E6F1F2E5EEECEBF2F1E9F2F4E5F0F3E0EDF1DCEBEF
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              E2EFF16A8A71003708003708003708043E141054271054271D5A3F4D7F91769A
              A9839A9F4D6B76284C543A6950E7F1F4DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEE00EAF0EC8AAB943C724D1C5B3012552816572B
              29663D477B596691758AAA96B0C6B9CBDBD5DFEBE9E5F0F2DEECF0DAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEE8EFEE0E41170037080037080037080038090E4F
              2510542724594A4F6B7D7B8E9CC1C8CC657A7F07221F104826DBE7E5DAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00447D53105427
              1054271054271054271054271054271054271054271054271054271154271154
              271C5C31719980E1EBEADAEAEEDAEAEEDAEAEEDAEAEEE2EEF1E4EDECC8D5CDB4
              C5B8CBD8D0E1EBEAE8F2F3E9F2F4E7F1F3E5F0F2E3EFF2E1EEF1DFEDF0DDEBEF
              DBEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE9FB4A60037080037
              080037080037080037080B471F1054271956312751483856587E8C8F576F6903
              28100F52259CB8A9DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEE00548A651054271054271054271054271054271054271054271054
              271054271054271054271054271054271054273E7350E1EEF0DAEAEEE3EFF2EC
              F2F17C97820E411501370800370800370802390B1044192C5A334C73536E897C
              99A3BDAAAFD6959ACD8086C36970B85C64B14A54AB3D4BA63745A23843A1373F
              9E353EA02B369814296F0D2E4C09343303321A02371001360C104B2610542611
              53271A5431416B531747270E4E22105427799F89DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00F4F9F687AE9B3270501050261153
              2610542610542610542610542710542710542710542710542710542710542710
              5427CCDBD5ECF4F6C6D5CE204F2800370800370800370800370800370800360B
              0331230A2B4712266F19238F1A22951B22951A22951B22951B22951B22951B22
              951B22951B22951B22951B22951B22951B22951B22951B22951B22941A249017
              26850E255E0B2A3F103F3512502811542710542710542710542718572DBDCFCA
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEA
              EEDDEBEFE2EEF1E5EFF1DCE8E8CEE0DDBBD2CCA3C1B688AC9C6B96804A7E6424
              6240115429105427105427105426AAC2B2C0D0C40E4217003708003708003708
              00370903331B0D2B5015257C1A23931B22951B22951B22951B22951B22951B22
              951B22951B22951B22951B22951B22951B22951B22951B22951B22951B22951B
              22951B22951B22951B22951B22951B22951A22951B229415237713334F103D2C
              2E5B3D8BA894E3EAE5E3EFF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDB
              EBEEDFEDF0E2EFF1E6F1F3EAF3F5E5EEEE90AC9E14552C1154268CA7950F4217
              0037080037080036090330241028631A23901B22951B22951B22951B22951B22
              951B22951A22951A22961A23951A22951A22951A22951A22951A22941B22941B
              22951B22951B22951B22951B22951B22951B22951B22951B22951B22951B2295
              1B22951B22951B22951A2290161D7255598AB0B5C7E9F2F4DAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEEBF4F6
              4D7E640D4B1F073C1100370800370803321F0F26631A22901B22951B22951B22
              951A249B1A25A11A27A51B28AB1E2AB51D28BA1E29BD202AC0202BC0222DC121
              2BC1222CC1212CC01F28BB1D26B71C26B21C27AE1924A81622A1182297192295
              1B22951B22951B22951B22951B22951B22951B22951B22951B22951B22951A22
              91324197B4C0D7E2EEF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEE2EFF1628A7101380B0037080135110E2D561A23901B22
              951924981E29A6222EB32633BE2836C82937CB2B39CC2B39CC2A38CC2A38CD2A
              38CD2A38CD2A38CD2A38CD2A38CD2A38CD2B38CD2B38CD2A37CD2A38CD2A38CD
              2936CB2632C9222EC21B27BA1820A919209C1A22951B22951B22951B22951B22
              951B22951B22951B22951B22951B22951A23934853A3CBD2E1E2EEF1DAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EFF1CCDAD40F4317003708062F
              2B14257F18229317239C1E2DAF2837C22A39CB2C3ACE2C3ACE2C3ACE2C3ACE2C
              3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2C39CE2B39CE2B38CD2937CC2935CD2630CC1E27
              C21922B11620A01921961B22951B22951B22951B22951B22951B22951B22951B
              22951A24926470B0DDE4ECE2EFF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EFF1CEDB
              D612451A00360909293C17218A18249A1D2BB02634C42B39CB2B39CD2C3ACE2C
              3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3A
              CE2C3ACE2C39CE2B38CD2A37CD2936CD2530CA1F2BBF1823A51921961B22951B
              22951B22951B22951B22951B22951B22951B2295212B92828DBEEBF1F3E3EFF2
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDDEB
              EFE2EFF2E9F2F5CEDBD614461B01320F0E225919259A1E2CAF2533C12A38CB2B
              39CD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3A
              CE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B39CE2B38CE2A
              38CC2A37CA212DC01B25AD18219A1B22951B22951B22951B22951B22951B2295
              1B22951B22942D3B99BAC6DBE3EEF2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEE1EEF1A6BFCA90A2A7BDC8CCDAE3DD194A2104332514267F212EB026
              34C22937CA2B3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C39CE2B39CD2B39CD2B39CD2C3A
              CE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C
              3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B39CD2A38CC2632C71B26B417209C
              1B22951B22951B22951B22951B22951B22951B22951A2392919CC5E1EDF1DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEE2EEF1A7BFCA53899F1D404C0A2622204E2902
              2E17162A8B2533C02A38CB2B39CD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACD2733B9202A991B2481182071151C
              6613196013195F151C65181F6E1A227B1E278C222DA22935BC2A39CB2B38CD2B
              39CE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2B39CD2B39CC2631C71C27B5171F9E1A21961B22951B22951B22951B22
              951B22951A22944854A2DFE6EDE2EFF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEC9D9DF99B3BD9C
              B2BA6E9195033413022E131827792532BE2A38CC2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2B39CD2B38CD2835C01C258612174C2F31426162
              628B8B8BA7A8A9BCBCBDC9CACBD1D2D2D3D3D3CCCDCDC1C1C1B1B1B19B9B9B80
              80805F5E5F3B3C48191C3F1218581A23842531B42B38CD2B38CE2C39CE2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B39CD2A38CC2B39CC2632C61922
              AB1820981B22941B22951B22951B22951B22951B22952A3494C2CCDCE2EEF2DA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEB8CCD48FAAB593ADB0245336012F10172B792532BC2A38CB2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B39CD2A38CA212CA212164F4242
              4AA1A3A4E0E7E8DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED3D4D573747F0F0F25
              070926121857202A972A38C92C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3A
              CE2C3ACE2B39CD2A39CA2C3AC91F2ABA151DA21B22961B22951B22951B22951B
              22951B22941E2791B3BBD5E2EFF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEECF3F5A4C0CA3864510233111A2F76
              202DB52937CB2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B38CC232E
              A6151844666667D7DBDCE7F1F4DEECF0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDDEBEFE2EEF1E6F0F3D1D7E09799B1
              50507B17175001013F00003F00003F010135010122050720141A5A242FA92B39
              CD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B39CD2B39CB2936C618
              22AC1820981B22941B22951B22951B22951B22951C2393A8B0D3E3EFF2DAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE8F1F4
              C9D5D001360B132A5E2330B52937CA2B39CD2C3ACE2C3ACE2C3ACE2C3ACE2C3A
              CE2B39CD2836C014195859595CDCE1E2E2EEF1DAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDDEBEFE2EEF1E5EFF2D0D7E09EA2B8
              55588013144D00013F00003F00003F00003F00003F00003F00003F00003F0000
              3F00013F0203360506200F123B2029922A38CA2B39CD2C3ACE2C3ACE2C3ACE2C
              3ACE2C3ACE2B39CD2B3ACB2C3AC91F2BB9151D9D1B22951B22951B22951B2295
              1B22951B2392A3ABCCE2EFF2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDEECF0738F7B092E361D28A92836C72B39CD2C3ACE2C3A
              CE2C3ACE2C3ACE2C3ACE2A38CB212B9A25273AC2C6C7E2EEF1DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDDEBEFE3EFF2E9F2F4E9F0F3C9CDD98D8FAA
              47487410104A00003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F00003F08094719215C0E123B22
              2D9F2B39CD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B3ACD2C3ACA2733C5
              141CA31921951B22951B22951B22951B22951A22929CA3C6E3EFF2DAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDEECF0D2DCE012258E2431
              BF2B38CC2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2937C7172072535356E8EDEEE3
              EFF2DAEAEEDAEAEEDAEAEEDAEAEEDDEBEFE3EFF2E9F2F4E8EFF2C5C9D6898BA7
              4444720E0E4800003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00
              003F0103530C15A12A36B7151A5212174F2734BA2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE2B39CD2C3ACC2B37CA161FAB1820951B22951B22951B22951B22
              951A22929AA1C4E2EEF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEE8F1F47081BE1D29B22A37CA2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2A37C713
              1A5D929597E2EEF1DAEAEEDAEAEEDDEBEFE3EFF2E9F2F5E7EEF1C2C7D48385A2
              40416F0C0C4700003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00
              003F00003F00003F00003F00003F01066B030D9B1F28AC2C39CC1E28970B0E33
              1D25812B39CC2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B39CD2B38CD1C24
              B3171F951B22951B22951B22951B22951A2190959CBEE2EEF1DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEED2DBE81929A42835C52B39CD2C3ACE2C3ACE2C
              3ACE2C3ACE2A38CB151C62888888DAEAEEDAEAEEDAEAEEE5ECF0C0C4D28082A0
              3B3B6B0A0A4600003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00
              003F00003F00003F00003F00003F00003F00003F00003F00003F010983000C9E
              1017952C3ACC2C3ACE2B3AC9181F6B1014462935BB2C3ACD2C3ACE2C3ACE2C3A
              CE2C3ACE2C3ACE2B39CE2D3ACF222ABC1920971B22951B22951B22951B22951A
              22909DA4C4E3EFF2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEE2EEF14E5BB12330BE2A
              38CC2C3ACE2C3ACE2C3ACE2C3ACE2A38CB1A237D727273EAEBEFB4B5C6757597
              36366708084500003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00
              003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F
              00003F000042010C98000C9E030D96222DB12C3ACE2C3ACE2C3ACE232EA10C0F
              33232D9D2B39CD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACD2C39CD2F3CCF262FBF16
              1D961B22951B22951B22951B22951A2291B4BBD7E3EFF2DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDA
              EAEEC2CCE31E2CB42937CA2C3ACE2C3ACE2C3ACE2C3ACE2B39CC2230A406071C
              2F306206064300003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00
              003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F
              00003F00003F00003F00003F00003F010454000C9F000C9E000C9E111A942D3A
              CD2C3ACE2C3ACE2C3ACE2937BF1014431B237B2B39CD2C3ACE2C3ACE2C3ACE2C
              3ACE2C39CE2B38CE2D3ACF222AC0141A951B22951B22951B22951B22951E288C
              CED5E2E3EFF2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEE2EEF14E5DBB2734C52B39CD2C3ACE2C3ACE2C3ACE
              2B39CD2735BF0B0D2910104800003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00
              003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F
              00003F00003F00003F00003F00003F00003F00003F00003F00003F020668000C
              9E000C9E000C9E040D942632B92C3ACE2C3ACE2C3ACE2C3ACE2C3ACB181E6415
              1B5D2A39C92C39CD2C3ACE2C3ACE2C3ACE2C3ACE2B39CE2C39CF2129BE131894
              1B22951B22951B22951B22953D4AAAECF2F6DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEC8D2E51D2BB42B38CC
              2C3ACE2C3ACE2C3ACE2C3ACE2837C9121B5913133C1D1D5D06064600003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00
              003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F
              00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F010879000C9E000C9E000C9E010C9E161E9B2C3ACD2C3ACE2C
              3ACE2C3ACE2C3ACE2C3ACD1C257D11164C2B37C82B3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE2C39CF2027BB1319921B22951B22951B22951B22957B88C9E2EF
              F1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              E2EEF1526BB92532C32B39CD2C3ACE2C3ACE2C3ACE2B39CD202D9F0A0A1F1D1D
              5D1D1D5D16165600003F00003F00003F00003F00003F00003F00003F00003F00
              003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F
              00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F010A8A000C9E000C9E000C9E00
              0C9E060E922835C12C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE1F288B0F1345
              2936C72B39CE2C3ACE2C3ACE2C3ACE2C3ACE2C39CE2C39CE2027BC171E961B22
              951B22951B22951C2596BFC6DCE3EFF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEE00DAEAEEDAEAEEE5EFF31B31A62836C92C3ACE2C3ACE2C3ACE2C3A
              CE2937C80E143E18194E1D1D5D1D1D5D1D1D5D0A0A4A00003F00003F00003F00
              003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F
              00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00004001
              0C97000C9E000C9E000C9E000C9E010D9E1A23A22C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE2C3ACE202A900F13462936C92C3ACE2C3ACE2C3ACE2C3ACE2C3A
              CE2C3ACD2F3DCB212BB31B22951B22951B22951B22952E3697E7ECF2DAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEC2D0E43144C52B39
              CC2C3ACE2C3ACE2C3ACE2B3ACD2530A20C0C241D1D5D1D1D5D1D1D5D1D1D5D1A
              1A5A02024100003F00003F00003F00003F00003F00003F00003F00003F00003F
              00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00
              003F00003F00003F000041010C99000C9E000C9E000C9E000C9E000C9E081092
              2B38C82C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE1F288A11154E2A37
              CC2C3ACE2C3ACE2C3ACE2C3ACE2B39CD2C39CD2E3AC81B23A51B22951B22951B
              22951B2295747BB9E2EEF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEA
              EEDDEBEF97A0DD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE141A5418184D1D
              1D5D1D1D5D1D1D5D1D1D5D1D1D5D11115000003F00003F00003F00003F00003F
              00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F00
              003F00003F00003F00003F00003F00003F00003F000043010C9C000C9E000C9E
              000C9E000C9E000C9E020D9E1E27A92C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3A
              CE2C3ACE2C3ACE1C247B151B602B39CD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C
              3BCD2A37C51B239E1B22951B22951B22951E2695C9CFE2DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEE3EFF25F69C92C3ACE2C3ACE2C3ACE2C3ACE2C
              3ACE2B39C70B0B231D1D5D1D1D5D1D1D5D1D1D5D1D1D5D1D1D5D1C1C5C050545
              00003F00003F00003F00003F00003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F030442060C470A144E0A164E04
              0E46070E450D104908094600003F00003F00003F00003F00003F00003F00003F
              000044010C9C000C9E000C9E000C9E000C9E000C9E000C9E0C14952C3ACB2C3A
              CE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE171D621C247C2B39CD2C
              3ACE2C3ACE2C3ACE2C3ACE2C3ACE303DCD242DBA1B229A1B22951B22951B2295
              3B439BE1EDF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEE7F1F33945C22C
              3ACE2C3ACE2C3ACE2C3ACE2C3ACE202A931011341D1D5D1D1D5D1D1D5D1D1D5D
              1D1D5D1D1D5D1D1D5D15155500003F00003F00003F00003F00003F00003F0000
              3F00003F00003F00003F00003F00003F00003F0203410811490917440D20420F
              26430B2C4B082A4B03244104203C02193201152E030E340A0B4500003F00003F
              00003F00003F00003F00003F000040010C97000C9E000C9E000C9E000C9E000C
              9E000C9E020D9D222CAD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C
              3ACE2C3ACC1015461F29972B39CC2C3ACE2C3ACE2C3ACE2C3ACE2C3ACD303ECC
              222AB61A22951B22951B22951B2294ADB4D7DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEE1E9F02937C42C3ACE2C3ACE2C3ACE2C3ACE2C3ACE141B5C18194E
              1D1D5D1D1D5D1D1D5D1D1D5D1D1D5D1D1D5D1D1D5D1D1D5D0A0A4900003F0000
              3F00003F00003F00003F00003F01024000003F00003F0305430619510C27550C
              2441061B3206223A05263D031F35001628001122001324001121000F1E00111F
              021227080C3B00003F00003F00003F00003F00003F00003F00003F010B8E000C
              9E000C9E000C9E000C9E000C9E000C9E000C9E0F17982C3ACD2C3ACE2C3ACE2C
              3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2A37C20D0F352633B72B39CD2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACD2D39C81C23A21B22951B22951B22952E359AE0ED
              F0DAEAEEDAEAEEDAEAEEDAEAEE00DAEAEED2D9EA2A37CA2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE0D10361D1D5D1D1D5D1D1D5D1D1D5D1D1D5D1D1D5D1D1D5D1D1D
              5D1D1D5D19195901014000003F00003F070A461C2B5C30527D1F416A1126580B
              2E5D083C63023555022B44012136011D31011829001423000F1D000D1B000B1A
              000E1F011122051526010B180A182703052605054200003F00003F00003F0000
              3F00003F00003F010983000C9E000C9E000C9E000C9E000C9E000C9E000C9E03
              0D9B232EB62C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE
              2531A81015422B39CB2C3ACE2C3ACE2C3ACE2C3ACE2B39CD2F3DCE2931BE1B22
              961B22951B22951A2394ADB6D6DAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEC1C8E5
              2C39CD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACD0B0C251D1D5D1D1D5D1D1D5D1D1D
              5D1D1D5D1D1D5D1D1D5D1D1D5D1D1D5D1D1D5D0F0F4E00003F0B0E494D698C81
              9EB34F697D1A2F43071F35062B4301213601192C011524001220000F1D000E1C
              000C1B000C1D000D1E011225051A2D04122400051200010A0307120103160708
              3E00003F00003F00003F00003F00003F00003F010878000C9E000C9E000C9E00
              0C9E000C9E000C9E000C9E000C9E131B9C2C3ACD2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE1B23791A21722B39CD2C3ACE2C3ACE2C3A
              CE2C3ACE2B39CD2E3AC91D25A91B22951B22951B2295333B9AE2EEF1DAEAEEDA
              EAEEDAEAEE00DAEAEEADB4DD2C3ACD2C3ACE2C3ACE2C3ACE2C3ACE2B38C60A0A
              201D1D5D1D1D5D1D1D5D1D1D5D1D1D5D1D1D5D1D1D5D1D1D5D1D1D5D1D1D5D1C
              1C5C080A461829592C445858687325313E0B1926040F1D04101E060F1B050F1C
              00091B000C1B000E1E001023010F2502102800102604152B031022040C180002
              0D00000A00010B01051106073300003F00013200063101063B00013F00003F02
              076A000C9E000C9E000C9E000C9E000C9E000C9E000C9E000C9E040E9A232FB8
              2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2B3ACC1014
              432430AA2B39CD2C3ACE2C3ACE2C3ACE2C3ACE2D3CCD2B35C41A21981B22951B
              22951A2294C5CEE3DAEAEEDAEAEEDAEAEE00DAEAEEA4AADA2C3ACD2C3ACE2C3A
              CE2C3ACE2C3ACE2936BB0C0C251D1D5D1D1D5D1D1D5D1D1D5D1D1D5D1D1D5D1D
              1D5D1D1D5D1E1E5D20225D22386A194770113A5B091B2F253241162032050E1E
              040A1A03061100030E010819000B21000F25000E23000F26010D2705122B0918
              2B050D1C01061100050F00050E00010B00000B00030C01032105073C040E2F04
              13321E35561A2C5306084102065E000C9E000C9E000C9E000C9E000C9E000C9E
              000C9E000C9E000C9E131C9E2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3A
              CE2C3ACE2C3ACE2C3ACE2735B70E113B2C39CA2C3ACE2C3ACE2C3ACE2C3ACE2B
              39CD303DCC1F25AB1B22951B22951B22956068B2E2EEF1DAEAEEDAEAEE00DAEA
              EE999FD72C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2935B80C0C261D1D5D1D1D5D1D
              1D5D1D1D5D1D1D5D1D1D5D1F205E20245D101A4F0823560E3C6707254B010F2F
              000925000722000720000720010A24000A24000B26000D29000D28010E270213
              2C071A310A1A2D070F1D00060E00040D00061000060F00050E00010B00000A00
              020B000316131D46263D602A4263576D8A72889D41527303054D010C9F000C9E
              000C9E000C9E000C9E000C9E000C9E000C9E000C9E050E992633BE2C3ACE2C3A
              CE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE1C247D1A21742B
              39CD2C3ACE2C3ACE2C3ACE2C3ACE2D3BCE2B35C41B22991B22951B2295212997
              E4EBF2DAEAEEDAEAEE00DAEAEE9CA2D92C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2A
              36BC0B0C241D1D5D1D1D5D1D1D5D1D1D5D1D1E5D181A53090D3D040E37081C45
              0F3260031B47000C34000C33000D34000C33000D33000B31000C31000D33000E
              320212310617320A1C3309192B040D1803090F020A0F00070C01060B00060D00
              071000060F00030D00010B00000800041111193D233C6222385E5F6F81D3E0E6
              5E7087040840020D97000C9E000C9E000C9E000C9E000C9E000C9E000C9E000C
              9E000D9E151FA42C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C
              3ACE2C3ACE2B3ACC0E123D2834B72C3ACE2C3ACE2C3ACE2C3ACE2B39CD313ECD
              1F27AE1B22941B22951A2295B2B9D9DDEBEFDAEAEE00DAEAEEADB3DF2C3ACD2C
              3ACE2C3ACE2C3ACE2C3ACE2B39C60A0A201D1D5D1D1D5D1D1D5D18195A0B124B
              030D3D071239070F28060E33051545010F3B010F38010F370010380010380115
              3B00163A01173A051C3E061E3B091E35071220071017060D1208101508101507
              0F14020A0F01080D00060C00060F00071000050F00020C00000A00010C040A26
              1F36611E3763293E5C6B7E8F4D5F7902043E020B84000C9E000C9E000C9E000C
              9E010D9E010D9E000C9E000C9E000C9E060F962735C22C3ACE2C3ACE2C3ACE2C
              3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2531A812164D2C39CE2C3ACE
              2C3ACE2C3ACE2C39CE2D3BCD2B36C61A219A1B22951B2295696FB8E3EFF2DAEA
              EE00DAEAEEC0C9E52C3ACD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACC0B0B231D1D5D
              1A1A5B0D125C0611561122560B153404092104103B0114430118420117380015
              32001834011E3C01213E04244007243D061F3407192807131C0710160D141812
              191E0D151A0B1217091015081015060D1301090E00060C00060F00071000060F
              02071000010A000009000517132654203F7A2843752C476F15225000003F040A
              6F000C9E000C9E0E21A11D3A9B1C3E951A3E98122C97061498000C9E010D9F1A
              23A72C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACD141954232EA42C3ACE2C3ACE2C3ACE2C3ACE2B39CD2F3CCC1E25AA1B22
              941B2295252D9AE5EFF3DAEAEE00DAEAEED0D9EB2C3ACC2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE101238161A5E061362081C690E1E56060E260718320416390218
              38092B48032940012133012031022337032437052232071B270A172008111812
              191E171E23171F241B23281820250F161B0C13180D14190A1116060D12030A0F
              00080D01080F02071101071000050E00020C00000900020E070D2B0E1B58192E
              6D121E5B00013F00003F020659010C9F1B33A426559C123D9119449A1A469A1F
              4A9D15388B0C1E8805119D0A13982D3CCA2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2734B51015472B39CD2C3ACE2C3ACE2C3A
              CE2C3ACE2E3CCE2933C11A2197192093192193CAD3E5DAEAEE00DAEAEEE3EBF2
              3341CD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2234B4092780062F7E0737770735
              660B436E0B426A002036011E2F04273704273706233306212E051B29071A2513
              202920292F2A32373D464A474F542D343920272C1B21261C2226161B1F10151B
              0C13180A1116070E13070E13040B10040B1002091000061000050E00040E0002
              0B0001090D132E05064300003F00003F00003F00003F01024412259B27559616
              418F18459B1B489F1E4A9E1E4B9E123E8C1B428B11248B04109E2B38B52C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE1317
              502632AE2C3ACE2C3ACE2C3ACE2C3ACE2B39CD3240CC1E27A31B22951B229599
              A2CFDAEAEE00DAEAEEE8F1F44753CD2C3ACE2C3ACE2C3ACE2C3ACE2A3AC81A42
              930B4E8B085084044D7A054D7705456B053C590932440D2C3A0B24310C1E2911
              1F281C262D2D373E384148575F654E565C4A52574A52574951563A4247394045
              2A3136232A2B1A212213191E0E14190C1318080F14070E13050C11040B100108
              0F00071000050F00050F00040D02040F1D2A4D1118450B0D3F090B4600003F00
              003F0101402C509513418516428A1F4B9B1D4C9D1F4C9E1E4B9A1C4A9415448D
              29539E0C1E901622A12D3BCC2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3A
              CE2C3ACE2C3ACE2C3ACE2530A6141A592C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C
              3ACC212CB51B22951B2295565EADDAEAEE00DAEAEEE2EEF1656FD22C3ACE2C3A
              CE2C3ACE2C3ACE2437A71F56771B678A13597D0C44640E3B540C2E440C253614
              27351B293324333B323E44343D42444C51565D635C646961696E626A6F636B70
              5F676C535B604A52573E464B343C4130373C252C311F262B131A1F0E151A0A11
              16091015070F14040B12020912020912020812000610000411070F2302061E00
              031A000319090C271214450102400E16552B5A94184788134184173B7F3E70A7
              2150971D499315377B2454951F4F95254A9B0B1A9B2C3ABF2C3ACE2C3ACE2C3A
              CE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE0E123B2B38C62C
              3ACE2C3ACE2C3ACE2C3ACE2C3ACE2A35C21A21971B2295202994DAEAEE00DAEA
              EEDDEBEF939CD92C3ACE2C3ACE2C3ACE2C3ACE2535AA1224320C202C12242F1F
              2D3728333B2D3940323E453D474C485156434C50474F554F565C555D62596166
              5E666B5D656A626A6F61696E5B63684B5257474E5341484D363D42343C412B33
              38222A2F1A2126141B2010181D0D151A0A1217070F16050C15060D160308120A
              122109152B021029060D260C173403082100041B01031C1011401A2B6621528A
              1544841746870F27683F63991D488C224D9710205F3967A22B5BA026569E1A33
              93202EAB2D3BCD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C
              3ACE2C3ACE1B23781F288B2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE3744CC1A219E
              1B22951B2394D6D9EA00DAEAEEDAEAEEC7CDE82C3ACD2C3ACE2C3ACE2C3ACE2B
              3AC821314F2D3B41303A3F2E3B3F3B454A394146373F443B4348484F543F474C
              4D5458454D524C53584E565B545C615B63685961665D656A555E634B5358474E
              5340474C383F44363D422F373C252D33222A301C242A131A21121C230E171F0C
              151D0A121B12202B3A596B1529400A1D350C1E353850691D34502B3D5502051E
              070B2800011931537A1E548A164685154685173D811630721A3F8C183B8F1935
              7B1330762F5EA83262AB2A55A00A1A932F3DC42C3ACE2C3ACE2C3ACE2C3ACE2C
              3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2935BA12164B2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE3846CF2127A71B22951B2295C1C5E200DAEAEEDAEAEEE5EDF333
              3FC92C3ACE2C3ACE2C3ACE2C3ACE26357F29383F2A373B27353A2F3B3E374041
              3E48493740423E474A3F484B434B4D454C514C54594D5459525A5F5860655A62
              675860655B6368525A5F464D52464D52394045373E4331393E2A3238202A331C
              262F16202A121E2714202B0E1A254C6A747CB4C14072870A1E350B1E3613273B
              61748328394B1C2C3F0D1334050744050A233E6A8F164B831444831042801949
              8B1B47910F2A861C459B204C9C214C9C2D5AAA2F5EA82654A11634951F2DB02C
              3ACD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE
              0F123B2C3ACB2C3ACE2C3ACE2C3ACE2C3ACE3341CE2D33B31B22941B2295A9AC
              D500DAEAEEDAEAEEE7F1F45A63CF2C3ACE2C3ACE2C3ACE2C3ACE2938B3212F3D
              263237273237263034313B3C333D3D3D46483F474C3E464A41494D424A4F4A52
              57525A5F525A5F60686D596167575F655860665860654F575C444B513E464C37
              3E44333A3F2A3237242F351E293219242D11212B48626E8BB9C59BD3DF79B8C7
              2D58700B203719344B34596CA1B6BE6470781B2C3E141C37080B4A090F2A335C
              8213467D1341800E407D1849891D4C932653A4204DA01A46961E4B992D5AA92A
              58A52A5BA21B439711219D3342C62C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE1B21612430A62C3ACE2C3ACE2C3ACE2C3ACE2F3E
              CD333BBF1B22951B22959298CB00DAEAEEDAEAEEDEECF0A6ACE22C3ACE2C3ACE
              2C3ACE2C3ACE2C3ACD1D2D5A212E33232E33222C322A34392D383C2F393D3B43
              483D454A3D454A40484D474F54485055525A5F535A61596067596067575E6554
              5B624F565D4C535A434A51384044343C4130373D29323A283640516B7598C1CD
              AADCE8A3D8E49BD3DF70B1C1234963071C37203B556E97AA6D8A9A8B9EA72233
              4703071C060B2905081E2B527B164982173E794B7FAD174B84124287214E9E1E
              4B9D1A45911542892B5BA62144903D68A6214F970E25972935B22C3ACD2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE27318C1B23792C3A
              CE2C3ACE2C3ACE2C3ACE2D3BCD3741C71B21961B22957D82C100DAEAEEDAEAEE
              DAEAEEDFE5F12F3CCB2C3ACE2C3ACE2C3ACE2C3ACE253494222D351F292E2530
              34252F34293338212B30373F44373F443E4749384045444C514C5459525A6051
              585F565D64585F66555C63535A61464D54444B523B434C3D454D373F4734464F
              698690A7D1DEB4E5F4B0E1EFADDFEBA7DAE699D2DD6AAABB18395302122B0412
              2A0C223B0F233A09192D030C2200071C0004180F162B3E6E96164B8113326934
              557E255B901545851D4A93163C830E2B67102F64274E8D1C3A860E2868255198
              1C3F9A101CA13442CA2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3A
              CE2C3ACE2F3BB01319552C3ACE2C3ACE2C3ACE2C3ACE2C3ACD353ECA1D229A1B
              22956A70B800DAEAEEDAEAEEDAEAEEE2EEF16770D52C3ACE2C3ACE2C3ACE2C3A
              CE2C3AC31E2A3F1E272C222B30212C31263035242D322A323730383D343D403B
              434842494E464E544950564F565C4F5760555D6650585D454D52485055465057
              414E59576E778AABB4B5E2EEBAECFCB6E7F9B2E6F7B1E3F2ACDFEBA3D8E499D2
              DE66A6B612314C0410283A5F79182E46010E23030F23061227020A1E00061A08
              0E2533618A1544791D467C132D5C1B4B811C4D88163D75010A2B122444294166
              1D3C6B24458B08195E29509A2B56A80D1E9E2E3BB92C3ACE2C3ACE2C3ACE2C3A
              CE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE3646C70F133F2C3ACE2C3ACE2C3ACE2C
              3ACE2C3ACD3E4ACD20259D1B22956066B400DAEAEEDAEAEEDAEAEEDAEAEEC2C8
              E82C3ACD2C3ACE2C3ACE2C3ACE2C3ACE2634741D262D243035212E32212D3129
              343929333830383D2B34393740453D454A41484F41494F474E554A525A4D555E
              4E5960556067606F7880989EA9D1D8C0F0FABCEDFAB9EBFCB7EBFDB6EAFCB2E5
              F5B0E1EFADDFEBA8DCE79CD4DF68AABB11324C08152C24516A294B6300091E04
              132904132900061B00061A03071D2E577D1C4C7F1B487E1641771A487D25528B
              103260041634223859263D621F3B6521427D2D53A53561B42C57AB11259D1925
              A72F3DCB2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE3746CC10
              143C2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE3E4BD12328A21B22955258B100DAEA
              EEDAEAEEDAEAEEDAEAEEE4EEF2424EC92C3ACE2C3ACE2C3ACE2C3ACE2A37A71F
              2935202A32202B321C282E212D3329353B2834392B343A30393E313A403D474D
              3B484D404E5648575F61727A88A1A6ADCDD0CAF4F5C9F9FCC5F5FCC1F3FCBDEF
              FBB8EDFCB7EBFDB7EBFDB2E5F8B2E3F3B0E3F2ACE3F1A7E0ED7AB9C918395301
              0D241F3D550F284100091E081C33071930010D2207162C172F493E7098205180
              18467B1D4A811F4D84234F85173A692941625368862A3D5C213A631E3E79284F
              A22D58AC305CAF1830A2010D9F303DBD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C
              3ACE2C3ACE2C3ACE313FCA10153D2C3ACD2C3ACE2C3ACE2C3ACE2C3ACE3B49D1
              242CA61B2295494FAF00DAEAEEDAEAEEDAEAEEDAEAEEDEECF09CA4DE2C3ACE2C
              3ACE2C3ACE2C3ACE2C3BCB20294F1E2A32202B34222D36202C35222E3626333A
              2131372E3C442F3E453D4A535B6E75809CA1ADCFD1CDF6F6D0FDFCCFFDFDCEFC
              FCCDFAFBCEFCFCC6F8FCC1F4FDB9EEFBB7EBFDB6ECFCB5E8FCB2E4F4B2E7F8B0
              E8F9AAE2F283C2D11D425C0111280411270410270010270D263D0B253C051A31
              071B3303183329527A21588618477C214F841E4F84245488204A7B38506CA6B9
              C78B97A12B416228457E20489B2651A7345FB4203DA3000D9E1824A72D3ACC2C
              3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE3240CB0E123A2D3ACD2C3ACE
              2C3ACE2C3ACE2C3ACE3A47D02931AB1B2295474DAD00DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEE2EAF23542C92C3ACE2C3ACE2C3ACE2C3ACE2733A01625381B2B37
              1A2B351A2A331E303931464E48646B728D9594AEB7BBDDE7CBF5FACCFBFDCDFB
              FCCEFDFCCFFDFCCFFDFDD0FDFDCFFDFDCEFDFCC9F9FDC3F6FCBEF2FCB8EDFBB6
              EEFBB5ECFBB5EAFCB3EAFCB0E8F9A9E2F195D1DE2E556E01132B00132A001128
              01142B14304817365008253D112D4611314C2656803973A018497D1F4D811E4F
              831D4E842F61913C587A8497ABA7B8C43851712B4981214B9E2451A62C56B029
              46A904109F020E9F2B39BD2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE
              3241CE1417402D3ACC2C3ACE2C3ACE2C3ACE2C3ACE3B48D22B32B01B22956269
              B800DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EEF18389D42C3ACE2C3ACE2C3ACE
              2C3ACE2C3ACE3D54978AB2C093B9C4A3CAD6B5DEEABFE9F5C3EFFBC3F1FDC2EF
              FCC5EFFCC9F4FBCCFAFDCDFBFDCEFCFCD0FEFDD0FEFED1FEFDCFFDFDCFFDFCCA
              FBFCC4F7FCC2F5FDBBF0FCB8EEFBB6EEFBB5EBFCB3E9FBB1E8FAAAE3F1A2DBE8
              3D6A8001153000163000163001183315355228506F1A43611D45642148683162
              8939749E1E4F7F1F4C7E3C6E9B2359873E69962C54801A3257283F602A49761E
              40871D40924B7CB8305CAE2843A80814A1000C9E1B28AA2D3BCD2C3ACE2C3ACE
              2C3ACE2C3ACE2C3ACE2C3ACE2F3DCE0F133D2C3ACD2C3ACE2C3ACE2C3ACE2C3A
              CE424ED62B31B01B22957A80C100DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DEE3EF3744C82C3ACE2C3ACE2C3ACE2C3ACD26365B7EA9B5A3CFDAAAD8E3B5E2
              EFBCE9F7C0EEFBC4EFFDC3EEFBC4EEFCC6F0FACBF9FCCEFCFCCEFCFCD0FEFDD0
              FEFED0FEFDCFFDFDCFFDFDCDFCFBC8FAFCC3F7FBBFF2FCBBEEFCB9EDFBB6EDFB
              B5EBFCB3E8FBACE4F5A7DFEE5B889D051D38001A35001833021D381337573666
              88396E8F2651760C284A294E6F3870981748771F4B7E32628E3A6F991E4A7F2D
              5A8E2550821F487B224B88224791183584213B7D284E9B2948A70D1BA1000C9E
              0511A0313FC62C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACD0E123D2C3A
              CE2C3ACE2C3ACE2C3ACE2D3BCE515BDF2A30B21B22959599CD00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEE2EEF1959BDB2C3ACD2C3ACE2C3ACE3141C31B27
              374A65709ECCD7A6D4DEB2E0EDB9E7F4BFECFAC3F0FDC2F0FDC1EEFBC5F0FBCA
              F7FCCDFBFECEFCFCCFFDFCCFFDFDD0FEFED0FEFDCFFDFDD0FDFDCCFCFCC5F8FC
              C1F4FDBDF1FCBAEEFCB6EFFBB6EEFBB4EAFCAEE6F7A9E2F378A7B919314D061F
              3B2F557119375310304F325F82578AAA22496F17385E1E375B5289AC336F991B
              4B7C1D45781F4D7D1E4A7F234F841945780E386E1E48841E468B1F449410226F
              1A3390294CB10C1AA1000C9E000C9E1C29AF2C3ACE2C3ACE2C3ACE2C3ACE2C3A
              CE2C3ACE2D3BCA0F123F2C3ACE2C3ACE2C3ACE2C3ACE2D3BCF565FE4262DAF1B
              2294ABAED500DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEEDF2F64A54
              CC2C3ACE2C3ACE394AB209141F20364396C4D0A4D1DBADDAE7B6E4F1BDEBF8C2
              F0FDC3F1FEC2F0FDC5F0FBC9F5FBCCFAFDCEFCFCCFFDFCCFFDFDD0FEFED1FEFD
              D0FEFDCFFDFDCDFCFCC6F9FCC2F6FCC0F4FCBCF3FCB7F0FBB6EFFBB4ECFCAFE7
              F8ACE4F58FC3D52B4E680B223D40718E37617F071F3F1F44652F56791D3B5E28
              4F7604183F335F86487FA31F52831A447A1541751B487A1A467B144075144075
              1E49811F48881D44902247A12547AC2746AF030F9F000C9E000C9E0512A12A38
              C42C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2833B21419562C3ACE2C3ACE2C3ACE2C
              3ACE303DCF5E65E72329A91A2394D3D5E900DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEE2EEF1C8CFEA2E3CCC2C3ACE394AA3030E171D39495C899C9E
              CED9A7D7E1B3E1EEBBE9F6C1EFFCC3F1FEC2F0FDC2EFFBC7F3FBCCF9FDCEFDFC
              CFFDFCCFFDFCD0FEFED1FFFCD0FEFCCFFDFDCFFDFCCAFBFCC6F9FCC5F9FCC1F6
              FBB9F1FBB6EEFBB5ECFDB3EAFBAEE6F7A7DFEF4A758E051D3B426E8C24496A09
              2346122D4E143154365F826B97B24565800E1B3F4470952653811E4A7E1D497C
              1D4A7B1D497D1D497E1844791E49801D4985204B8E214B9B2148A32646AA030F
              9F000C9E000C9E000C9E131FAA2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE1E268B1C
              247C2C3ACE2C3ACE2C3ACE2C3ACE3441D15D65E72127A4272F98DAEAEE00DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EEF17F87D92C3ACD35
              4692010C1511233026485F9CC9D5A7D4E0B2E0EDB9E7F4C0EEFBC2F0FDC4EFFC
              C2EEFBC5EFFBCAF7FBCEFCFCCFFDFCCFFDFDD0FEFDD1FEFCD1FEFCCFFDFDCFFD
              FDCFFDFCCBFCFCC7FCFDC4F9FCBAF2FBB5EDF9B5EDFBB4ECFCAEE6F7ACE4F578
              A8BD1E3B571837570D264A0C23480E264711284A426688456E947198B4051032
              32486744789F1D4B7C1D4A7C184576315E8C42749D19467A1D49813E6BA7366B
              9E1E4E92214D9A2F55AD020E9E000C9E000C9E000C9E050F9D2733C32C3ACE2C
              3ACE2C3ACE2C3ACE151B5C2632AA2C3ACE2C3ACE2C3ACE2C3ACE3844D3565DE5
              1D249E666DB6DAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEEBEFF64753CC374788010B14010B1406111D7095A2A3D2DBAFDDE8
              B7E5F2BCEAF7C1EFFCC3F0FDC1EEFBC5EFFCC9F5FCCCFAFDCFFDFCCFFDFDD1FE
              FCD1FFFBD1FFFCD1FEFDD0FEFDCFFDFDCDFCFBCAFCFCC5F9FCBCF2FCB6EEFBB5
              EDFAB4EDFAB2EAFAADE5F696CDDD3B66820E2D4E122B500D244A0D25470E2747
              0A2344122B4D071432061435172E52577E9D32638E1D4A7C154273477299699C
              BA1D4A7B1D497E3F68A63E70A0204F8B2652932947A3000C9E000C9E000C9E00
              0C9E000C9E1721AE2C3ACE2C3ACE2C3ACE2C3ACE0E113A2C39CC2C3ACE2C3ACE
              2C3ACE2C3ACE3844D44549DB1B2399A8AFD5DAEAEE00DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE3EFF2CFD6EB45567F010A13020A14
              020A14324450A1CED9AAD7E3B5E2EFBBE9F6C2F0FDC3F1FEC2F0FDC4EFFCC7F4
              FACCFAFDCDFBFDCFFDFDD1FEFCD1FFFBD0FEFAD1FFFBD1FFFBD0FDFCCFFDFCCD
              FDFCC6FBFCBDF1F8B9F0FCB7F0FBB5EEFAB3ECFBB0E9F9AEE5F66C9FB51C3654
              122B4F0F274C284567375B790923430D25441728422F4660364F65436483477A
              A02152811845772C558036628A1844751B4779355F8E113364234F8428538B13
              2899000C9E000C9E000C9E000C9E000C9E06109E2B39C92C3ACE2C3ACE2733B1
              1318532C3ACE2C3ACE2C3ACE2C3ACE2C3ACE3F49D93638CE1E2795DEE5EEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              E7F1F494A0AA030B15020A14020A14050F197DA9B5A6D5DEAFDEEAB9E7F4C0EE
              FBC3F1FEC3F1FEC5F1FCC8F5FACCF8FDCDFBFDCFFDFDD1FEFCD3FEFCD3FEFBD4
              FDFCD2FDFBD3FEFDD1FEFDD0FEFDCAFCFCC3F7FCBBF1FCB8F1FCB6EFFBB4ECFC
              B2EAFAB0E7F99ACFE150758C10294D0B254F325B834371930E294D172F4C4157
              6B6375833A4C5D324154779AB530659115477A194879113E6E1643751B487B20
              4E831742761A477A2A538C08169D000C9E000C9E000C9E000C9E000C9E010D9F
              2836BB2C3ACE2C3ACE181F6B222B982C3ACE2C3ACE2C3ACE2C3ACE2C3ACE4049
              DA2A2DB95C63B0E2EEF1DAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDEECF0C2CBD10C172603111E0F1C2A0A16213E5A
              669ED1DBAADBE5B6E4F1BDEAF8C2F0FDC3F1FEC6F2FCCBF7FCCBF9FDCDFBFDD0
              FDFCD3FEFDD5FDFDD5FDFDD5FDFDD5FDFDD5FDFDD1FEFBD0FDFDCBFDFDC3F7FD
              BEF1FCB9F0FCB6EEFBB5EDFBB2EBFAB0E8F9AFE5F788BACC2B4B6B0A27552547
              761E446D122E58405D79738E9DD4DBDD55616D46586EEEF3F489AAC12B5F8C12
              4374184A7A184A7A1B4B7F184D8119477C1F4E7E29469C010D9F000C9E000C9E
              000C9E000C9E000C9E000C9E111FA92C3ACC2C3ACB0D11372C3ACB2C3ACE2C3A
              CE2C3ACE2C3ACE2C3ACE3E45DB2025A5C6CDE2DAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDDE6EA2A43
              580820383A5A774161770B18248BBAC6A7D8E2B2E0EDB9E8F6BFEFFCC2F2FDC4
              F5FBC4F4FAC4F4FBCCFBFCD0FDFDD4FDFDD4FDFDD6FDFDD8FEFED8FEFED7FEFD
              D5FDFDD1FEFCCDFDFCC5F9FCC0F4FCBCF0FDB8F0FCB6EEFBB4ECFAB1E9FAAEE6
              F7A8E0F078A8BD15335E122D630E285F15306344658750708992A6B5798A974A
              6B86C8D4DCE1EDF198B7C82C618B1A4F7D164879174A7E164A7C1F507D567896
              BBC5E0141EA4000C9E000C9E000C9E000C9E000C9E000C9E010D9F2A39BD1F29
              8F19206F2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE2C3ACE393ED2424AA9E2EEF1DA
              EAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEE6F1F36278890E2843122A59304D6C040F19577984A2D4DEAE
              DDE9B4E5F3BBECF9C3F5FCC4F7FBC3F5FAC5F5FACBF9FCD0FDFDD2FEFDD4FDFD
              D7FEFED9FEFDDAFEFCDAFEFCD8FEFED5FEFDCFFDFCC9FAFCC2F5FCBFF2FDB7ED
              F8B7EFFBB6EDFBB4EAFCB1E9FAADE5F6A6DFEE699BB312345F0E2B620E2A5C12
              315E15355E0D2A502348694F8AAA85A2B6E2EEF1DAEAEEB1C9D44D7E9E3C6C8F
              325D80456B8886A2B3DDE5E9ECF4F6CFD5E9151FA3000C9E000C9E000C9E000C
              9E000C9E000C9E1622AA0E123C2A37C02C3ACE2C3ACE2C3ACE2C3ACE2C3ACE30
              3CD03036C3B3BADADAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDEECF0B6C2CA14273906123110
              1E36010A131C2D3898CBD6A8D9E4B1E2EFB7E8F7C1F4FCC5F8FCC5F9FBC8F8FC
              CBF9FDD0FDFCD3FEFDD5FDFDD7FEFDD9FEFDD9FDFDDAFEFCDAFEFCD8FEFED2FE
              FDCCFBFDC5F8FCC1F5FCBDF2FCBBF0FDB6EEFBB4EBFCB1EAFAB0E7F9AEE4F6A5
              DDEC70A8BE274F760A27540B2A530B28512C55775AA3BE5096B553819FE0EAEE
              DDEBEFE2EEF2E6F0F3D1E2E7CEDBE2DAE6EAE2EEF1DAEAEEDAEAEEE2EEF1DCE1
              EE4850B5010C9E000C9E000C9E000C9E000C9E2F389E31397A2C3ACE2C3ACE2C
              3ACE2C3ACE2C3ACE2B39CD333ED25358C3E1EDF0DAEAEEDAEAEEDAEAEE00DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEE4ECEF485967010A15010A12010A13030D176C95A2A2D5E1ADDFEBB6E6F5
              BCEDFAC4F8FDC6FAFCC7F9FCCBFAFDCFFCFCD1FEFDD5FEFDD7FDFED8FEFDDAFE
              FEDAFEFDDAFEFCD8FEFED4FEFDCEFCFCC8F9FBC3F6FCC0F3FDBBF1FDB6EFFBB5
              ECFCB3EBFBB0E7F8ACE2F5AAE2F1A5DEEF9AD5E682BBCF639CB467A9BF66B0C7
              60ADC656A1BE4F88A7A9BDC9E3EFF2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEE2EEF1CCD4E88C93D0646BC17E86CABEC7E3E1
              EEF1A4ADE02D3BCD2C3ACE2C3ACE2C3ACE2C3ACE2B39CD343ECECDD2EBDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EFF1B3BFC71A232E000A13000A120C1D30
              4364789BCFDBAADBE8B4E5F2B6EAF8C2F6FDC6F9FCC5F7FBC6F5FBCBF8FCCFFD
              FDD2FEFCD7FEFED8FEFED9FDFDD9FDFDDAFEFCDAFEFCD7FEFDCFFDFCCBFAFDC6
              F9FCC2F6FCBDF3FBB8F0FCB5EDFBB4ECFBB1E9FBAEE6F7ACE4F4A7DFF0A1DBEB
              9BDCEA88CEDD77C0D16BB4CA63AFC859A7C34F92B16289A4E6F0F3DAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEE6ECF34250CE2C3ACE2C3ACE2C3ACE2B3ACE
              2D3BCC7B81D8E2EEF1DAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEEDF3F4
              80929C050E17010C152A4A6C51809F81AFBDA6D7E4B1E2EFB6E7F5C0F2FBC4F7
              FBC4F8FBC5F8FACBF8FDCFFCFDD2FEFCD8FEFED9FEFDDAFEFEDAFEFEDAFEFCDA
              FEFCD9FEFDD4FEFDCDFBFCC8F8FBC4F8FCC0F4FCB9F0FBB6EEFBB5EDFBB3ECFB
              B0E8F9ACE4F5A9E1F1A4DCED9ADAE88BCEDD79C4D46DB7CB64AEC65FABC4539D
              BA4E83A2CBD8DFDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE3EFF28B95DB
              2D3ACD2C3ACE2C3ACE2C39CC4752D0E6EBF4DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEE3EFF2DAE4E74D5C68020913213D6029547B476B849FD2
              DEADDEEBB5E5F4BCEDFAC4F7FCC6FAFCC6F9FBCAF8FCCFFCFCD1FEFCD7FEFEDA
              FEFCDAFEFEDAFEFED9FDFCD9FDFCD9FDFCD7FEFDD0FDFCCCFBFCC8FBFDC3F6FC
              BBF2FBB7F0FBB5EEFBB4EDFBB1E9FAAEE6F7AAE3F3A6DEEF9CDAE98DD1DF80C6
              D773BCCF68B2C761AEC656A4C04E8BAB82A0B5E2EFF1DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAE1EE3340CA2C3ACE2C3ACE313ECDBFC6EBE2EEF1DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EFF1CAD5D93542
              4D091628142C530B1B2E8CBCC8A8DAE6B2E3F1B6E8F9C1F5FDC6FAFDC6FAFCCB
              F9FDCEFCFCD1FEFDD6FEFDDAFEFDDAFEFEDAFEFEDBFDFEDBFDFDDAFEFDDAFEFE
              D3FEFDCFFDFCCCFDFDC5F9FCBFF4FCB9F2FCB7F0FCB5EEFCB2EBFBAFE7F8ACE4
              F5A8E0EF9FDBEB93D4E485CAD976C1D26BB3C963ADC65CAAC45197B65381A0E2
              EBEFDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EEF16E78D12C3ACD2D3A
              CD6C76D7E2EEF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEE3EFF2D3DBDF41505D07101A030B1451707BA0D3DFAEE0ECB3
              E7F6BDF0FBC4F9FDC5FBFDCAFCFDCCFDFCCDFDFCD2FDFCD9FDFCDAFEFEDBFEFD
              DFFEFCE0FEFBE0FFFCDEFDFDD7FDFDD0FDFDCEFDFCC7FAFCC1F6FCBBF3FCB8F2
              FCB6EFFBB3EBFBB1E9FAAFE5F7A9E0F0A4DDED9BD9E88CD0DE7EC4D571BACD67
              B2C960ADC655A0BD4C86A6ABBFCBDEECF0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEED7DFF03745CC3B48CDDCE4F2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EFF2E9F0F2A7B0B444
              4E5718283396C8D5A8DBE7B2E5F2BAEDFCC0F8FCBFFDFDC4FCFDC7FCFDCAFCFC
              CFFDFDD5FEFCD9FDFDDAFEFDE1FEFBE2FFFCE2FEFCE1FEFCDCFDFCD4FDFDCEFD
              FBC9FCFCC4F9FCBEF5FCB9F2FCB7F0FCB4ECFAB2EAFBB0E6F9ACE0F3A6DEEEA0
              DAEB93D4E282C9D877C1D26BB4C863AFC75BA7C34F93B1668BA4E5F0F2DAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EEF1A9B4DFBCC5E8E2EEF1DAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDEECF0E7F1F4DFE4E7A4C7D2A3D6E2AEE2EFB6EAF9BFF5FC
              BFFCFDC3FBFCC6FBFDC9FCFCCFFEFDD4FEFCD8FDFDDAFEFDDFFEFBE4FEFCE4FD
              FBE3FDFBE1FEFCD9FDFDD0FDFCCDFDFCC7FBFCC2F7FCB9EFF7B9F1FCB6EEFBB3
              EBFCB1E9FAADE4F6A8E0F1A3DCED98D6E587CDDB7AC4D470B9CD65B1C85EABC5
              519CBA4F82A2CBD8E0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE3EFF2D5E4E9
              9BCEDBAADDE9B3E7F6B8F1FBC1FBFDC2FAFDC7FBFDCCFDFCCFFEFCD2FEFDD8FE
              FDDAFEFCDCFEFCE4FEFCE7FEFCE7FEFCE3FEFCDEFEFCD6FEFDD0FEFDCBFDFDC5
              F9FCC1F5FABDF3FCB9EFFCB4ECFBB2EAFBAEE6F7AAE2F3A6DEEF9EDAEA8ED2DE
              7EC7D772BBCF67B1C661ADC558A5C14D8BAB82A0B6E2EFF2DAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEE6F0F39EC7D4A6D8E4ADE2F2B3ECFABEF9FDC1FCFDC5FC
              FDC8FDFCC9FDFCCFFDFCD6FEFDD8FEFED9FEFEE2FEFCE9FEFDEAFEFDE7FEFCE0
              FEFBDAFEFDD1FDFCCEFDFCC9FCFCC4F8FDBEF3FCB7EEFBB4EDFAB3ECFBB0E8F9
              ACE4F5A8E0F1A4DCED95D5E387CBDA78C0D26DB7CA65B0C85DAAC45296B55381
              A0E0EBEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDEECF0CADDE3A6D4E1AEE0
              EEB0E8F9B8F3FCBFFCFDC0FBFDC6FCFEC8FDFDCEFDFCD2FEFCD6FEFED9FEFDE0
              FEFCEAFEFCECFFFCEAFEFDE3FFFCDCFEFCD5FEFDCFFDFCCDFDFCC7FBFEC2F7FC
              B8F0FBB4EDFAB4EDFAB2EBFBAFE7F8AAE2F3A6DEEF9AD6E68ACFDC7DC6D572BC
              CF68B1C861ADC655A0BE4D86A6AEC1CEDEECF0DAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEE8F1F3ABD2DEAEDEEAAEE4F4B4EDFBBDFAFCC0FBFCC6FBFDC8FCFDCE
              FDFCD3FEFDD6FEFDD8FDFDE1FEFCECFEFCEFFEFDEDFDFDE7FEFCE0FEFCDAFEFC
              D3FDFDCDFEFCC8FCFDC4F9FDBDF4FCB8F0FCB6EFFBB4ECFBB1E9FAABE3F5A7DF
              F09FDAEA8ED1E081C9D876C0D26BB4CA63AFC75BA8C34F92B1658BA5E5F0F2DA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE3EFF2C0D9E1ADDAE7AEE1F0B1E9FAB9
              F4FCC0FAFDC6FBFDCBFDFDD0FDFBD2FEFCD2FEFDD7FEFEE0FEFCEBFEFCF3FEFD
              F2FEFDECFEFCE6FEFCDFFEFDD8FDFDCFFCFCCAFCFDC5F9FCBFF5FCB9F2FDB8F1
              FCB5EEFBB1E9FAACE3F8AAE1F4A1DBED93D5E485CDDB79C4D46EB7CB65B0C85D
              ACC5529DBB5184A3CBD8DFDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE0
              EBEEAAD4DFAEE0ECB0E7F6B4EDFABFF9FDC5FBFDCBFDFCCEFDFCD1FEFBD1FDFC
              D2FEFDDCFDFCE8FEFCF1FFFDF4FEFDF2FEFDEBFDFCE3FDFBDBFEFCD3FDFCCBFC
              FDC6FAFDC2F7FCBBF3FCB8F1FCB6EEFBB3ECFAB1E8FBABE1F7A4DDF097D8E78C
              D1DF7DC6D672BBCF67B1C860ACC657A5C04E8CAC819FB5E2EFF1DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEE2EEF1B5D2DBB0DDE9AEE2EFB3ECF9BAF4FDC3FBFD
              C8FCFDCAFBFDC9FCFCCAFEFCD1FDFCDBFEFCE6FEFCF1FEFDF4FEFDF4FEFDF0FD
              FDE7FDFBDFFEFBD6FDFCCCFCFCC7FBFDC3F8FCBDF4FCB7F1FCB7EFFBB4EDFBB2
              E9FBAEE4FAA7DFF29DDAEA91D4E386CDDB77BED16BB5C965AFC75DAAC55297B6
              5382A0E2EBEFDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED7E4E8AFD9E4
              AFE1EDB1E9F8B6F0FCBDF8FCC4FCFEC7FCFEC8FCFDCBFDFCCFFDFCD7FDFDE3FD
              FBEFFEFDF3FDFDF3FDFDF4FEFDEEFEFCE3FEFBD9FDFCD0FDFCC8FCFDC4F8FCBF
              F7FCB9F2FBB7F0FCB5EEFBB2EBFBB0E7F9ABE3F4A2DCED96D7E58CCFDD7DC5D4
              72BBCF68B2C862ADC655A1BE4D86A6ACBFCCDEECF0DAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEE5F0F2ADD0DAAEDEEAB1E6F5B4EDFABBF7FCC3FCFDC7FCFEC9FC
              FCCDFEFCCEFDFCD1FDFCDCFDFBE9FDFCF2FEFDF3FDFDF3FDFDF2FEFDE8FDFCDE
              FEFBD3FEFDCBFDFBC6FAFDC2F7FCBBF4FBB8F1FBB7F0FBB4ECFBB1E9FAADE5F6
              A6DEEF9CD9E88FD1E081C9D776C0D36BB4C963AFC75AA8C35093B2668BA5E5F0
              F2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDEECF0CBDDE4B2DBE7B0E1F0B3EA
              FBBAF5FCC0FCFDC6FCFEC7FCFDC8FCFECAFDFCCFFDFCD7FDFCE2FEFCEFFEFDF3
              FDFDF3FDFDF3FDFDF0FEFCE4FEFBD8FDFCCFFDFCCAFCFCC4F8FCBEF5FBBAF2FC
              B7F0FBB5EDFBB2E9FCAEE4FAA8E0F2A3DCED93D5E386CDDA7AC4D470B9CC65B1
              C85EABC4529CBA4E82A2CBDAE2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEE5EFF1AFD2DDAFDEECB3E6F8B7F1FBBFFAFDC3FCFEC7FCFEC8FCFDCBFDFCCE
              FDFCD2FDFDDBFDFDEAFEFCF3FDFCF3FDFDF3FDFDF3FDFDEBFEFCDFFDFCD5FEFC
              CBFDFCC5FAFDC0F6FBBCF3FDBAF0FDB6EFFBB3EBFBAFE5FAABE2F6A5DDF098D8
              E88BD0DF7CC6D571BACE67B1C661ADC658A6C0508EAC7EA5B7E2EEF1DAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEE2EFF2BCD5DDADDBE7B1E3F4B4E9FBBCF7FDC2
              FCFDC7FCFEC9FDFCCEFEFCCFFDFDCFFDFDD6FDFCE7FEFCF2FEFDF3FDFDF3FDFD
              F3FDFDF2FDFDE7FDFCDAFDFBCDFDFCC7FBFDC3F7FCBDF3FCBCF0FDB8EFFCB5ED
              FAB1E8FBADE3F9A7DFF29CDAEA8FD3E285CBDA77BFD26DB7CA65B0C85EA7BF57
              95AF5389A3DFEBEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDCE7EBA0
              CED9AEDFEFB4E7FBB7EEFBC3FCFDC7FCFEC9FDFDCEFEFCCFFDFDCFFDFDD2FEFD
              E2FEFCF0FEFDF3FDFDF3FDFDF3FDFDF3FDFDEEFDFCE1FEFBD5FDFCCCFDFCC5FA
              FCC0F5FBBCF0FDB9EEFBB6EEFBB3EBFBAFE5FAAAE1F5A2DCEC96D6E58BD1DF79
              C4D46FBBCD67B3C95FAAC25696AF528BA6AAC4CFDEECF0DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEE6F0F3A4C8D4ACDEECB4E7FAB6ECFBC0FAFDC6FCFEC8FCFE
              CCFEFCCFFEFDD0FDFDD1FDFCDEFDFBEDFEFCF3FDFDF3FDFDF3FDFDF4FEFEF3FE
              FDE9FEFCDAFDFDCFFCFCC8FBFCC2F6FCBDF0FCBBEEFCBAEEFCB5ECFCB1E8FAAC
              E4F5A6DFF09BD9E890D4E380C9D86EB9CC67B2C85AA2BC5595B05290AB6394AB
              E5F0F3DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDEECF0C9DCE4AADAE7B6E8FB
              B5EBFCBCF6FDC2FCFDC7FCFECBFDFCCFFDFCD3FEFDD8FEFDDEFEFCEAFEFCF2FE
              FDF3FDFDF3FDFDF3FDFDF4FDFDEEFDFCDFFDFCD3FDFDCBFCFCC4F7FCBEF2FDBB
              EFFCBAEEFCB5ECFBB3EAFBAEE6F7A8E0F19FDAEA94D5E589CFDD72BDCF65AEC5
              478BA95695B05896B04F8AA6CEDEE5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEE7F0F398CBDBB2E6F3B5E9FBB9F2FCC0FBFDC5FDFDCDFDFDCFFDFDD3FE
              FCD9FEFDDBFDFDE7FDFCF0FEFDF3FDFDF3FDFDF3FDFDF5FEFDF2FDFCE7FDFCD9
              FDFDCFFDFCC8FAFCC1F4FCBCF0FCBBEFFCB9EDFBB5EBFCB0E6FBAAE1F4A1DCED
              94D5E48CD0DF76C0D24F95B04383A35796B05E9CB35190A982A9BEE2EEF1DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EFF1ADD1E0A9DBE7B8EAFAB7EEFBBEF7
              FDC5FCFDCDFDFCCFFDFDD2FDFDD9FEFDD9FDFDE0FDFBEEFEFCF3FDFDF3FDFDF3
              FDFDF5FEFDF5FEFDEEFDFCDFFDFCD4FDFDCBFBFCC3F6FCBFF2FDBDF1FDBAF0FC
              B4ECFAAFE6FBACE2F8A4DEEF98D8E88FD2E173BCCE37779A4483A35898B262A1
              B85A9AB1508CA7E0EBEFDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDCE9
              EEA1D1E0BAEAF8B5EAFABDF5FCC4FBFECAFDFDCFFDFDD1FEFDD7FEFDD9FEFDE0
              FEFCE9FEFCF2FEFDF3FDFDF4FEFEF5FEFDF5FEFDF3FEFDE6FDFBD8FDFCCCFBFC
              C4F7FBC1F4FCBEF2FDBCF1FDB6EDFBB2E8FCADE4F9A8E0F29EDAEA92D4E35293
              AC3774934685A35C9BB460A1B75C9BB1508FA8ACC6D3DEECF0DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEE7F1F3A5CDDCB4E4F2B4E7F9BBF0FCC5FAFDC9FDFCCF
              FEFDCFFDFDD5FEFDD9FEFDDCFEFCE4FEFCEFFEFCF3FDFDF4FEFEF5FEFDF5FEFD
              F5FEFDEDFDFCDDFDFCD1FCFCC6FAFCC2F6FDBFF2FCBEF1FDBAEFFCB4EBFBAFE7
              F8AAE2F3A3DCED7FC0D13472933371914786A25C9CB45E9FB561A0B65391A966
              98AFE5F0F3DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDEECF0CBE0E89FD4E3B5
              E4F6BBEBFBC3F7FDC9FDFCCFFDFCCFFDFDD4FDFDD9FEFDDAFDFDE0FDFBECFDFC
              F3FEFDF3FDFDF3FDFDF5FEFDF5FEFDF1FDFDE1FDFCD5FDFDC9FAFCC3F7FCC1F3
              FCBFF2FEBBF0FDB6ECFBB2E9FBADE3F89DD7E943859F2C6D8C2D6E8D4887A360
              A0B65F9FB663A1B8609CB2518BA3CFDEE5DAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEEAF2F492C9D9B3E3F2B8E7FAC0F3FDCAFDFDCFFDFDCFFDFDD4FEFD
              D9FEFDD9FDFEDFFEFCEAFEFCF2FEFDF3FDFDF3FDFDF5FEFDF5FEFDF4FEFDE8FD
              FCD9FDFDCCFCFCC5F8FBC2F5FDC0F2FDBDF1FEB8EEFBB3EAFBAFE5FA6AAAC030
              6C892A637F2864804887A15F9FB6609FB561A0B75998AF5390A783ABBEE2EEF1
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2EFF2B7D6E1B2DFEDB8E6F7BDEEFB
              C9FBFCCFFDFCCFFDFDD5FDFDD9FEFCD9FEFDDFFEFCEAFDFCF2FEFDF3FDFDF4FE
              FEF5FEFDF5FEFDF4FEFDEDFDFCDDFDFCCFFDFCC6F9FCC3F6FCC0F3FCBCF0FCB9
              EEFCB4EBFB98D2E42A586F0E2F4511344B1E4B6347819A5D9EB65E9EB661A0B7
              609EB45897AF528DA7E4EDF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              E3EDF0A8D1E0B6E1EFBAE9F7C2F5FCCBFDFCCFFDFCD3FDFBD3FCFAD9FEFCE2FE
              FCEAFDFCF2FEFDF4FEFDF4FEFEF5FEFDF5FEFDF5FEFDF3FEFCE2FDFCD3FDFCCA
              FBFCC4F7FCC2F4FDBEF1FCBCF0FCB9EBF946798D173A4A1837471535440F2E3F
              0B2B3D183B4C2644573B6175629CB25D9BB24F8DA6B1CAD7DEECF0DAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEE2EEF1B5D2DCB6E0ECB8E6F4BDEFF9C8FBFDCFFE
              FCD1FEFDD0FDFCD7FDFDDFFDFBE8FDFBF1FEFDF3FDFDF4FEFEF5FEFDF5FEFDF5
              FEFDF5FEFDEAFDFCD8FDFCD0FCFDC8F9FDC3F6FCC0F2FCBEF1FC9DCFDB1A4253
              20404D20404C21414C24414D1629340B131E1F2F3F1B2737283C4D62A0B65391
              A86999B0E6F1F3DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAE6EBAFD8
              E5B9E4F2BBECF8C6F9FCCDFEFCD1FEFDD0FDFCD6FDFDDFFEFBE7FDFCEEFDFCF4
              FEFDF3FDFDF5FEFDF5FEFDF5FEFDF4FDFCF1FDFDE0FDFCD3FDFDCBFCFCC5F9FC
              C2F5FCC1F4FD81ACB921465720404E22414D23414C253F4906111A617984566E
              816E7D8844505B4F7F945A96AD508BA4D1E1E7DAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEE6F0F3ADCEDABAE3F0B9E9F6C3F5FBCDFDFCD1FDFDD1FDFCD3
              FDFCDAFEFCE2FEFCEAFDFCF1FEFDF4FEFEF4FEFEF4FEFDF5FEFDF5FEFDF6FCFD
              E6FDFBD6FDFCCDFCFCC5FAFDC3F7FBC2F5FC84B2BE234B5E2646562746522644
              4F1F373F1929318498A08697A1A2B1B76E7D85355A6E5694AB508EA48AAEBEE2
              EFF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDEECF0CBDEE6B5DFECB8E7F4BF
              F2FBCBFBFCD0FEFCD1FEFDD0FEFBD6FDFDDEFEFBE6FDFBECFEFCF3FEFDF3FDFD
              F3FDFDF5FEFDF5FEFDF6FCFDE9FDFBD7FDFCCDFCFCC6FAFCC3F7FCC2F5FDADE0
              EA5784944A6E7C37576426424E1F373F34444DB6C1C3C0C7CB5366704E647057
              7D8D609FB25492A8598CA3E8F0F3DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEE6F0F3A6D0DFB8E5F2BDEEFAC8F9FDD0FDFDD2FEFCD0FEFCD3FDFDDCFDFC
              E5FEFCEBFDFCF3FEFDF3FDFDF3FDFDF3FDFDF5FEFDF5FDFDF0FDFCDFFDFCD3FD
              FDC8FBFCC3F7FCC1F4FDBFF2FB9ECFDA73A4B1709EAC6A94A152727C1E2D3690
              9CA0E3EAEAA2AEB4445A6570A8B86BACBD5F9CAF558CA3B6CAD4DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEE3EFF2BAD5E0B5DFEAB8E8F5C5F5FDCFFCFD
              D2FEFCD0FDFCD1FDFCDBFDFDE3FEFBE9FDFCEFFDFDF4FEFEF3FDFDF3FDFDF5FE
              FDF5FEFDF6FDFDE9FDFCD8FDFCCBFCFCC5F9FCC2F5FDBFF4FCBEF4FCB9EEF8A9
              DEEA97CAD787B8C43959660C162125313B2E3F4873A4B179BCCB6DAEBF6AAABC
              5690A5CEDAE2DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDEE9ED
              9CCDD9B2E2EEC4F1FCCEFAFDD1FEFDD0FDFCD2FDFCD9FDFCDDFDFCE5FDFBEEFD
              FDF3FDFDF3FDFDF3FDFDF4FEFDF5FEFDF5FEFDEEFDFBDBFDFCCFFCFCC7FBFCC4
              F7FCC0F6FBBEF5FCBAF2FBB6EEFBB2EBF9AFE5F5A9DEEC86AFBB769AA598CCD8
              86C5D47EBED170B2C26CAEBE7AA5B9E2EEF1DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEE2EEF1A1CBDAAADAE8BEEDFACBF8FCCFFDFDCFFDFDD2FE
              FDD2FDFCD7FDFDE0FDFBEBFDFCF3FDFDF3FDFDF3FDFDF4FEFEF5FEFDF5FEFDF0
              FDFCDEFDFBD2FDFCCDFCFBC6F9FCC3F7FBC0F5FCBAF3FCB7F0FCB5EDFAB1E6F8
              AEE1F3ACE1F1A3DAE899D5E287C9D77FBFD178BACB6CAABDCDDAE3DAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEECEE1E89DD1DDB3E3
              F0C8F5FCCEFCFDD0FEFDD2FEFDD0FDFDD4FDFDDEFEFCE7FDFCF2FDFDF3FDFDF3
              FDFDF3FDFDF4FEFEF5FDFDF4FDFDF0FDFCDDFDFCD0FDFCCBFCFCC4F9FCC1F6FB
              BDF4FCB9F2FCB6EFFBB3EBFAAFE3F5ADE1F1ABDFEF99D5E48CCEDB7FC1D27DBE
              CFABC6D3E2EEF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEE4EFF29CC7D4AADBE7C2EFFACEFBFDCFFDFDD2FEFDCFFCFCD4FDFCDB
              FDFCE2FDFBECFDFCF3FDFDF3FDFDF3FDFDF3FDFDF3FDFDF5FEFDF4FEFDE6FDFC
              D4FDFCCDFDFCC7FBFDC4F8FCBFF5FCB9F3FCB7F0FCB4EDFBB1E5F7ACE0F2A8DF
              F09AD7E78DCDDB82C4D4A5C6D5E0EDF0DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDEECF0BDD8E2A3D5E3BBE9F7C9F7FDCF
              FDFCD0FDFDCFFDFCD5FCFCDAFDFCE0FDFCE8FDFCEFFEFDF1FEFDF3FDFDF3FDFD
              F3FDFDF5FEFDF4FDFDEDFDFCD9FDFDCEFDFCC9FCFDC5F9FDC0F6FCBAF3FBB8F1
              FDB6EEFBB4E9FAAEE1F4ABE0F19ED9E898D2E0B1D4E2E1EDF1DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE2
              EDF198CADAB0E0EDC5F2FCCDFBFCD1FDFDD3FCFCD6FDFDDBFEFDE2FEFCE6FEFC
              E7FEFCEBFEFCF2FEFDF4FEFEF4FEFEF4FEFEF5FEFDF0FDFCDDFDFCD0FDFDCAFC
              FCC6FAFDC2F7FCBBF5FCB8F2FCB6F0FCB5EBFBADE3F4A5DDEEA0D9E7BDDDE9E1
              EEF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEE2EFF2A8CEDDA7D9E6BDECF9C9F7FDD0FDFDD3FDFD
              D5FDFDD7FDFDDBFEFDDEFEFDE1FDFCE8FDFBF3FEFDF4FEFEF4FEFEF4FEFEF4FE
              FDF3FEFDE5FDFCD3FDFCCCFDFCC6FAFDC2F7FBBCF4FCB9F3FDB7F0FDB1E9F9AA
              E1F2A4DBECCAE4EEE2EEF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED5E5EB9BCFDC
              B1E1EEC5F3FCCCFAFDCFFDFCD1FEFCD1FDFCD7FDFDDBFDFDE3FDFCEBFDFCF3FE
              FDF4FEFEF3FDFDF3FDFDF4FEFEF5FEFDECFCFCD9FDFCCEFDFCC8FCFDC4F9FDBD
              F5FCB9F2FDB6EEFCB1E5F6A9D8EBD1E4EDE2EEF1DAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEE6F0F3A0C8D5A9DAE6BFEDF9C5F7FDCEFDFDD1FEFDCFFCFCD6FD
              FCDBFDFCE2FDFBECFDFCF3FEFDF4FEFDF4FEFEF3FDFDF4FEFEF4FEFDF1FDFDDE
              FDFCD0FDFCCAFCFDC4F9FDC0F6FCBBF2FDB9EDFAB1D8E7DFE9EEE2EEF1DAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDEECF0C4DBE5A1D4E1B9E8F6C4F4
              FCC9FBFCD1FDFDD1FDFCD7FCFCDCFDFCE4FEFCEAFEFCF0FDFCF4FEFDF4FEFEF4
              FEFEF4FEFEF5FEFDF1FDFCE4FEFCD5FDFCCAFBFDC4F8FCC1F5FBB0E1EDC8DEE7
              E1EDF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEE7F0F498C9D8ADDEEBC2F1FBC6F9FCD1FDFDD4FCFCD7FDFDDBFDFDE1FEFCE4
              FEFCE7FEFCF3FEFDF4FEFDF4FEFEF4FEFEF4FEFDF4FDFDEEFDFCDAFDFBCDFBFC
              C1EEF3CAE5EBE9F1F3E2EFF1DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEE2EFF2B5D3DEA6D7E3BDEDF7C5F8FCCEFDFDD3
              FDFCD5FDFDD8FDFDDFFEFCE2FDFBE1FCFBEDFDFCF2FEFDF4FEFEF4FEFEF4FEFE
              F4FEFDF3FDFCD3EDF0CFE5EAE6F0F3E3EFF1DAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEE4EEF1AD
              D6E3B7E5F3BEEFFBCBF9FCD2FDFDD3FEFDD6FDFDD9FEFDDCFEFDE1FDFCE6FDFC
              EAFDFCF0FEFDF2FDFCEEF9FAEBF4F5EAF1F3E5F0F2DEECF0DAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE00DAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEE2EFF1E3EFF3BBE3EFBBEBF9C9F7FCD2FDFBD4FDFDD4FCFC
              D6FDFDD8FDFDDCFDFDDFFCFAE1F9F7E8F5F6E9F1F3E7EFF2E2EFF1DAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDFF4F9
              DBF8FADAF9F8DBF8F8D6F3F4D5EFF0E0F3F3E9F4F5F1F7F7DAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEE00}
            Transparent = True
          end
          object Image_Pied_HemisphereSud_FerACheval: TImage
            Left = 203
            Top = 225
            Width = 85
            Height = 43
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            AutoSize = True
            Picture.Data = {
              07544269746D6170362B0000424D362B00000000000036000000280000005500
              00002B0000000100180000000000002B0000C40E0000C40E0000000000000000
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEB5C7C98C9A9B7681
              837B86889DAAADC7D7DAD7E7EBDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED2E4E6B4C3C54E5456272A2A272A
              2B26292A2A2D2E6E7678C4D3D7D8E8ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED1E0E47A83852427285E65679DA9
              AC99A5A73C4142272A2AA9B5B9D8E8ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED4E3E798A4A6727A7DB0BDC1CEDD
              E0BDCACE4D5354191B1BA0ABAED8E8ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED8E8ECCAD9DDB1BEC18C96986168
              6A3C40411B1D1E373B3CB2BFC3D8E8ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED8E8ECBFCCD0585E6026292A1A1C
              1C292B2C545B5C9CA7AAD0DFE2D8E8ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED3E3E78C979923252644494A8791
              93A2AEB1919C9EA7B3B6D0DFE3D8E8ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9E9EDD8E9ECD8E9ECD9E9EDD8E9EC
              D8E8ECD7E9EBD9E9EDD9E9EDD9E9EDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED2E2E6848E911F2223575E5FA1AD
              B095A0A3454A4B5D6466BFCDD1D8E8ECDAEAEED9EAEDD9E9EDD7E8ECD6E7EBD6
              E7EAD5E6EAD4E6E9D3E5E8D3E5E8D2E4E7D0E3E5CFE2E4CEE2E4CFE2E5CFE2E4
              CDE1E2CDE1E2D0E3E5D1E3E6D1E3E6D2E4E7D2E4E7D3E5E8D3E5E8D4E6E9D5E6
              E9D6E7EAD7E7EBD8E8ECD9E9EDD9EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED7E7EBB3C0C4444A4B26292A3336
              382C2F302426277F888ACBDADDCDE2DFD1E5E5D2E4E7CFE2E5CCE0E2CADEE0C8
              DDDFC6DBDDC5DADCC3D9DAC1D8D9C0D7D8BFD7D7BED6D6BED6D6BED6D6BFD6D6
              BFD6D6BFD6D6BFD6D7BFD6D7BFD6D7BFD7D7C0D7D8C1D8D9C2D9DAC4DADBC6DB
              DDC8DDDFCADFE0CDE0E3CFE2E5D2E4E7D3E5E8D5E6EAD7E7EBD8E9ECD9E9EDDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED3E3E7ACB9BC838D8F7078
              7B777F8297A2A4C4D3D7D7E7EBB4D3C7ACCEC1BCD5D3BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BFD6D6BFD6D7C0D7D8C2D9DAC6DCDDCADFE0CFE2E4D2E4E7D5
              E6E9D7E7EBD8E9EDD9E9EDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEED3E3E7D1E1E5D7E7EBDAEAEED6E6EAD2E1E5D5E5E9D9E9
              ED00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEED9EAEDD9E9EDDAEAEEDAEAEED8E8ECCFDEE2C8D6
              DACBD9DDBED6D6BED6D6BED6D6BED6D65BA966399A418EC0A0B6D2CDBED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BFD6D6BFD7D7C0D7D8C5
              DBDCCADFE0D0E3E5D4E6E9D7E7EBD9E9EDD9EAEDDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEED4E4E8A3AFB2919C9FC0CED2D9E9EDB9C6C9949FA1B1BEC1D3E3
              E700DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEED9EAEED8E9EDD5E7EAD1E4E6CBDFE1C5DADCC0D7D8BFD6D7BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6B2D0C91A8B1D0080001B8C1E68AE75A1
              C8B5BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BFD6D6BFD7D7C3DADBCBDFE1D1E4E6D6E7EAD9E9EDDAEAEEDAEAEEDAEAEE
              DAEAEED9E9EDBFCDD044494A1314158D979AD4E3E7757E801B1D1E61686AC0CF
              D200DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEED8E9EDD5E6EACFE2E5C7DCDDC0D8D8BFD6D7BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D68ABE9C0582060080000080000B
              850C439E4C89BD9AB8D3CFBED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BFD6D7C1D8D8C8DDDFD1E3E6D7E7EBD9E9EDDAEAEE
              DAEAEED8E8EC9FABAE3336370707076E7678BECBCF53595B0C0D0D434849ACB8
              BB00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9E9ED
              D6E7EAD0E3E5C6DCDDC0D7D7BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BDD5D550A45B00800000800000
              800000800000800023902862AC6FA7CBBCBED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BFD6D7C1D8D8CBDFE1D4E6E9D9E9ED
              DAEAEED8E7EB7F888A3B3F401F212252585A8E989B3F44452D30313A3E3F97A2
              A500DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9E9EDD4E6E9
              C9DEE0C0D8D8BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6B0CFC6208E2400800000
              80000080000080000080000080000E86103C9B448EC0A0B7D2CEBED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D5BCD5D4C5DBDAD3E5E6
              D9E9ECD4E4E86067684C52534F5556414546575D5F3C404262696B3C41427F89
              8B00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9E9EDD3E5E8C7DCDD
              BFD7D7BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D68BBF9D08840900
              80000080000080000080000080000080000080000180011D8D216BB078A7CBBC
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BDD6D5B8D3D0B8D3
              CFB8D3CFB6D2CDB5D1CBB4D1CB95C3A88ABE9B82BB9280BA9080BA9080BA907A
              B78973B48272B38072B38072B38072B381419D4938993F5BA96799C5ACC7DCDD
              D4E5E9C6D5D8464B4C62696B828C8E373B3B232627474C4E929D9F4A4F51636A
              6C00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9EAEDD4E6E9C7DDDEBFD6D7
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BDD6D553A55E00
              80000080000080000080000080000080000080000080000080000080000B850D
              3D9B4552A55D4DA3571C8D1F1A8C1D198B1C188B1C1288150D860F0B850C0A85
              0C0A850C09840A08840A08840903810301800100800000800000800000800000
              80000080000180010C850D2B93315AA8658BBE9CA6CBBBB5D2CCBDD5D4BFD7D7
              CCE0E2A8B5B83A3F40808A8CB3C0C343484A0A0A0A5A6163B8C5C962696B4F55
              5600DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED8E9ECCEE1E3BFD7D7BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BAD4D186BC960B
              840C008000008000008000008000008000008000008000008000008000008000
              0080000080000080000080000080000080000080000080000080000080000080
              000080000080000080000080000080000080000080000080000180011B8C1E38
              993F71B37F8BBF9CB5D2CBBED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              C7DCDD9FACAE5F6668A5B1B4D2E2E6747D7F3D41428B9598CEDDE18F9A9C6970
              7200DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED6E7EAC8DDDEBED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BBD5D3ABCDC087BD9860AB6D35983B13881503810400
              8000008000008000008000008000008000008000008000008000008000008000
              0080000080000080000080000080000080000080000080000080000080000080
              0000800000800000800001800109840A1C8C1F54A65F6EB17BA2C9B7B5D2CCBD
              D6D5BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              C8DDDECFDFE2CCDADED4E4E8D9E9EDCFDEE2C8D7DBD1E1E5D9E9EDD2E1E5CDDC
              E000C1CFD2BFCDD1BFCDD1BFCDD1BFCDD1C2D1D4C9DADDC7DCDDBED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BBD5
              D3A9CCBE82BB934FA4592F953505820500800000800000800000800000800000
              8000008000008000008000008000008000008000008000008000008000008000
              0080000080000080000080000080000080000080000080000080000080000080
              000F871134983B65AD7183BB94ACCEC1BDD6D5BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BFD7D7
              CCE0E2D7E8EBDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00383C3D333738383C3E383C3E383C3E4D5354939FA1C9DEDFBED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BDD6D5B4D1CAA4CAB96CB17A459F4E168A
              190A840B00800100800000800000800000800000800000800000800000800000
              8000008000008000008000008000008000008000008000008000008000008000
              0080000080000080000080000080000080000181011388164AA15363AD709BC6
              AEB0D0C7BDD5D5BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C5DBDC
              D3E5E8DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE001719193437386066686066696066696F777AA6B2B5D2E4E7BFD7D7BED6D6
              BED6D6BED6D6B5D2CC88BD995FAB6B3A9A41178A1A0180010080000080000080
              0000800000800000800000800000800000800000800000800000800000800000
              8000008000008000008000008000008000008000008000008000008000008000
              00800000800000800000800000800000800001800179B789BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BFD6D7C4DADBD1E3E6
              D8E9EDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE001D1F20676E70C3D2D5C4D2D6C4D2D6C8D6DAD2E1E5D8E9ECC3DCD890C1A2
              5DAA6829922F1087120D860E0C850D0C850D0C850D0C850D0C850D118813198B
              1C198B1D198B1D198B1D1A8B1D1A8B1D38993F52A55D52A55D53A55D54A65E54
              A65E54A65E5FAB6B66AE7366AE7366AE7364AD7057A762198B1D018001008000
              008000008000008000008000008000008000008000208E23B2D0C8BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C0D7D7C6DBDDD2E4E7D8E8EC
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE001A1C1C555B5DA2AEB1A3AFB1A3AFB1B3C0C3D3E2E6D9EAEDD3E6E799C8A9
              8CC09D8ABE9C91C1A3B8D3CFB8D3CFB8D3CFB8D3CFB8D3CFB8D3CFBAD4D2BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6B6D2CC88BD9A34983B
              0281020080000080000080000080000080000080000080005CA967BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BFD7D7C2D9DACCE0E2D5E6E9D9E9EDDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE000F1111151717292C2D292C2D292C2D5D6466C4D2D6DAE9EDDAEAEED9E9ED
              D4E6E9CADFE0C1D8D9BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BCD5D3
              99C5AD58A763118814008000008000008000008000008000128814AACDBFBED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BFD6D7C0D7D7C3D9DACBDFE1D3E5E8D7E8ECD9E9EDDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00181A1A484D4F8994968A94968A9496A1ADB0D0DFE3DAEAEEDAEAEEDAEAEE
              D9E9EDD8E9ECD4E6E9CDE1E3C4DADBBFD7D7BFD6D7BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6ADCEC367AE7425912A00800000800000800000800057A762BDD6
              D5BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BFD6D7BF
              D7D7C1D8D9C7DCDDCEE1E4D4E6E9D7E8ECD9E9EDDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE001D1F1F646C6EBFCDD1C0CED1C0CED1C6D4D8D4E3E7DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEED9E9EDD8E9ECD6E7EAD2E4E7CCDFE1C5DBDCC1D8D8BFD7D7BFD7
              D7BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BAD4D189BE9A469F4F09840A0080000A850C98C5
              ACBED6D6BED6D6BED6D6BED6D6BED6D6BFD6D7BFD7D7C0D7D8C3D9DAC8DDDECE
              E1E3D3E5E8D6E7EAD8E9ECD9E9EDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE001719192527284044464045464045465E6567ABB8BBD9E9EDDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9E9EDD7E8ECD5E7EAD3E5E8CFE2E4CADE
              E0C5DBDCC1D8D9C0D7D7BFD7D7BFD7D7BFD6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6A1C8B553A55E178A1A3B9B
              43BED6D6BED5D6BAD1D1B9CFD0BDD2D3C4D9DACCDFE2D1E4E6D5E6E9D6E7EBD8
              E9ECD9E9EDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE005A6162545B5C565D5F565D5F565D5F70787BB2BFC3D9E9EDDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9E9EDD8E9ECD7E8
              EBD6E7EAD4E6E9D1E4E7CEE1E4CBDFE1C8DDDFC5DBDCC3DADBC2D9D9BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C0D7D8B7D3CE7CB8
              8BA7CBB9B5C7C9DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00C1CFD3C0CED1C0CED1C0CED1C0CED1C5D3D7D2E1E5DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEED9E9EDD8E9ECD7E8ECD6E7EBD6E7EAD5E6EAD1E4E7CCDFE1CA
              DDDFCADEE0CBDEE0CBDEE0C3D9DAC2D9D9C2D9D9C2D9D9C2D9D9C2D9D9C2D9D9
              C2D9D9C3D9DACADEDFCADDDFC9DDDEC9DCDEC6D8DACFE0E3D5E6E9D4E6E9ADB9
              BD31343544494AD3E2E6CAD9DD7B85870F1010292C2DB3C0C4DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEADB9
              BD31343544494ACDDCE0A2AEB12E3232020202282B2CB3C0C4DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEADB9
              BD313435434849B7C4C85C63650E0F0F1415162A2D2EB3C0C4DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEADB9
              BD313435393D3E828C8F22242535393A3F44452C2F31B3C0C4DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEADB9
              BD3033341C1F1F393D3E303334828C8E53595B2D3132B3C0C4DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEADB9
              BD2E3132050505181A1B6D7577B6C3C7565D5E2D3132B3C0C4DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEADB9
              BD2D3031090A0A424748B8C5C9BECCCF575D5F2D3132B3C0C4DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEB5C2
              C54B50523D41428E999BD5E5E9C4D2D66D75774B5152B9C7CBDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEECCDB
              DEA4B0B3A5B2B4CEDEE1D9E9EDD2E1E5B1BDC1A2AFB2C8DADBDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00}
            Transparent = True
            Visible = False
          end
          object Image_Pied_FerACheval: TImage
            Left = 203
            Top = 225
            Width = 85
            Height = 43
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            AutoSize = True
            Picture.Data = {
              07544269746D6170362B0000424D362B00000000000036000000280000005500
              00002B0000000100180000000000002B0000C40E0000C40E0000000000000000
              0000DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEADB9BD31343544494AD3E2E6CAD9
              DD7B85870F1010292C2DB3C0C4D8E8ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEADB9BD31343544494ACDDCE0A2AE
              B12E3232020202282B2CB3C0C4D8E8ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEADB9BD313435434849B7C4C85C63
              650E0F0F1415162A2D2EB3C0C4D8E8ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEADB9BD313435393D3E828C8F2224
              2535393A3F44452C2F31B3C0C4D8E8ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEADB9BD3033341C1F1F393D3E3033
              34828C8E53595B2D3132B3C0C4D8E8ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEADB9BD2E3132050505181A1B6D75
              77B6C3C7565D5E2D3132B3C0C4D8E8ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEADB9BD2D3031090A0A424748B8C5
              C9BECCCF575D5F2D3132B3C0C4D8E8ECDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9E9EDD8E9ECD8E9ECD9E9EDD8E9EC
              D8E8ECD7E9EBD9E9EDD9E9EDD9E9EDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEB5C2C54B50523D41428E999BD5E5
              E9C4D2D66D75774B5152B9C7CBD8E8ECDAEAEED9EAEDD9E9EDD7E8ECD6E7EBD6
              E7EAD5E6EAD4E6E9D3E5E8D3E5E8D2E4E7D0E3E5CFE2E4CEE2E4CFE2E5CFE2E4
              CDE1E2CDE1E2D0E3E5D1E3E6D1E3E6D2E4E7D2E4E7D3E5E8D3E5E8D4E6E9D5E6
              E9D6E7EAD7E7EBD8E8ECD9E9EDD9EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEECCDBDEA4B0B3A5B2B4CEDEE1D9E9
              EDD2E1E5B1BDC1A2AFB2C8DADBCDE2DFD1E5E5D2E4E7CFE2E5CCE0E2CADEE0C8
              DDDFC6DBDDC5DADCC3D9DAC1D8D9C0D7D8BFD7D7BED6D6BED6D6BED6D6BFD6D6
              BFD6D6BFD6D6BFD6D7BFD6D7BFD6D7BFD7D7C0D7D8C1D8D9C2D9DAC4DADBC6DB
              DDC8DDDFCADFE0CDE0E3CFE2E5D2E4E7D3E5E8D5E6EAD7E7EBD8E9ECD9E9EDDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9E9EDD7E7EBD7E7EBD7E7EBD6E7
              EAD3E5E8CFE1E4CADEE0C2DBD7B4D3C7ACCEC1BCD5D3BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BFD6D6BFD6D7C0D7D8C2D9DAC6DCDDCADFE0CFE2E4D2E4E7D5
              E6E9D7E7EBD8E9EDD9E9EDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEED3E3E7D1E1E5D7E7EBDAEAEED6E6EAD2E1E5D5E5E9D9E9
              ED00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEED9EAEDD9E9EDD7E8EBD4E6EAD1E4E7CDE0E2C7DC
              DEC2D8D9BFD7D7BED6D6BED6D6BDD6D55BA966399A418EC0A0B6D2CDBED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BFD6D6BFD7D7C0D7D8C5
              DBDCCADFE0D0E3E5D4E6E9D7E7EBD9E9EDD9EAEDDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEED4E4E8A3AFB2919C9FC0CED2D9E9EDB9C6C9949FA1B1BEC1D3E3
              E700DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEED9EAEED8E9EDD5E7EAD1E4E6CBDFE1C5DADCC0D7D8BFD6D7BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6B2D0C91A8B1D0080001B8C1E68AE75A1
              C8B5BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BFD6D6BFD7D7C3DADBCBDFE1D1E4E6D6E7EAD9E9EDDAEAEEDAEAEEDAEAEE
              DAEAEED9E9EDBFCDD044494A1314158D979AD4E3E7757E801B1D1E61686AC0CF
              D200DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEED8E9EDD5E6EACFE2E5C7DCDDC0D8D8BFD6D7BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D68ABE9C0582060080000080000B
              850C439E4C89BD9AB8D3CFBED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BFD6D7C1D8D8C8DDDFD1E3E6D7E7EBD9E9EDDAEAEE
              DAEAEED8E8EC9FABAE3336370707076E7678BECBCF53595B0C0D0D434849ACB8
              BB00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9E9ED
              D6E7EAD0E3E5C6DCDDC0D7D7BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BDD5D550A45B00800000800000
              800000800000800023902862AC6FA7CBBCBED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BFD6D7C1D8D8CBDFE1D4E6E9D9E9ED
              DAEAEED8E7EB7F888A3B3F401F212252585A8E989B3F44452D30313A3E3F97A2
              A500DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9E9EDD4E6E9
              C9DEE0C0D8D8BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6B0CFC6208E2400800000
              80000080000080000080000080000E86103C9B448EC0A0B7D2CEBED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D5BCD5D4C5DBDAD3E5E6
              D9E9ECD4E4E86067684C52534F5556414546575D5F3C404262696B3C41427F89
              8B00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9E9EDD3E5E8C7DCDD
              BFD7D7BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D68BBF9D08840900
              80000080000080000080000080000080000080000180011D8D216BB078A7CBBC
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BDD6D5B8D3D0B8D3
              CFB8D3CFB6D2CDB5D1CBB4D1CB95C3A88ABE9B82BB9280BA9080BA9080BA907A
              B78973B48272B38072B38072B38072B381419D4938993F5BA96799C5ACC7DCDD
              D4E5E9C6D5D8464B4C62696B828C8E373B3B232627474C4E929D9F4A4F51636A
              6C00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9EAEDD4E6E9C7DDDEBFD6D7
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BDD6D553A55E00
              80000080000080000080000080000080000080000080000080000080000B850D
              3D9B4552A55D4DA3571C8D1F1A8C1D198B1C188B1C1288150D860F0B850C0A85
              0C0A850C09840A08840A08840903810301800100800000800000800000800000
              80000080000180010C850D2B93315AA8658BBE9CA6CBBBB5D2CCBDD5D4BFD7D7
              CCE0E2A8B5B83A3F40808A8CB3C0C343484A0A0A0A5A6163B8C5C962696B4F55
              5600DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED8E9ECCEE1E3BFD7D7BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BAD4D186BC960B
              840C008000008000008000008000008000008000008000008000008000008000
              0080000080000080000080000080000080000080000080000080000080000080
              000080000080000080000080000080000080000080000080000180011B8C1E38
              993F71B37F8BBF9CB5D2CBBED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              C7DCDD9FACAE5F6668A5B1B4D2E2E6747D7F3D41428B9598CEDDE18F9A9C6970
              7200DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED6E7EAC8DDDEBED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BBD5D3ABCDC087BD9860AB6D35983B13881503810400
              8000008000008000008000008000008000008000008000008000008000008000
              0080000080000080000080000080000080000080000080000080000080000080
              0000800000800000800001800109840A1C8C1F54A65F6EB17BA2C9B7B5D2CCBD
              D6D5BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              C8DDDECFDFE2CCDADED4E4E8D9E9EDCFDEE2C8D7DBD1E1E5D9E9EDD2E1E5CDDC
              E000C1CFD2BFCDD1BFCDD1BFCDD1BFCDD1C2D1D4C9DADDC7DCDDBED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BBD5
              D3A9CCBE82BB934FA4592F953505820500800000800000800000800000800000
              8000008000008000008000008000008000008000008000008000008000008000
              0080000080000080000080000080000080000080000080000080000080000080
              000F871134983B65AD7183BB94ACCEC1BDD6D5BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BFD7D7
              CCE0E2D7E8EBDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00383C3D333738383C3E383C3E383C3E4D5354939FA1C9DEDFBED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BDD6D5B4D1CAA4CAB96CB17A459F4E168A
              190A840B00800100800000800000800000800000800000800000800000800000
              8000008000008000008000008000008000008000008000008000008000008000
              0080000080000080000080000080000080000181011388164AA15363AD709BC6
              AEB0D0C7BDD5D5BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C5DBDC
              D3E5E8DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE001719193437386066686066696066696F777AA6B2B5D2E4E7BFD7D7BED6D6
              BED6D6BED6D6B5D2CC88BD995FAB6B3A9A41178A1A0180010080000080000080
              0000800000800000800000800000800000800000800000800000800000800000
              8000008000008000008000008000008000008000008000008000008000008000
              00800000800000800000800000800000800001800179B789BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BFD6D7C4DADBD1E3E6
              D8E9EDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE001D1F20676E70C3D2D5C4D2D6C4D2D6C8D6DAD2E1E5D8E9ECC3DCD890C1A2
              5DAA6829922F1087120D860E0C850D0C850D0C850D0C850D0C850D118813198B
              1C198B1D198B1D198B1D1A8B1D1A8B1D38993F52A55D52A55D53A55D54A65E54
              A65E54A65E5FAB6B66AE7366AE7366AE7364AD7057A762198B1D018001008000
              008000008000008000008000008000008000008000208E23B2D0C8BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C0D7D7C6DBDDD2E4E7D8E8EC
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE001A1C1C555B5DA2AEB1A3AFB1A3AFB1B3C0C3D3E2E6D9EAEDD3E6E799C8A9
              8CC09D8ABE9C91C1A3B8D3CFB8D3CFB8D3CFB8D3CFB8D3CFB8D3CFBAD4D2BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6B6D2CC88BD9A34983B
              0281020080000080000080000080000080000080000080005CA967BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BFD7D7C2D9DACCE0E2D5E6E9D9E9EDDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE000F1111151717292C2D292C2D292C2D5D6466C4D2D6DAE9EDDAEAEED9E9ED
              D4E6E9CADFE0C1D8D9BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BCD5D3
              99C5AD58A763118814008000008000008000008000008000128814AACDBFBED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BFD6D7C0D7D7C3D9DACBDFE1D3E5E8D7E8ECD9E9EDDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00181A1A484D4F8994968A94968A9496A1ADB0D0DFE3DAEAEEDAEAEEDAEAEE
              D9E9EDD8E9ECD4E6E9CDE1E3C4DADBBFD7D7BFD6D7BED6D6BED6D6BED6D6BED6
              D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6ADCEC367AE7425912A00800000800000800000800057A762BDD6
              D5BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BFD6D7BF
              D7D7C1D8D9C7DCDDCEE1E4D4E6E9D7E8ECD9E9EDDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE001D1F1F646C6EBFCDD1C0CED1C0CED1C6D4D8D4E3E7DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEED9E9EDD8E9ECD6E7EAD2E4E7CCDFE1C5DBDCC1D8D8BFD7D7BFD7
              D7BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BAD4D189BE9A469F4F09840A0080000A850C98C5
              ACBED6D6BED6D6BED6D6BED6D6BED6D6BFD6D7BFD7D7C0D7D8C3D9DAC8DDDECE
              E1E3D3E5E8D6E7EAD8E9ECD9E9EDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE001719192527284044464045464045465E6567ABB8BBD9E9EDDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9E9EDD7E8ECD5E7EAD3E5E8CFE2E4CADE
              E0C5DBDCC1D8D9C0D7D7BFD7D7BFD7D7BFD6D6BED6D6BED6D6BED6D6BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6A1C8B553A55E178A1A3B9B
              43BED6D6BED5D6BAD1D1B9CFD0BDD2D3C4D9DACCDFE2D1E4E6D5E6E9D6E7EBD8
              E9ECD9E9EDDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE005A6162545B5C565D5F565D5F565D5F70787BB2BFC3D9E9EDDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED9E9EDD8E9ECD7E8
              EBD6E7EAD4E6E9D1E4E7CEE1E4CBDFE1C8DDDFC5DBDCC3DADBC2D9D9BED6D6BE
              D6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6
              BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6BED6D6C0D7D8B7D3CE7CB8
              8BA7CBB9B5C7C98C9A9B7681837B86889DAAADC7D7DAD7E7EBDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00C1CFD3C0CED1C0CED1C0CED1C0CED1C5D3D7D2E1E5DAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEED9E9EDD8E9ECD7E8ECD6E7EBD6E7EAD5E6EAD1E4E7CCDFE1CA
              DDDFCADEE0CBDEE0CBDEE0C3D9DAC2D9D9C2D9D9C2D9D9C2D9D9C2D9D9C2D9D9
              C2D9D9C3D9DACADEDFCADDDFC9DDDEC9DCDEC6D8DACFE0E3D5E6E9D4E6E9D2E4
              E6B4C3C54E5456272A2A272A2B26292A2A2D2E6E7678C4D3D7DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED1E0
              E47A83852427285E65679DA9AC99A5A73C4142272A2AA9B5B9D8E8ECDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED4E3
              E798A4A6727A7DB0BDC1CEDDE0BDCACE4D5354191B1BA0ABAED6E6EADAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED8E8
              ECCAD9DDB1BEC18C969861686A3C40411B1D1E373B3CB2BFC3D9E9EDDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED8E8
              ECBFCCD0585E6026292A1A1C1C292B2C545B5C9CA7AAD0DFE2DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED3E3
              E78C979923252644494A879193A2AEB1919C9EA7B3B6D0DFE3DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED2E2
              E6848E911F2223575E5FA1ADB095A0A3454A4B5D6466BFCDD1DAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEED7E7
              EBB3C0C4444A4B26292A3336382C2F302426277F888ACBDADDDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EED3E3E7ACB9BC838D8F70787B777F8297A2A4C4D3D7D7E7EBDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEED8E8ECCFDEE2C8D6DACBD9DDD5E5E9D9E9EDDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDA
              EAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEE
              DAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEAEEDAEA
              EE00}
            Transparent = True
          end
          object Label_Telescope_NonRetourne_FerACheval: TLabel
            Left = 45
            Top = 228
            Width = 71
            Height = 40
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = '(pointage '#171'normal'#187')'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label_Telescope_Retourne_FerACheval: TLabel
            Left = 45
            Top = 120
            Width = 123
            Height = 63
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            AutoSize = False
            Caption = '(pointage en dessous de l'#39'orthom'#233'ridien)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
            WordWrap = True
          end
          object RadioGroup_Etat_Telescope_FerACheval: TRadioGroup
            Left = 5
            Top = 30
            Width = 160
            Height = 246
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Ctl3D = True
            DoubleBuffered = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemIndex = 1
            Items.Strings = (
              'Retourn'#233
              'Non retourn'#233)
            ParentCtl3D = False
            ParentDoubleBuffered = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            WordWrap = True
            OnClick = RadioGroup_Etat_Telescope_FerAChevalClick
          end
        end
        object GroupBox_Parametres_Limites_FerACheval: TGroupBox
          Left = 402
          Top = 29
          Width = 405
          Height = 178
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Param'#232'tres limites'
          Color = clBtnHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object LabelAngleHoraireLimiteEst_unite_FerACheval: TLabel
            Left = 330
            Top = 35
            Width = 56
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'minutes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object LabelDeclinaisonLimite_unite_FerACheval: TLabel
            Left = 330
            Top = 137
            Width = 49
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'degr'#233's'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object LabelAngleHoraireLimiteEst1_FerACheval: TLabel
            Left = 18
            Top = 35
            Width = 188
            Height = 36
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            AutoSize = False
            Caption = 'Angle horaire limite Est '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object LabelDeclinaisonLimite_FerACheval: TLabel
            Left = 18
            Top = 137
            Width = 210
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'D'#233'clinaison limite sous le p'#244'le'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object LabelAngleHoraireLimiteOuest1_FerACheval: TLabel
            Left = 18
            Top = 86
            Width = 138
            Height = 40
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Angle horaire limite Ouest'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object LabelAngleHoraireLimiteOuest_unite_FerACheval: TLabel
            Left = 330
            Top = 86
            Width = 56
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'minutes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object SpinEdit_DeclinaisonLimite_FerACheval: TSpinEdit
            Left = 248
            Top = 132
            Width = 75
            Height = 32
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Symbol'
            Font.Style = []
            Increment = 5
            MaxValue = 90
            MinValue = -90
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Value = -50
          end
          object SpinEdit_AngleHoraireLimiteOuest_FerACheval: TSpinEdit
            Left = 248
            Top = 81
            Width = 75
            Height = 32
            Hint = 'T'#233'lescope '#224' l'#39'Ouest, contrepoids '#224' l'#39'Est'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Symbol'
            Font.Style = []
            Increment = 5
            MaxValue = 540
            MinValue = 360
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Value = 420
            OnChange = Modification_angle_horaire_limite_Ouest_FerACheval
          end
          object SpinEdit_AngleHoraireLimiteEst_FerACheval: TSpinEdit
            Left = 246
            Top = 30
            Width = 75
            Height = 32
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Symbol'
            Font.Style = []
            Increment = 5
            MaxValue = -360
            MinValue = -540
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            Value = -420
            OnChange = Modification_angle_horaire_limite_Est_FerACheval
          end
        end
        object GroupBox_Parametres_Pointage_FerACheval: TGroupBox
          Left = 402
          Top = 216
          Width = 407
          Height = 282
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Param'#232'tres du pointage'
          Color = clBtnHighlight
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          object LabelRayon_FerACheval: TLabel
            Left = 18
            Top = 173
            Width = 180
            Height = 80
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 
              'Rayon de d'#233'placement    a priori sans retournement ni d'#233'retourne' +
              'ment'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object LabelRayonUnite_FerACheval: TLabel
            Left = 330
            Top = 191
            Width = 49
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'degr'#233's'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label98: TLabel
            Left = 330
            Top = 245
            Width = 69
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'secondes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label99: TLabel
            Left = 18
            Top = 245
            Width = 120
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'D'#233'lai de d'#233'cision'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label124: TLabel
            Left = 330
            Top = 53
            Width = 56
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'minutes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label_Anticipation_FerACheval: TLabel
            Left = 18
            Top = 42
            Width = 152
            Height = 60
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Temps d'#39'anticipation des retournements et d'#233'retournements'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label121: TLabel
            Left = 18
            Top = 134
            Width = 235
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Temps de poursuite horaire >'
            Color = clBtnHighlight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label_Temps_de_Poursuite_Horaire_Minimal_FerACheval: TLabel
            Left = 279
            Top = 134
            Width = 36
            Height = 19
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Alignment = taRightJustify
            AutoSize = False
            Caption = '120'
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clBlue
            Font.Height = -17
            Font.Name = 'Symbol'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label132: TLabel
            Left = 330
            Top = 134
            Width = 64
            Height = 20
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'minutes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpinEdit_Rayon_Minimal_FerACheval: TSpinEdit
            Left = 248
            Top = 186
            Width = 75
            Height = 32
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Symbol'
            Font.Style = []
            Increment = 5
            MaxValue = 360
            MinValue = 0
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Value = 0
          end
          object SpinEdit_Delai_Decision_FerACheval: TSpinEdit
            Left = 248
            Top = 240
            Width = 75
            Height = 32
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Symbol'
            Font.Style = []
            Increment = 5
            MaxValue = 300
            MinValue = 0
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Value = 20
          end
          object SpinEdit_Anticipation_Retournement_FerACheval: TSpinEdit
            Left = 248
            Top = 48
            Width = 75
            Height = 32
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Enabled = False
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Symbol'
            Font.Style = []
            Increment = 5
            MaxValue = 60
            MinValue = -60
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 2
            Value = -60
            OnChange = SpinEdit_Anticipation_Retournement_FerAChevalChange
          end
          object CheckBox_Optimiser_Poursuite_FerACheval: TCheckBox
            Left = 246
            Top = 96
            Width = 102
            Height = 26
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Optimiser'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            State = cbChecked
            TabOrder = 3
            OnClick = CheckBox_Optimiser_Poursuite_FerAChevalClick
          end
        end
        object GroupBox_Retournement_FerACheval: TGroupBox
          Left = 17
          Top = 329
          Width = 376
          Height = 162
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Retournements sur ordre'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          object Label_Consigne_Retournement_FerACheval: TLabel
            Left = 15
            Top = 71
            Width = 254
            Height = 168
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 
              'Mode d'#39'emploi : pour retourner (ou d'#233'retourner) le t'#233'lescope, il' +
              ' suffit de renouveler l'#39'ordre de pointage en maintenant simultan' +
              #233'ment appuy'#233'e la touche '#171' CONTR'#212'LE '#187'.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -18
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
            Visible = False
            WordWrap = True
          end
          object CheckBox_Retournement_FerACheval: TCheckBox
            Left = 15
            Top = 33
            Width = 314
            Height = 26
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Autoriser les retournements sur ordre'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = CheckBox_Retournement_FerAChevalClick
          end
        end
      end
    end
    object TabSheet_Aide: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Aide'
      ImageIndex = 6
      object GroupBox_aide_fourche_Parametres: TGroupBox
        Left = 5
        Top = 3
        Width = 813
        Height = 237
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Param'#232'tres d'#39'une monture '#224' fourche'
        Color = clBtnHighlight
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        object Label61: TLabel
          Left = 12
          Top = 30
          Width = 222
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'La d'#233'clinaison polaire limite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label62: TLabel
          Left = 258
          Top = 30
          Width = 503
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'est '#233'gale '#224' +90'#176' dans l'#39'h'#233'misph'#232're Nord  (-90'#176' dans l'#39'h'#233'misph'#232're' +
            ' Sud ) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label63: TLabel
          Left = 12
          Top = 54
          Width = 326
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'dans le cas o'#249' rien n'#39'emp'#232'che de viser le p'#244'le.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label64: TLabel
          Left = 12
          Top = 78
          Width = 755
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'En choisissant une valeur absolue inf'#233'rieure '#224' 90'#176', le pointage ' +
            'sera interdit pour toute d'#233'clinaison comprise '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label65: TLabel
          Left = 12
          Top = 102
          Width = 299
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'entre le d'#233'clinaison polaire limite et le p'#244'le.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label66: TLabel
          Left = 59
          Top = 126
          Width = 658
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'Remarque : les montures '#224' berceau doivent '#234'tre consid'#233'r'#233'es comme' +
            ' des montures '#224' fourche'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label67: TLabel
          Left = 59
          Top = 150
          Width = 292
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = ' qui ne peuvent pas pointer jusqu'#39'au p'#244'le.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label_Delai_Decision1: TLabel
          Left = 12
          Top = 186
          Width = 160
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Le d'#233'lai de d'#233'cision'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label_Delai_Decision2: TLabel
          Left = 194
          Top = 186
          Width = 540
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'est le temps au bout  duquel la d'#233'cision (raisonnable) de renonc' +
            'er sera prise '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label_Delai_Decision3: TLabel
          Left = 12
          Top = 210
          Width = 531
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'automatiquement par d'#233'faut si l'#39'on demande un pointage trop pr'#232's' +
            ' du p'#244'le.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label91: TLabel
          Left = 59
          Top = 234
          Width = 689
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'Remarque : ce temps peut '#234'tre choisi nul et dans ce cas la quest' +
            'ion de renoncer ou de pres'#233'v'#233'rer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label94: TLabel
          Left = 59
          Top = 258
          Width = 602
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'ne sera m'#234'me pas pos'#233'e. Le pointage trop pr'#232's du p'#244'le sera tout ' +
            'simplement interdit.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object GroupBox_aide_FerACheval_Pointage: TGroupBox
        Left = 6
        Top = 224
        Width = 813
        Height = 288
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Pointage d'#39'une monture fer '#224' cheval'
        Color = clBtnHighlight
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Visible = False
        object Label56: TLabel
          Left = 393
          Top = 132
          Width = 308
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'permet d'#39'imposer des pointages successifs,'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label59: TLabel
          Left = 11
          Top = 132
          Width = 419
          Height = 24
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Le rayon de d'#233'placement sans retournement'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label78: TLabel
          Left = 12
          Top = 156
          Width = 780
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'sans retournement ni d'#233'retournement, sauf d'#233'passement de ce rayo' +
            'n et sauf p'#233'n'#233'tration en zone hors limites.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 11
          Top = 78
          Width = 771
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'd'#39'augmenter le temps de poursuite horaire possible sans retourne' +
            'ment ou d'#233'retournement. La case '#224' cocher '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 11
          Top = 30
          Width = 506
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Le temps d'#39'anticipation des retournements et d'#233'retournements'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 546
          Top = 30
          Width = 242
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'permet de diminuer l'#39'angle horaire '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 12
          Top = 54
          Width = 739
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'de pointage non retourn'#233' '#224' l'#39'Est ainsi que l'#39'angle horaire de po' +
            'intage retourn'#233' '#224' l'#39'Ouest, permettant ainsi '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label52: TLabel
          Left = 11
          Top = 186
          Width = 160
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Le d'#233'lai de d'#233'cision'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label112: TLabel
          Left = 192
          Top = 186
          Width = 582
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'est le temps au bout duquel les choix qui sont propos'#233's seront a' +
            'dopt'#233's par d'#233'faut.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label125: TLabel
          Left = 11
          Top = 210
          Width = 861
          Height = 24
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'Remarque : cela vaut aussi bien pour la confirmation, '#224' l'#39'initia' +
            'lisation, de l'#39#233'tat retourn'#233' ou non retourn'#233' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label126: TLabel
          Left = 11
          Top = 234
          Width = 871
          Height = 24
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'du t'#233'lescope conform'#233'ment '#224' la derni'#232're situation connue que pou' +
            'r le renoncement '#224' tenter de pointer '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label127: TLabel
          Left = 11
          Top = 258
          Width = 781
          Height = 24
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'en zone hors limites. La valeur z'#233'ro implique que les questions ' +
            'ne seront m'#234'me plus pos'#233'es.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label128: TLabel
          Left = 11
          Top = 102
          Width = 714
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'permet d(obtenir le temps de poursuite maximal compatible avec l' +
            'es param'#232'tres limites de la monture.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object GroupBox_aide_FerACheval_Parametres: TGroupBox
        Left = 6
        Top = 5
        Width = 813
        Height = 213
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Param'#232'tres d'#39'une monture fer '#224' cheval'
        Color = clBtnHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        Visible = False
        object Label49: TLabel
          Left = 11
          Top = 30
          Width = 199
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'L'#39'angle horaire limite Est'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label50: TLabel
          Left = 230
          Top = 30
          Width = 480
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'correspond '#224' l'#39'amplitude extr'#234'me '#224' l'#39'Est, juste avant la fin de ' +
            'course.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label55: TLabel
          Left = 11
          Top = 54
          Width = 519
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'Cet angle horaire est n'#233'cessairement inf'#233'rieur '#224' -6 heures (-360' +
            ' minutes).'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label57: TLabel
          Left = 11
          Top = 138
          Width = 264
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'La d'#233'clinaison limite sous le p'#244'le'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label72: TLabel
          Left = 302
          Top = 138
          Width = 396
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'est mesur'#233'e sur le m'#233'ridien, le t'#233'lescope '#233'tant retourn'#233'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label74: TLabel
          Left = 12
          Top = 84
          Width = 220
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'L'#39'angle horaire limite Ouest'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label75: TLabel
          Left = 254
          Top = 84
          Width = 499
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'correspond '#224' l'#39'amplitude extr'#234'me '#224' l'#39'Ouest, juste avant la fin d' +
            'e course.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label76: TLabel
          Left = 12
          Top = 108
          Width = 536
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'Cet angle horaire est n'#233'cessairement sup'#233'rieur '#224' +6 heures (+360' +
            ' minutes).'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label73: TLabel
          Left = 50
          Top = 162
          Width = 883
          Height = 24
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'Remarque : si cette d'#233'clinaison est nulle (ce que l'#39'on souhaite)' +
            ', cela signifie que le t'#233'lescope peut pointer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label77: TLabel
          Left = 50
          Top = 186
          Width = 871
          Height = 24
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'dans toutes les directions du ciel, y compris jusqu'#39'aux horizons' +
            ' Nord, Est et Ouest, quand il est retourn'#233'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object GroupBox_aide_allemande_Parametres: TGroupBox
        Left = 5
        Top = 3
        Width = 813
        Height = 249
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Param'#232'tres d'#39'une monture allemande'
        Color = clBtnHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        Visible = False
        object Label31: TLabel
          Left = 11
          Top = 30
          Width = 237
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'L'#39'angle horaire critique Ouest'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label36: TLabel
          Left = 272
          Top = 30
          Width = 481
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'est l'#39'angle horaire maximal '#224' l'#39'Ouest du m'#233'ridien, pour lequel o' +
            'n peut'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 11
          Top = 54
          Width = 575
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'atteindre toutes les d'#233'clinaisons, t'#233'lescope non retourn'#233' (Tube ' +
            #224' l'#39'Ouest du pied).'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 11
          Top = 138
          Width = 216
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'L'#39'angle horaire critique Est'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label39: TLabel
          Left = 249
          Top = 138
          Width = 525
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'est l'#39'angle horaire minimal '#224' l'#39'Est du m'#233'ridien, pour lequel on ' +
            'peut atteindre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label60: TLabel
          Left = 11
          Top = 162
          Width = 613
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'toutes les d'#233'clinaisons, t'#233'lescope retourn'#233' (Tube '#224' l'#39'Est du pie' +
            'd). Cet angle est n'#233'gatif.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 12
          Top = 84
          Width = 233
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'La d'#233'clinaison critique Ouest'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label44: TLabel
          Left = 267
          Top = 84
          Width = 517
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'est la d'#233'clinaison '#224' partir de laquelle le pointage au-del'#224' de l' +
            #39'angle horaire'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 12
          Top = 108
          Width = 481
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'critique Ouest ne peut plus se faire si le t'#233'lescope n'#39'est pas r' +
            'etourn'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label47: TLabel
          Left = 11
          Top = 192
          Width = 212
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'La d'#233'clinaison critique Est'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label69: TLabel
          Left = 243
          Top = 192
          Width = 521
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'est la d'#233'clinaison '#224' partir de laquelle le pointage en de'#231#224' de l' +
            #39'angle horaire'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label80: TLabel
          Left = 12
          Top = 216
          Width = 424
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'critique Est ne peut plus se faire si le t'#233'lescope est retourn'#233'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object GroupBox_aide_fourche_Pointage: TGroupBox
        Left = 5
        Top = 321
        Width = 813
        Height = 185
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Pointage d'#39'une monture '#224' fourche'
        Color = clBtnHighlight
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Visible = False
        object Label53: TLabel
          Left = 329
          Top = 30
          Width = 234
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'est de la plus grande importance.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 329
          Top = 156
          Width = 4
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label48: TLabel
          Left = 11
          Top = 102
          Width = 431
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'l'#39'angle horaire -11h 59min en faisant le tour du ciel en arri'#232're' +
            '. '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
        end
        object Label51: TLabel
          Left = 11
          Top = 78
          Width = 776
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'attach'#233's au t'#233'lescope. Cela se fait au prix d'#39'un peu de patience' +
            ' : on passe alors de l'#39'angle horaire  +11h 59min'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label54: TLabel
          Left = 11
          Top = 30
          Width = 289
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Le choix de l'#39'algorithme de pointage'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label58: TLabel
          Left = 12
          Top = 54
          Width = 735
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'Le pointage rapide doit '#234'tre banni si l'#39'on veut '#233'viter de faire ' +
            'des tours dans l'#39'ensemble des fils '#233'lectriques'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label110: TLabel
          Left = 60
          Top = 126
          Width = 721
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'Remarque : dans le cas o'#249' l'#39'antim'#233'ridien a '#233't'#233' franchi du fait d' +
            'e la poursuite hoaire, le pointage suivant'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label111: TLabel
          Left = 62
          Top = 150
          Width = 400
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'en tient compte et pr'#233'voit un retour en arri'#232're pr'#233'aqlable.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object GroupBox_aide_allemande_Pointage: TGroupBox
        Left = 5
        Top = 266
        Width = 813
        Height = 241
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Pointage d'#39'une monture allemande'
        Color = clBtnHighlight
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Visible = False
        object Label83: TLabel
          Left = 11
          Top = 54
          Width = 766
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            #224' partir duquel le pointage se fait dans un '#233'tat retourn'#233', le tu' +
            'be du t'#233'lescope se trouvant alors '#224' l'#39'Est du pied.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label84: TLabel
          Left = 12
          Top = 84
          Width = 419
          Height = 24
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Le rayon de d'#233'placement sans retournement'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label85: TLabel
          Left = 393
          Top = 84
          Width = 304
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'permet d'#39'imposer des pointages successifs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label86: TLabel
          Left = 12
          Top = 108
          Width = 763
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'sans retournement (ni d'#233'-retournement) sauf d'#233'passement de ce ra' +
            'yon et sauf p'#233'n'#233'tration en zone critique.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label101: TLabel
          Left = 11
          Top = 138
          Width = 160
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Le d'#233'lai de d'#233'cision'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label107: TLabel
          Left = 192
          Top = 138
          Width = 582
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'est le temps au bout duquel les choix qui sont propos'#233's seront a' +
            'dopt'#233's par d'#233'faut.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label106: TLabel
          Left = 11
          Top = 210
          Width = 439
          Height = 48
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'sur ordre. La valeur z'#233'ro implique que les questions ne seront m' +
            #234'me pas pos'#233'es.  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label108: TLabel
          Left = 11
          Top = 186
          Width = 549
          Height = 48
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            't'#233'lescope conform'#233'ment '#224' la derni'#232're situation connue que pour l' +
            'es d'#233'cisions concernant le retournement'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label109: TLabel
          Left = 11
          Top = 162
          Width = 747
          Height = 48
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'Remarque : cela vaut aussi bien pour la confirmation, '#224' l'#39'initia' +
            'lisation, de l'#39#233'tat retourn'#233' ou non retourn'#233'. du'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label81: TLabel
          Left = 12
          Top = 29
          Width = 506
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Le temps d'#39'anticipation des retournements et d'#233'retournements'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label82: TLabel
          Left = 546
          Top = 29
          Width = 242
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'permet de diminuer l'#39'angle horaire '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object TabSheet_Observatoire: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Observatoire'
      ImageIndex = 3
      object Label27: TLabel
        Left = 9
        Top = 11
        Width = 730
        Height = 20
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 
          'Ces informations sont importantes pour le retournement de la mon' +
          'ture allemande h'#233'misphere Sud/Nord'
      end
      object GroupBox5: TGroupBox
        Left = 9
        Top = 39
        Width = 404
        Height = 239
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        TabOrder = 0
        object Label8: TLabel
          Left = 12
          Top = 38
          Width = 71
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Longitude'
        end
        object Label2: TLabel
          Left = 132
          Top = 30
          Width = 5
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = #176
        end
        object Label4: TLabel
          Left = 183
          Top = 27
          Width = 3
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = #39
        end
        object Label9: TLabel
          Left = 231
          Top = 42
          Width = 24
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = '.     '
        end
        object Label6: TLabel
          Left = 282
          Top = 30
          Width = 18
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = '"   '
        end
        object Altitude: TLabel
          Left = 12
          Top = 131
          Width = 54
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Altitude'
        end
        object m: TLabel
          Left = 210
          Top = 132
          Width = 49
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'm'#232'tres'
        end
        object Label1: TLabel
          Left = 12
          Top = 84
          Width = 58
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Latitude'
        end
        object Label3: TLabel
          Left = 132
          Top = 78
          Width = 5
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = #176
        end
        object Label10: TLabel
          Left = 231
          Top = 90
          Width = 20
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = '.    '
        end
        object Label7: TLabel
          Left = 276
          Top = 78
          Width = 22
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = '"    '
        end
        object Label5: TLabel
          Left = 183
          Top = 75
          Width = 3
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = #39
        end
        object NbreEditLongDeg: NbreEdit
          Left = 96
          Top = 30
          Width = 38
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 0
          Text = '4'
          TypeData = 0
        end
        object NbreEditLongMin: NbreEdit
          Left = 144
          Top = 30
          Width = 38
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 1
          Text = '34'
          TypeData = 0
        end
        object NbreEditLongSec: NbreEdit
          Left = 192
          Top = 30
          Width = 38
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 2
          Text = '22'
          TypeData = 0
        end
        object NbreEditLongSec100: NbreEdit
          Left = 240
          Top = 30
          Width = 38
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 3
          Text = '00'
          ValMax = 99.000000000000000000
          TypeData = 0
        end
        object CheckBoxEast: TCheckBox
          Left = 306
          Top = 36
          Width = 74
          Height = 26
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Est'
          TabOrder = 4
        end
        object NbreEditAltitude: NbreEdit
          Left = 96
          Top = 126
          Width = 98
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 5
          Text = '20'
          ValMax = 10000.000000000000000000
          TypeData = 0
        end
        object NbreEditLatDeg: NbreEdit
          Left = 96
          Top = 78
          Width = 38
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 6
          Text = '48'
          TypeData = 0
        end
        object NbreEditLatMin: NbreEdit
          Left = 144
          Top = 78
          Width = 38
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 7
          Text = '21'
          TypeData = 0
        end
        object NbreEditLatSec: NbreEdit
          Left = 192
          Top = 78
          Width = 38
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 8
          Text = '39'
          TypeData = 0
        end
        object NbreEditLatSec100: NbreEdit
          Left = 240
          Top = 78
          Width = 38
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 9
          Text = '00'
          ValMax = 99.000000000000000000
          TypeData = 0
        end
        object CheckBoxSouth: TCheckBox
          Left = 306
          Top = 84
          Width = 86
          Height = 26
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Sud'
          TabOrder = 10
        end
        object Button_Appliquer_LatLong: TButton
          Left = 144
          Top = 180
          Width = 113
          Height = 38
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Appliquer'
          TabOrder = 11
          OnClick = Button_Appliquer_LatLongClick
        end
      end
    end
    object TabSheet_Jeux_mecaniques: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Jeux m'#233'caniques'
      ImageIndex = 5
      object GroupBox_Parametres_Correction_Jeux: TGroupBox
        Left = 24
        Top = 84
        Width = 758
        Height = 410
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Param'#232'tres'
        TabOrder = 0
        object Label11: TLabel
          Left = 204
          Top = 36
          Width = 58
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Valeur : '
        end
        object Label12: TLabel
          Left = 327
          Top = 36
          Width = 98
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'minutes d'#39'arc.'
        end
        object Label15: TLabel
          Left = 204
          Top = 72
          Width = 240
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Pause avant une correction de jeu'
        end
        object NbreEditBacklash: NbreEdit
          Left = 275
          Top = 33
          Width = 37
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 0
          Text = '10'
          ValMax = 60.000000000000000000
          TypeData = 0
        end
        object ComboBoxPauseBacklash: TComboBox
          Left = 468
          Top = 66
          Width = 62
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 1
          Text = '0s'
          Items.Strings = (
            '0s'
            '1s'
            '2s'
            '3s'
            '4s'
            '5s')
        end
        object RadioGroup_Mode_Correction_Delta: TRadioGroup
          Left = 24
          Top = 120
          Width = 710
          Height = 266
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Mode de correction de jeu en d'#233'clinaison'
          ItemIndex = 0
          Items.Strings = (
            'Pas de correction de jeu en d'#233'clinaison'
            
              'Correction de jeu en d'#233'clinaison lors d'#39'un d'#233'placement vers le N' +
              'ord'
            
              'Correction de jeu en d'#233'clinaison lors d'#39'un d'#233'placement vers le S' +
              'ud'
            
              'Correction de jeu en d'#233'clinaison lors d'#39'un d'#233'placement vers le Z' +
              #233'nith'
            
              'Correction de jeu en d'#233'clinaison lors d'#39'un d'#233'placement vers l'#39'Ho' +
              'rizon')
          TabOrder = 2
        end
      end
      object CheckBoxActivateBacklash: TCheckBox
        Left = 24
        Top = 33
        Width = 338
        Height = 26
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Activer la correction des jeux m'#233'caniques'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = CheckBoxActivateBacklashClick
      end
    end
    object TabSheet_Port_COM: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Port COM (avanc'#233')'
      ImageIndex = 7
      object GroupBox11: TGroupBox
        Left = 3
        Top = 0
        Width = 803
        Height = 497
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Options avanc'#233'es de port COM'
        TabOrder = 0
        object ImageMOXA: TImage
          Left = 342
          Top = 32
          Width = 452
          Height = 438
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Picture.Data = {
            0A544A504547496D616765A5560000FFD8FFE000104A46494600010001006000
            600000FFFE001F4C45414420546563686E6F6C6F6769657320496E632E205631
            2E303100FFDB00840008050607060508070607090808090C140D0C0B0B0C1811
            120E141D191E1E1C191C1B20242E2720222B221B1C2836282B2F313334331F26
            383C38323C2E323331010809090C0A0C170D0D1731211C213131313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            31313131313131313131FFC401A2000001050101010101010000000000000000
            0102030405060708090A0B010003010101010101010101000000000000010203
            0405060708090A0B100002010303020403050504040000017D01020300041105
            122131410613516107227114328191A1082342B1C11552D1F02433627282090A
            161718191A25262728292A3435363738393A434445464748494A535455565758
            595A636465666768696A737475767778797A838485868788898A929394959697
            98999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3
            D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FA1100020102
            0404030407050404000102770001020311040521310612415107617113223281
            08144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A
            35363738393A434445464748494A535455565758595A636465666768696A7374
            75767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9
            AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5
            E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFC0001108015B0134030111000211010311
            01FFDA000C03010002110311003F00DC92EF51BBBDBA8B4B36B1A584823956E1
            1899DCA2BED0548D836BA8DC43724FCBF2FCDE95DDF438AC96E125DEA3777B75
            16966D634B090472ADC23133B9457DA0A91B06D751B886E49F97E5F98BBBE816
            4B72A58789BED9AE5A5B2C1B2CAFAC21B98256E1C492798C236033D523639E83
            6119391494F5B0DC6C8B1A3EB526A3AEEA9682155B5B358FC9941F9A525A5490
            91D8078CAE3FD92724114E32BB684D5922BE9FABEA2F796ED72D6AF6D777F736
            71C71C2C8F1F9666C3172E436443D368FBD9CF182949DC6D22EA78874C686E26
            170CB15BC2D3B3B42EAAF1AF2CF1923F78A38E532395F5197CC85CAC8AC3C496
            97FAD49A7DB473BAAC292A4E2093CB93717E8DB76EDC2021B386CF19C50A69BB
            038B4AE3DAEF516D71ED90DAC50C7B5961951B7DC47C6E91240703696C15DA4F
            032543A905DDEC165621BEF14D85BD97DA6DFCDBA1E7C316D8E19092B2385120
            0149642371561F2B118049349CD24351632D7C4F6D7735DC48B3DAFD9EE62844
            9716730570FE571CAAED6264DA01391C360AD0A69872D8BD6BAE69B7778D6B6F
            73BE5591E23F2305F31090C9B88C6F1B49DB9CED1BB18E69A926EC2E56865BF8
            874C9E668D2E1902C2F3F9B2C2F1C4D1AE373AC8C02B28DCA72091820F4A1490
            72B45EB4B94BBB749E259551F3812C4D137071CAB0047E22A93B89AB135020A0
            02800A002800A002800A002800A002800A002800A002800A002800A002800A00
            2800A00B3A57FC852D3FEBB27FE842A67F0B2A3F121BF103C737FE04D434FBFD
            46CBED5E1ABA8FC9925B790FDAA2B9C330F95982B2155FCC3127801BCE3B84B4
            D635CD6FE185F6B1ADDBC162D7C865B486DE6672B6AFB7679849C16209CE3030
            4700E40008354FB967FF005C0FFE8C7AD6B7C6CCE97C28CCB8D36E96EE6974CB
            D5B45BB60D721A1F318B050BBE32480ADB540E432FCAA76FDEDDD967D0E5BF70
            B8D36E96EE6974CBD5B45BB60D721A1F318B050BBE32480ADB540E432FCAA76F
            DEDC59F40BF72BCBE1B84453C5692FD9D0DA5BDBDB0DA5BECED033B46FC9F9B0
            CCA707AEDE739A5C9D87CC5BD3B48874EBC692D4EC805A41691C3C9D8B11931F
            31393C498FC3BE69A8D9E826EE3347D0ACF4B927B88E080DDCF34D23DCAC2164
            612485F696EA40C81D7F845118A40E4D99FF00F08B48DA749632DFA98A3D3A5D
            3AD0AC1B5A38DC28CBFCC77B0F2D391B07DEE39189E4D2DF21F36B7358D8489A
            D7DBE09D556585619E378F716085CA6D208DA73236721B2318C75376D6E4DF4B
            10DF69B75777D139BD55B58E649C2793FBD465EC920230A7904152486719008C
            269B634EC67E9DE138EC34C96C6DDACE250D03432C3662390989C3219886FDE9
            C819C6DCE5B18CF12A16561B95DDCB126857123CA5EF62D9713DBDD4C05B904C
            D134592A77F085610369048249DC7A53E561CC4D0689E57D8FFD233F65BF9EF3
            EE63779BE77CBD78C79DD7BEDE833C35115CC6D02D2E7FB46D8594F3B5B5869D
            2DA40D73A7C902C5931797B83ED691888DB715207CA384CF3114EFA14DE8749A
            4597F6769F15AF99E67979390BB557249DAABCED419C2AE4E1401938AD12B2B1
            0DDD96E9882800A002800A002800A002800A002800A002800A002800A002800A
            002800A002800A0028026B1992DEF609E52447148AEC429240072781C9FC2A67
            F0B2A3BA2A6B0BE15D73C4367AC6B761AA5FB595B9821B3B8B62F6AA49E64F2C
            8C17238C9E30178C80470724BB1D9CD1EE56B51A3687E0ED4741D063D65A0B89
            1E5822BA8D9D60DC41F2D0E321320900E4E49249CE68E49760E68F72EEA9F72C
            FF00EB81FF00D18F575BE364D2F851DDFD82CFFE7D20FF00BF6BFE153CF2EE5F
            247B07D82CFF00E7D20FFBF6BFE1473CBB87247B07D82CFF00E7D20FFBF6BFE1
            473CBB87247B07D82CFF00E7D20FFBF6BFE1473CBB87247B07D82CFF00E7D20F
            FBF6BFE1473CBB87247B07D82CFF00E7D20FFBF6BFE1473CBB87247B07D82CFF
            00E7D20FFBF6BFE1473CBB87247B07D82CFF00E7D20FFBF6BFE1473CBB87247B
            07D82CFF00E7D20FFBF6BFE1473CBB87247B07D82CFF00E7D20FFBF6BFE1473C
            BB87247B07D82CFF00E7D20FFBF6BFE1473CBB87247B07D82CFF00E7D20FFBF6
            BFE1473CBB87247B07D82CFF00E7D20FFBF6BFE1473CBB87247B07D82CFF00E7
            D20FFBF6BFE1473CBB87247B07D82CFF00E7D20FFBF6BFE1473CBB87247B07D8
            2CFF00E7D20FFBF6BFE1473CBB87247B07D82CFF00E7D20FFBF6BFE1473CBB87
            247B07D82CFF00E7D20FFBF6BFE1473CBB87247B07D82CFF00E7D20FFBF6BFE1
            473CBB87247B07D82CFF00E7D20FFBF6BFE1473CBB87247B07D82CFF00E7D20F
            FBF6BFE1473CBB87247B07D82CFF00E7D20FFBF6BFE1473CBB87247B07D82CFF
            00E7D20FFBF6BFE1473CBB87247B07D82CFF00E7D20FFBF6BFE1473CBB87247B
            07D82CFF00E7D20FFBF6BFE1473CBB87247B07D82CFF00E7D20FFBF6BFE1473C
            BB87247B07D82CFF00E7D20FFBF6BFE1473CBB87247B07D82CFF00E7D20FFBF6
            BFE1473CBB87247B07D82CFF00E7D20FFBF6BFE1473CBB87247B07D82CFF00E7
            D20FFBF6BFE1473CBB87247B07D82CFF00E7D20FFBF6BFE1473CBB87247B07D8
            2CFF00E7D20FFBF6BFE1473CBB87247B07D82CFF00E7D20FFBF6BFE1473CBB87
            247B07D82CFF00E7D20FFBF6BFE1473CBB87247B07D82CFF00E7D20FFBF6BFE1
            473CBB87247B07D82CFF00E7D20FFBF6BFE1473CBB87247B07D82CFF00E7D20F
            FBF6BFE1473CBB87247B07D82CFF00E7D20FFBF6BFE1473CBB87247B1C9F8CA3
            48B5285224544100C2A8C01F3354B6DEE3B5B63B5A430A002800A002800A0028
            00A002800A002800A002800A002800A002800A002800A002800A002800A00280
            0A002800A002800A002800A002800A002800A002800A00E33C6DFF002158BFEB
            80FF00D09A811DA2FDE1F5A061B8FB7E54006E3EDF95001B8FB7E54006E3EDF9
            5001B8FB7E54006E3EDF95001B8FB7E54006E3EDF95001B8FB7E54006E3EDF95
            001B8FB7E54006E3EDF95001B8FB7E54006E3EDF95001B8FB7E54006E3EDF950
            01B8FB7E54006E3EDF95001B8FB7E54006E3EDF95001B8FB7E54006E3EDF9500
            1B8FB7E54006E3EDF95001B8FB7E54006E3EDF95001B8FB7E54006E3EDF95001
            B8FB7E54006E3EDF95001B8FB7E54006E3EDF95001B8FB7E54006E3EDF95001B
            8FB7E540106A0ECB6170CA76B0898823823834089A819C678DBFE42B17FD701F
            FA135023B45FBC3EB40C4A002800A002800A002800A002800A002800A002800A
            002800A002800A002800A002800A002800A002800A002800A002800A002800A0
            02800A002800A00AFA8FFC83EE7FEB937F23408B140CE33C6DFF002158BFEB80
            FF00D09A811DA2FDE1F5A0625001401E4FE13D3E6D0FC13A5789E2D0B47B04D3
            348FB74B3594C45C6A4A2D5BF752FEE9768662B21259F0C8BC1FBC011D349AF6
            BB67E25B1D02E66D3A69E6B881A4B98ED1E35F25E3BA7282332B10F9B4FBFB88
            F9FEEFCBC80665C4777AB7C19D063D47509CDCDF7F6507BB818A4CBBEE20C386
            258F98011F377619C0CE000169E22BB8BC47AAC934700D56D62D174FBF8C29F2
            D6496EA55729CF2A5260EB93901977004328009357F1CEA30EABAC269ADA74B6
            7A3A5E4F26519DA65B686D1DA20C1C047DD3C8A5886DBB47CA48390005DEBBA8
            78EADECE2BCD3A1D434DB7BDB796E5AC9DE29948B0972B179A0A1FDEA8E5DBEE
            93FC58500349F1CEB7ABDD5A5DDA69091694CF6714E5DE2C2B5C450C9FEB5A55
            20AF9EA02885B79500105F0A01D37832FB51D57C39A6EA9A9CB6ACF7D650DC6C
            B781A308CE0B1192ED91B5907D558FF100A01B740C2800A00E63C4D6717FC255
            E15BDDD3F9BF6F7876F9EFE5EDFB25D1CF979D9BB3FC58DD8E338E281143C6DA
            77F69F8C34387FB174BD676D85EBF91A9BED8D7F796A3703E5C9F3738E838279
            EC402BB6A1ABF8634DBFB580D888F42B06D52785A37903C724970EB6D0B065F2
            D6358BCB572AC31B4EC50BB48066788F5CD76E2D750B94BF4B548B4DF106D4B7
            474216DE58E289B3BFFD6061BB7E380CC028CEEA00EABED58D77FE11F3069634
            5317D916DB66437EEB718F8F943042BFB82A331B6F572159140332DADA6D6FE1
            F7844DCC96B7D3CB6F6D2C969A94C447A931B66251D88624827CDFBADCC40E07
            DE0011B788350B6B2D2B4CF0A691B6593ED9E64402DC25BFD9E6589D103CD0FE
            EF7BFCA770C2AA80801C2006669FE27D6DF52BD8F43D3524BCD52E05EC823315
            DAC4AB65619504CD0AB8CCC3E70FFC3C290D9500E8F45F11EA7ABB7DB55B4BB2
            B2825B6826B7964F30C8F3450C994B856D9C19D554046DE546186F054039CD2B
            C59E26B5F0E68EB6F6C9A9BDAE876BA8DEDCC9B1448B207C2BC92CE9E590B11D
            D2E24C925B6AE36B006BCB7DA8EA9E20F0F5E4B2DAA69EBAE5DDB456CB0379AA
            D1417916F6977E083E5B1DA1063701938C900D3F8A16715E7C3FD7BCD69D7C8B
            0B8997CA9DE2CB089F01B691B979E55B2A7B834016358D62EECFC4165690BD8A
            DA3EC1319492FBA472A80907F759DADB095659194C798CED2C0191A4EABABDAF
            C2BD02FBED505C6A575169F17DA2E22775FDFC9126E75DFB9982C992770DCC33
            C6700024B7D7B5DBAD6A4F0F45369D16A16CF3196F5AD1DA291512D9F0B0F9A0
            A93F6B519321FF005678F9B0A0199A678A357F11DE689750C90585B4DAA5BA2C
            0A8EC4C6FA635CC8B236F01F99005F9405281886E9401AFAFEB57763E20BEB6D
            3A1B14B816B66C26780CB332B3DD1602356569B6AC45846A43006461B8808C01
            5FC6A9FDB567E12FF40D2F55FB55F893ECD3CFBED25CD9DC3712796DB947553B
            39C0E0760034CB6D5F47BB8B45D3974BD2A4D43CFBE485227B8B6B28E216F198
            635062CEF690C85B0A01661B589DD401434CF146AFE23BCD12EA1920B0B69B54
            B7458151D898DF4C6B991646DE03F3200BF280A50310DD28037BC4D6717FC255
            E15BDDD3F9BF6F7876F9EFE5EDFB25D1CF979D9BB3FC58DD8E338E2803A7A065
            7D47FE41F73FF5C9BF91A0458A06719E36FF0090AC5FF5C07FE84D408ED17EF0
            FAD0312800A008EDE086D6DE2B7B689218214091C71A8554503000038000ED40
            14F4FD0F48D36248B4ED2AC6CE38E533A2416E918590A942E001C3152573D707
            1D281163EC369E4791F6583CAF37CFF2FCB1B7CCDFE66FC7F7B7FCD9EBBB9EB4
            0C27B1B4B8F3FCFB5825FB4C4209B7C61BCD8C6EC2367AAFCEDC1E3E63EA6802
            BA687A44713451E956291BC4606416E8018CAA214231F74AC71A91D308A3A014
            0866A3E1CD0B547DFA9E8BA75EBEF2FBAE2D5243B8AAA93C83CED4419F4551D8
            5004F2E95A74BA9C5A9CB616AFA8409B22BA6854CB1AF3C2BE3207CCDC03DCFA
            D0324B5B1B4B3DBF64B582DF6C4900F2A30B88D33B138FE15DCD81D064E3AD00
            58A002800A008E582195E2796247781F7C4CCA098DB695CAFA1DACC323B123BD
            000D042D70970D1219E3464490A8DCAAC41600F500955C8EFB47A50057BED2B4
            EBFB8B6B8BFB0B5BA9ECDF7DBC9342AED0B641CA1232A72A391E83D28023BED1
            34CBFD3E5B0BAB181EDA5F377205DB832871230230559848F96183F3B73C9A04
            1FD9307FAFDDFF00132FB2FD97FB4FCA8BED3B7AE776DDBF7BE6DBB76E7F87B5
            000344D33FB121D164B1827D32189214B69D7CD4D898DA086CE71B475CF4CD00
            179A1E917DA7C3A7DEE956373656FB7C9B696DD1E38F68DABB548C0C0240C741
            4006A1A1E91A944F16A3A558DDC724A27749EDD240D205081C82396DA02E7AE0
            63A500492E95A74BA9C5A9CB616AFA8409B22BA6854CB1AF3C2BE3207CCDC03D
            CFAD03239B43D22796DE59F4AB1924B595A7819EDD0986466DECEA48F958B7CC
            48E49E7AD021971E1CD0AEAFE4BEB9D174E9AF2642925C496A8D23A94D841623
            2415F971E9C74A00BF71043756F25BDCC49341321492391432BA9182083C1047
            6A0647358DA4F776F773DAC125CDAEEF22678C178770C36D63CAE47071D6802A
            6AFA069DAAE94DA65CDBA0B392E12E24891176C8CB30988604104330F9B8E773
            7739A0412F87342974C8B4C9745D39F4F81F7C56AD6A8628DB9E5531807E66E4
            0EE7D6802DB58DA3799BAD606F36549E4CC63E79176ED73EAC36260F51B57D05
            0323BED2B4ED41264BFB0B5BA4B84449966855C48A8C590364720312403D0926
            802C4B0432BC4F2C48EF03EF89994131B6D2B95F43B59864762477A00AFAA695
            A76B16EB6FAB585ADFC0AFBD63B9856550D82320302338279F734012358DA379
            9BAD606F36549E4CC63E79176ED73EAC36260F51B57D0500492C10CAF13CB123
            BC0FBE266504C6DB4AE57D0ED66191D891DE8024A00AFA8FFC83EE7FEB937F23
            408B140CE33C6DFF002158BFEB80FF00D09A811DA2FDE1F5A062500140050014
            0050014005001400500140050014005001400500140050014005001400500140
            050014005001400500140050014005001400500140050057D47FE41F73FF005C
            9BF91A0458A06719E36FF90AC5FF005C07FE84D408EC9812A4062A7B11D45032
            0FB3CBFF003F93FE49FF00C4D020FB3CBFF3F93FE49FFC4D001F6797FE7F27FC
            93FF0089A003ECF2FF00CFE4FF00927FF134007D9E5FF9FC9FF24FFE26800FB3
            CBFF003F93FE49FF00C4D001F6797FE7F27FC93FF89A003ECF2FFCFE4FF927FF
            00134007D9E5FF009FC9FF0024FF00E26800FB3CBFF3F93FE49FFC4D001F6797
            FE7F27FC93FF0089A003ECF2FF00CFE4FF00927FF134007D9E5FF9FC9FF24FFE
            26800FB3CBFF003F93FE49FF00C4D001F6797FE7F27FC93FF89A003ECF2FFCFE
            4FF927FF00134007D9E5FF009FC9FF0024FF00E26800FB3CBFF3F93FE49FFC4D
            001F6797FE7F27FC93FF0089A003ECF2FF00CFE4FF00927FF134007D9E5FF9FC
            9FF24FFE26800FB3CBFF003F93FE49FF00C4D001F6797FE7F27FC93FF89A003E
            CF2FFCFE4FF927FF00134007D9E5FF009FC9FF0024FF00E26800FB3CBFF3F93F
            E49FFC4D001F6797FE7F27FC93FF0089A003ECF2FF00CFE4FF00927FF134007D
            9E5FF9FC9FF24FFE26800FB3CBFF003F93FE49FF00C4D001F6797FE7F27FC93F
            F89A003ECF2FFCFE4FF927FF00134007D9E5FF009FC9FF0024FF00E26800FB3C
            BFF3F93FE49FFC4D001F6797FE7F27FC93FF0089A006C966F2C6D1BDDCE55C15
            2309C83FF01A00B540CE33C6DFF2158BFEB80FFD09A811D9D030A002800A0028
            00A002800A002800A002800A002800A002800A002800A002800A002800A00280
            0A002800A002800A002800A002800A002800A002800A002800A00E33C6DFF215
            8BFEB80FFD09A811D9D031A1FE66528E369C678C1E01F5F7A042EE1FDD7FC87F
            8D001B87F75FF21FE34006E1FDD7FC87F8D001B87F75FF0021FE34006E1FDD7F
            C87F8D001B87F75FF21FE34006E1FDD7FC87F8D001B87F75FF0021FE34006E00
            13B5B804F38FF1A0032DFEC7E47FC6802382E23B842F6F2C32A07642C87700CA
            C558707A860411D88228008AE2395E548A585DE07D92AA9C98DB686C373C1DAC
            A707B107BD004996FF0063F23FE340065BFD8FC8FF008D00196FF63F23FE3401
            1CF711DBA07B8961890BAA0673B416660AA393D4B1000EE4814015EFB56B0D3E
            E2DADEFEFECAD67BC7D96F1CD284699B2061016CB1CB0E07A8F5A00B996FF63F
            23FE34011CF711DBA07B8961890BAA0673B416660AA393D4B1000EE481401265
            BFD8FC8FF8D00196FF0063F23FE3401475BBF3A5E992DEB05290156701092577
            0DD8F98738CE3DE802F6E1FDD7FC87F8D001B87F75FF0021FE34006E1FDD7FC8
            7F8D001B87F75FF21FE34006E1FDD7FC87F8D001B87F75FF0021FE34006E1FDD
            7FC87F8D001B87F75FF21FE34006E1FDD7FC87F8D001B87F75FF0021FE34006E
            1FDD7FC87F8D0057B7BD867BBB9B54DCB2DB15DEAD8E8C3208C1E9D47E06802C
            D030A00E33C6DFF2158BFEB80FFD09A811D9D0313F8DBF0FE42811E6FF000E75
            19A0B7D22E3509B51B382E3436BCBA9355BE33ADD3288099E326471122877DC0
            F979F317E53B4EC00D3B5F1DDD4D697DE668DE45DD9792F279CF3C36F1C52170
            24779604915418DB2444CA32A490379400B10789AEE6D62EF4CD3348FF008989
            959DE2BFBF288AA905AB372AB205606E5176282A76BB6EC9E402FF008963D42F
            74AB17B6B5BE1199564BDB2B7B8582E5E331B7C8B22BA80CB218C9C480108C32
            41C300644FE2E1A4E9BA65B699697DA95C5C7DA004BAF3A478441208E4476862
            959991D8206C10DB49321241700AF67E27D72F35C816187C9B49F59860582EB1
            14C90B69BE7C91BAEC3B595B0C3924B6549551920127873C6F35DE9D6B3AE8CF
            169D1BD8DB493C97C659375CC50346172374855A750ECE578F981724A800B16F
            E33D4674B79D342492DF50D364D46C7C9BA6795E356840124623F94ED9D58843
            21F958287380403A5D26F1B50D262BB78D2333445B11CCB2C6C3070C8E386461
            F329C0241190A7200043E28D466D2B40BBBAB4547BC0823B48E4076C970E4242
            870460348C833900672481CD007136B7F7FE1CB5BCD3D60D474D8A64B69A1975
            178669957CD8E1BDB8CC6CF1A85578E625FAC924AEC18640008F45D66E74D935
            AD5349D47FE125B26D50DB3379B00FB44D25A5A881BCC8D428FDE810E15401E6
            EE6FB84D0058D63C47AAE91E20D2EC1F5781E5865B2B2B886EA68A07D41A4745
            79E2B7111765C487959554346C36908770057B5F117882DB42D0EE6F355FB43E
            B3A5C7777137D9E345B25F36D51E54C0C0C477123B17DCBB90361572940126B7
            E22BF82DEC63D2FC536B369D23CF9D66E6686D15D9445B62139864864277CBF7
            235CF9646731BEE00AFAB6B3757A6D21D73594B1BE5D4B4AF274A8D5215BC532
            5ABBCA1254F3C81234A382B8F2B04655B201B7E36BAB7D2750BBBB4BBB16B9BC
            B05864D2AFADCBFF0069A2194AC101DCA0C8C647523127DF8FE5E46E00AFA8EB
            BAE278F5AC63BFB1B6B78EEA08A1B1967024BA85963324AB0885A47C16900759
            1514C7F30C239600C1F0C4B7BA35AE95247A84E931D2F45B268E548FE622F9A2
            B88F1B73BA21279440E57CC1BB2D834017ED7C45E20B6D0B43B9BCD57ED0FACE
            971DDDC4DF678D16C97CDB547953030311DC48EC5F72EE40D855CA50011F8A2E
            425CFD97C59F6EB48754F220BB10C12B5C0FB3C0C1018D024B89247CC49B6575
            0DB1B2855803B1F1D7FC8A5A97FD72FEA28017C5D6F7D71656C2CA3BA9E04B80
            D776F6771E44F345B1C05493726D22431B1F9D72AAC3273B480624FE2E1A4E9B
            A65B699697DA95C5C7DA004BAF3A478441208E4476862959991D8206C10DB493
            21241700922F18ADCDF40F7BA7BE9D671DEA4224B9BA6864889D3DAE9CCD1E02
            80AA42952C4672DC141900A767E2EBAD5F5FD1EC66B49F4DB88AFC19A31E7A24
            D13DADD9507CD8A263F3C2491B0AF0A4127214020D422D4EFF005FF13269D6FA
            DC97B0DD245637716A5E5D9DA39B581977C2661B943B1761E5BE41230DD2802F
            EBFF0010468D7B7D1FF677DAADA08A730CF134DB6496185E578D9CC42218F2A4
            53B64760C3057EF6D00B9A978C24D3358B2B1B9B1491247820BA92D9E697ECD3
            CAC14216F24478CBA1F9DD1B6B03B7950C014F48F1D5DDDC1633DE68F05BC573
            1594EFE55E191A38EEDFCB8300C6BB9B786DE3202A80417276800A0DF10352D5
            34B49F4AD227B5FB44B6725A4F347324724725D42852477842AB324BFF002CCC
            A31BC83C29600B779F1124B77D5648B42BA9ACEC12EC2CC12650CF6EB26EDEC6
            2F2950B44CA1964739299504B0500DFB7D66F8EBF169775A6243BADC48D22DCE
            EF9B196640546F8D5B085810E1997318560C40134BFF0091B75CFF00AE56DFC9
            E80372818500719E36FF0090AC5FF5C07FE84D408ECC0C9C0A06372BB98EF4E7
            1FC43D05023174BF09E85A5DBB5BDBDBF9B01B7FB288EEEEA4B95484800C6A25
            660A8405CA8C03B5739C0C00469E0FD0D3CE6FF4B7966F2F33C9A9DC3CC9B37E
            DD92B485D389241F29190EC0E413401249E13D088221B7FB192E18359DD496CC
            B88D23DAAD1B2954DB146360C29D8A71900D005CBCD1B4DBBD3E1B178921B7B6
            DBE40B694C0D0606D1E5B464327CA4AFCA47CA48E848A00AF3786B4896D2DED8
            2C90ADB6EF2E4B7BC9219BE6397CCA8E1DB73619B24EE6018E480680244F0FE8
            F13A3416B0C1E5BC4E8217F2D51A35DA85429014ECF9091F7930872A00A008EC
            FC33A2D969E2C2D6D923B612C136CF3D8FCF008844725B3F28863FAEDE739390
            0C4D1FC090C17B25C6AD7B0DD27D9DADE0B7B63343140ACE8F94579E4F2CAB45
            1ECF2B66DC71D1768075563676BA7D88B4B25548915B037EE662724B12492CC4
            924B1C924924926802CD030A002800A002800A002800A002800A00AFA859C57F
            68F6B3B4E91BE32609DE171820F0E8430E9D8FB74A008F4AD32D74AB7686CD1C
            077DEEF2CAF2C923600CB3B92CC7000C9270001D0014014FC650CB71E18BF86D
            E2796578F0A88A598F23A01408B7AA69D65AADBAC379C847DE8F14ED1491B608
            CA3A10CA704824119048E848A00A93786B4896D2DED82C90ADB6EF2E4B7BC921
            9BE6397CCA8E1DB73619B24EE6018E4806800FF846341D9E5FD82D7CAF37CEF2
            73FBBDDF67FB3E36676EDF27E4DB8DB8ED9E68023B1F0A68D637E97D109E5BA4
            75759AE7509AE194AA4A8B8323B70167978E9F313D71401A76B696B6B3DDCD6E
            1124BC944D39F333BDC22A03C9E3E5451C7A7AE680322FBC1BA05FCF2C9750C8
            EB2F9A5A117D2AC20CA8E923088384566591F2C00397639C926802C5F786B48B
            ED416F6E16412ACB1CE563BC9238E49232A51DE35708EC0A272C09C2A8E80000
            043E19D160822862B6458E18AD6141E7B7096CE5E01F7BF85893EFDF2280238B
            C27A14492A2DBE5244D8AAF75230B750C180872DFB801950811EDC144231B570
            005D784F42BA7BA3716FE625D24AB2426EA4F28798A564648F76D4760CF97501
            8EF7E7E63900B9FD8DA6FF006BFF006A7949F6BEB9F34ECDDB76F99B33B7CCD9
            F26FC6EDBF2E71C50043616B2C3E22D56EA408B05C47008DBCC5F98A86DDC672
            3A8A00D0BBBBB7B2B596E6E6648E1894B3B6ECE00F61D7E9401350338CF1B7FC
            8562FF00AE03FF00426A047689F7D7EB400C8FFD5AFD05031D40050014005001
            4005001400500140050014005001400500140050014005001400500140050014
            005001400500140050014005001400500140050061F8EBFE452D4BFEB97F5140
            8DCA06719E36FF0090AC5FF5C07FE84D408ED13EFAFD680191FF00AB5FA0A063
            A800A002800A002800A002800A002800A002800A002800A002800A002800A002
            800A002800A002800A002800A002800A002800A002800A002800A00C3F1D7FC8
            A5A97FD72FEA2811B940CE33C6DFF2158BFEB80FFD09A811DA27DF5FAD00323F
            F56BF4140C750014005001400500140050014005001400500140050014005001
            4005001400500140050014005001400500140050014005001400500140050014
            0187E3AFF914B52FFAE5FD4502372819C678DBFE42B17FD701FF00A135023B44
            FBEBF5A00647FEAD7E82818EA00C4F166AFA8E8D6B6F71A7E9F6B7A925C456EE
            27BB680A34B2A46846237C8DCFCF4C01C67A5022FA5FC312225FCF6B6F741223
            344270C11A46DA801201219C155240DC474CF140CA89E20B73E309BC38CBB6E5
            2C23BF8CE49F310C8E8DDB036954EFCEFE9C1A0453D1BC6BA36A1E1A835FB9BE
            B5D3F4FB9B89A1826B99C44B20491D1482FB70595376DEA391DA802C7887C51A
            768735ADA4B756ADA85D5C5BC5159B5C2A4AEB2CCB16F55EA40CB1E073B48C8E
            A002FD8EABA75FDC5CDBD85FDADD4F66FB2E2386657685B2461C03953953C1F4
            3E940CB9400500140050014005003A34DF9E718A043FC9FF006BF4A2E170F27F
            DAFD28B85C3C9FF6BF4A2E170F27FDAFD28B85C3C9FF006BF4A2E170F27FDAFD
            28B85C3C9FF6BF4A2E170F27FDAFD28B85C3C9FF006BF4A2E170F27FDAFD28B8
            5C3C9FF6BF4A2E170F27FDAFD28B85C3C9FF006BF4A2E170F27FDAFD28B85C3C
            9FF6BF4A2E1711A2DA325BA7B500330BEA7F2A0008C631DE801281850061F8EB
            FE452D4BFEB97F51408DCA06719E36FF0090AC5FF5C07FE84D408ED13EFAFD68
            0191FF00AB5FA0A063A80333C49A74DAA69D15BDBB22BA5EDA5C12E481B62B88
            E461C03CED438F7C74EB408CBD77C3B77A8F896D3548648123B3F236C2CC42DC
            E25264F3971F3F96B87879F9642C4F1400CF10783975ED62EEE2EE445B79ADED
            625C6E2D846B959D4818C0786E5E307391B8B0C15068023B6D0357D2E7B6BEB0
            4B1BBB9865D441826B87850C77574270DBC231DCA11415DB83B8FCDC7CC019F6
            7E0DD5F4AD3E0D1EC9EC6EAC8DD69D7335D4B2BC3227D985B2B2AC411836E16C
            0825C72F8FE1C900B9E07F085C787EE2DCDCAA30B0B2FB14339D42E6E1A65CA6
            58472109003E52928BBBA801805F9803B2A061400500140050014012DBFF0015
            0C4CF34F0A4DAC3E93F0D12FAC6C61B15F2BC99A1BC79257FF008974FB774662
            50B919270C7078E7AD2105ECF2F88BC3BE078DFC33632C734B6F2A5B5D148EC6
            6DDA7CEE55001232AA760C9D42E323900171A4D7FC30F0693A26956893EA4F3D
            EAD9D922CF6F61146B046638D5E4B70433BF9848C619D86D6C97A008D35CD53C
            49A968FE77D86DED7FB6AD945BA0FB4291FD9A6E98348AFB65C3B2EC6000568D
            5FE6E050049278CB5E1A769370BFD9A1FC416F05D59836D21164B25C5AC4524F
            DE7EF885BB0770F2F98FA7CD85002EFC65AF5AC57D74DFD9AF05BA6A776910B6
            903793633F94D116F331BE40CA43E309B4FC8F9E000F13F8EF57D265BFBAB1B3
            8EE74B09790DACF2401145C5BC1348C0B79C5DC6FB79131E520EE1CE06F00D0B
            8F116BD06B71E8128D363D42EDE168AE16292486D9648EE9F6326E53295FB232
            EF063CF980ED5DB8600A7AC78C3C4569752DBE9F65637FFD9969F69BE9E078FC
            87FDECC854BC9347E47FC7BB6E389B61241CECCB807A05001400500140050014
            00C97FD59A00E56FB59F10C1E2FB6D2ADBC34971A5CE9E636A9F6EDAB128C6F0
            C9E593BF27E55CFCD9CE461B6B19D23745FA7F5A004A06140187E3AFF914B52F
            FAE5FD4502372819C678DBFE42B17FD701FF00A135023B44FBEBF5A00647FEAD
            7E82818EA002800A002800A002800A002800A002800A002800A0092160B9C9C5
            02228ED6C228AD628EDA048ECB1F664588010614A0D831F2FCA4AF1D891D290A
            C11DAD84515AC51DB4091D963ECC8B10020C2941B063E5F9495E3B123A501623
            D574DD2B59B75B7D5EC2D350815C3AC77502CAA18023700C08CE0919F7340589
            3ECB61E7F9FF006683CEF37CFF0033CA1BBCCD9E5EFCE3EF6CF973D76F1D2802
            BC1A36896F2DCCB069763149772ACF3BA5B2299A456DEAEC40F99837CC09E41E
            7AD016247D374A911E37B0B4647495194C0A432CADBA55231C8761961FC47939
            A02C57B9F0FF0087EEAFE5BFBAD1B4D9AF2642925C49688D23A94D854B11920A
            7CB8F4E3A50162C5FE9BA56A293C7A8585A5DA5C2224CB3C0AE245462C8AC08E
            42B12403D09245016239746D126FB0F9DA5D8C9FD9B8FB16EB643F65C631E5F1
            F2636AF4C7DD1E94058D0F313D7F4A003CC4F5FD2800F313D7F4A003CC4F5FD2
            800F313D7F4A003CC4F5FD28011DD59480698C8B03FBC3F5A001B1C007A0A004
            A06140187E3AFF00914B52FF00AE5FD4502372819C678DBFE42B17FD701FFA13
            5023B44FBEBF5A00647FEAD7E82818EA002800A002800A002800A002800A0028
            00A002800A002800A002800A002800A002800A002800A002800A002800A00280
            0A002800A002800A0028030FC75FF2296A5FF5CBFA8A046E50338CF1B7FC8562
            FF00AE03FF00426A047689F7D7EB400C8FFD5AFD05031D40189ADEAFA8DAEB16
            3A6693A7DADDCF756F3DC335CDDB5BAA2C6D12E06D8DC924CA3B0E86811427F1
            4EA2B38B2B7D2AD5F50FED25D3CA3DEB2C41BEC62E99B78889C0E547CBCE01E3
            3800139D675D7BD3A75B691A736A105BA5C5D2C9A8BAC48B23C8B18471092E7F
            74C4E5571918DDCE0035F46D461D6347B2D4ED95D20BDB78EE2359000C15D430
            07048CE0FAD032E5001400500140050014005001400E8D37E79C62810FF27FDA
            FD28B85C3C9FF6BF4A2E170F27FDAFD28B85C3C9FF006BF4A2E170F27FDAFD28
            B85C3C9FF6BF4A2E170F27FDAFD28B85C3C9FF006BF4A2E170F27FDAFD28B85C
            3C9FF6BF4A2E170F27FDAFD28B85C3C9FF006BF4A2E170F27FDAFD28B85C3C9F
            F6BF4A2E170F27FDAFD28B85C468B68C96E9ED400CC2FA9FCA8002318C77A004
            A06140187E3AFF00914B52FF00AE5FD4502372819C678DBFE42B17FD701FFA13
            5023B44FBEBF5A00647FEAD7E82818EA00C0D77C3369AE78834EBBD52CAC6FAC
            AD2D6E2230DD4424FDE48F09560AC08E046E33D791EA68114350F07FF696ACF2
            6A30D8DDD849AC8D41EDE75F303462C05B8054AE0B798037A606739E2802DCFA
            5EA3A5EB0F7BE1DB2D3A6825B282CFECD35C35AAC0B0B4A5766C8DC1044A4630
            BB760EB9E0034FC3BA6FF62F87F4DD2BCEF3FEC36B15B79BB76EFD8817763271
            9C67193401A140C2800A002800A002800A0028025B7FE2A1899E69E0A83FE11B
            F858DE23B7F0EE87637D6FE1F5B882EADFE796EB106F3E762342325549019B27
            3CF00942372FBC4BAD58DC5DE933476926B1225BCB6496B01914994CE4C243CB
            1872896D2B7985E30D91F28202B0073F67E25D69EEF5DF11AC7696CFA668F1B5
            F59CD01669CDBDCDFAB2A32CB888B794DFF3D42EE1CB6DCB00167E28D734C4D4
            2D745D323B9834FB8BEBEBA790C4AA55EFEEC05323CD18886216F9F6C9D72546
            DC3007AA50014005001400500140050014005001400500325FF56680395BED67
            C43078BEDB4AB6F0D25C6973A798DAA7DBB6AC4A31BC327964EFC9F9573F3673
            9186DAC6748DD17E9FD6801281850061F8EBFE452D4BFEB97F51408DCA06719E
            36FF0090AC5FF5C07FE84D408ED13EFAFD680191FF00AB5FA0A063A800A00280
            0A002800A002800A002800A002800A00280248582E7271408CAB2F0BF866C3CF
            FB0E81A55B7DA226826F26CA34F3236FBC8D85E54E0641E0D2158B97FA6E95A8
            A4F1EA161697697088932CF02B891518B22B02390AC4900F424914058A71F85F
            C3314B6B2C7A0694925963ECCEB651830618B8D876FCBF312DC7724F5A02C589
            F46D12E25B6967D2EC6592D2569EDDDED918C32336F675247CAC5BE624724F3D
            680B1A1E627AFE94007989EBFA5001E627AFE94007989EBFA5001E627AFE9400
            7989EBFA5001E627AFE94007989EBFA5001E627AFE94007989EBFA5001E627AF
            E94008EEACA4034C64581FDE1FAD000D8E003D050025030A00C3F1D7FC8A5A97
            FD72FEA2811B940CE33C6DFF002158BFEB80FF00D09A811DA27DF5FAD00323FF
            0056BF4140C75001400500140050014005001400500140050014005001400500
            1400500140050014005001400500140050014005001400500140050014005001
            40187E3AFF00914B52FF00AE5FD4502372819C678DBFE42B17FD701FFA135023
            B44FBEBF5A00647FEAD7E82818EA00C4D5FC490E95E23D1F49B8B7729AA24C45
            C820240C8630A1F3D03B48141CFDE28B83BB80416FE28D3974A6D4356BAB5D2A
            017B7166AD7370A8ACD14D247C3360658465B1DB9EB8CD0058B4D7F4EB9D56FB
            4C5B848EF2CAE12DDE291D433B3422652A33920AEEEDFF002CDFB2E6801F2EB9
            A44168D7736AB631DB2451CED335C20411C8488DCB671B588201E871C50054D5
            3C51A759C56C6DAEAD6F27B97B531C31DC2EE68669E3844C00C9280C99CF438C
            679A00D3371E75A4D2E9CD05CC89BD1019708645254AB30076E1810782460F19
            18A0662685AFEA37FA74D79A858E9D60897A6CD3FE260CE1D96E1A07E4C4B83B
            97E41CEE2403B73408D0B1F11E85A83C2961AD69D74F70EE90AC3748E646450C
            E170792148240E8083400F8B5CD226FB7793AAD8C9FD9D9FB66DB843F66C673E
            673F2636B75C743E9401258EABA76A090BD85FDADD25C23BC2D0CCAE245460AE
            570790188048E848140C8346D7F4ED66EAFADF4FB8499EC5E30E55D5832C912C
            88EB82728CAFC1E3255B1D33408D3A06666ADA841A6A4F737D75716F6D088571
            0426566792428A02AAB31258A8000EF408A8DAFE9AB6E9335DEB40C8ECA901D2
            A6F3DB68059845E4EF2837282FB7682C0672714844835BD25AF21B68B59B897C
            ED81678A10F6E0B80515A658CC6ACC1936A9604EF4C03B972012695A9E9FAB5C
            34163AA5E338432217B7F2D6740402F1334604A9CAFCC8597E65E7E61900D4FB
            0BFF00CFEDC7E51FFF00134007D85FFE7F6E3F28FF00F89A003EC2FF00F3FB71
            F947FF00C4D001F617FF009FDB8FCA3FFE26800FB0BFFCFEDC7E51FF00F13400
            7D85FF00E7F6E3F28FFF0089A008A3578AF2585A67954468C0B850412581E807
            A0A63463F8B3C4BFF08FC5218ED3ED32476177A832993CB1E5C0AA480707E62D
            2460718C1639C80AC0142CBC5F77776D0B5AC1A25ECB7775F64B5363AB99E132
            08DE571248211B3089C615892C3200E6802393C7337D96F2E21D2D19349B77B8
            D4C35C9531AA4B346C21F90F9A775B4B8DDE5E46CE9B88500E8B56B8D4E1F293
            48D3E0BB91B25DAE6EBC88D00C71908EC58E78017180D920E030060D8F8DFF00
            B42286FECF4EFF00894B4B690492CB36DB8492E56168F11052ACA3ED116E25C1
            1F3E01C0DC011C7E399BECB67713696889AB5BA5C69612E4B1915E58635137C8
            3CA3BAE62CEDF33037F5DA0300588BC53A8CF7EDA45B6956A75985E513C725EB
            2DB2AA240E4ACA222CC7173170631CEFE781B8034E2F13691FF08FD86B77B7B0
            69B65A8451CB0B5ECA90FDF4DEAA4938DD8CF009E868027935CD223B4BABB935
            5B14B6B394C171335C20482404028ED9C2B648183CF22800B5D4BCDD6EFB4B78
            76496B1433AB86C878E4DE06781860D14808E46369CE490A014FC75FF2296A5F
            F5CBFA8A00DCA06719E36FF90AC5FF005C07FE84D408ED13EFAFD680191FFAB5
            FA0A063A8031358D05755D76CEE6E951ECE1B2B881D3732C81DE4B7746523952
            A61243020A9DA473C8047331782358834ED31AE2E9353D42CDEF84CC97F3E9A2
            7FB45C097CCDF08241F94663C6DCB1E7E519009C7812E60B06B2B2BB4B709716
            F34135BBBC4D08FB22D9CC141DE41110678DB713BD94370A4B80489E0DBBB0D4
            86A3A6BC12C96574AD636B34A638FECE23B80232C10F97B5AF260A15586C8E25
            C0396A00AE3C0D7F2437C93DC40BF6F96D26904534886329A84D772AAB801B85
            9B6AB8DA495CE12803AED0AD2E34FD3D2C6E0C0D1DAE22B7789047BA2006DDC8
            005561D085F94E320283B140323FE11DBBFF00847BFB3FCC83CDFED9FED0CEE3
            B7CBFED0FB4E3A7DED9C7A6EEF8E680332C3C19A8DBE9D656EF35A97B7B2D16D
            D8866C16B3B8692523E5E854FCBEA7AE3AD0054D33E1FDED9595BC3FB832E991
            411DACD2EA3733FDA3CA9A197EE3FC96CAC6DD410824C6E18384C38069DBF87B
            5D835A935E88E9D1EA176F32CB6ED2BBC56EB225B26F56DAA652BF6456D84267
            CC2370DB9600B7E00F0EDDF8674C6B3BB920977C56A4BC4C78912DA281D70472
            BFB9560DD4EF20A8DB9600E9E81989E25B1B7D42C6F61BD8EFA4813ECB338B06
            2270239FCCCAE3E6E36E4ECF9C8076FCD8A426606952DC69DE2087569EDF5993
            43892EEDAC9A5B6B9B8B9559059B00E855A7C1922B9C338E0003214A64119FE1
            ED2752D334183C3F79A7DDA6A12DEE9172A16167844704764252D32831A9536F
            2FCA5813B4601DCB900D8F035B5C8B8F0D41259DDC0FA1E852585E99ADDE2549
            C9B50151980128FDCC9F32165E073F32E403BCA002800A002800A0028028BFFC
            84E6FF00AE31FF00E84F4D0D181E20D3E6BAF11D8B08124B7974DBEB26696033
            442490C0CA24404650AC4F9C900E02E4165C8050B8D075DBAD6A3F10CB0E9D16
            A16CF088AC96EDDA291512E532D37940A93F6B638119FF005639F9B2A014E4F0
            6EAE965AA5B42F62FF00DBF6B2DB5E334AEBF63F326B994B46361F3B1F6A6183
            E5E7CB078DD8500D7F1068DA93EC834A860BDB0B89649AFEDAFF0051993CE63B
            76A06292622FBDBA30154F03EE975600826D0357B8BB9D644B18EDB50BFB4D4A
            E245B8767B79211066245D8048A4DB8F9CB21F9CFCBF2E18033E3F06EAED65A5
            DB4CF629FD816B15B59B2CAEDF6CF2E6B694348360F273F655181E663CC279DB
            8600B96FA0EBB69AD49E218A1D3A4D42E5E612D935DBA451ABA5B26566F28962
            3EC8A70631FEB0F3F2E5802FDAF86E6B2B0F0959457092A682E8259181432AAD
            A4B0E54738259D4E09E99E7D40312D7C1BABD969F68207B17BBB4D2F4FB48DBC
            D78D926804E19D24D8DB3FD70C128E1943A32E189A00DBF0FE9F35A788EF9BC8
            48EDE2D36C6C95A180C11192333B308D093840B2A63048192B9255B0013F8EBF
            E452D4BFEB97F51401B940CE33C6DFF2158BFEB80FFD09A811DA27DF5FAD0032
            3FF56BF4140C750014005001400500140050014005001400500140050041FBF8
            AE9E58638DD5D157E690A90416F63FDEA0449F69BCFF009F683FEFF9FF00E229
            582C1F69BCFF009F683FEFF9FF00E228B0583ED379FF003ED07FDFF3FF00C451
            60B07DA6F3FE7DA0FF00BFE7FF0088A2C160FB4DE7FCFB41FF007FCFFF001145
            82C1F69BCFF9F683FEFF009FFE228B0583ED379FF3ED07FDFF003FFC45160B07
            DA6F3FE7DA0FFBFE7FF88A2C160FB4DE7FCFB41FF7FCFF00F114582C3231335D
            4934C91A6E454011CB742C7D07F7A98135030A002800A002800A002800A00280
            0A00C3F1D7FC8A5A97FD72FEA2811B940CE33C6DFF002158BFEB80FF00D09A81
            1DA27DF5FAD00323FF0056BF4140C75005393528639190AC995241C01FE350E6
            91D0B0F26AE37FB520FEE49F90FF001A5ED10FEAD3EE83FB520FEE49F90FF1A3
            DA20FAB4FBA0FED483FB927E43FC68F6883EAD3EE83FB520FEE49F90FF001A3D
            A20FAB4FBA0FED483FB927E43FC68F6883EAD3EE83FB520FEE49F90FF1A3DA20
            FAB4FBA0FED483FB927E43FC68F6883EAD3EE83FB520FEE49F90FF001A3DA20F
            AB4FBA0FED483FB927E43FC68F6883EAD3EE83FB520FEE49F90FF1A3DA20FAB4
            FBA0FED483FB927E43FC68F6883EAD3EE83FB520FEE49F90FF001A3DA20FAB4F
            BA0FED483FB927E43FC68F6883EAD3EE83FB520FEE49F90FF1A3DA20FAB4FBA0
            FED483FB927E43FC68F6883EAD3EE83FB520FEE49F90FF001A3DA20FAB4FBA0F
            ED483FB927E43FC68F6883EAD3EE83FB520FEE49F90FF1A3DA20FAB4FBA0FED4
            83FB927E43FC68F6883EAD3EE83FB520FEE49F90FF001A3DA20FAB4FBA0FED48
            3FB927E43FC68F6883EAD3EE83FB520FEE49F90FF1A3DA20FAB4FBA0FED483FB
            927E43FC68F6883EAD3EE83FB520FEE49F90FF001A3DA20FAB4FBA0FED483FB9
            27E43FC68F6883EAD3EE83FB520FEE49F90FF1A3DA20FAB4FBA0FED483FB927E
            43FC68F6883EAD3EE8B91B878D5C670C0119AD16A73B56761D4082800A002803
            0FC75FF2296A5FF5CBFA8A046E50338CF1B7FC8562FF00AE03FF00426A047689
            F7D7EB400C8FFD5AFD05031D401CFDD7FC7CCBFEF9FE75CD2DD9EAD3F817A143
            51BB92D56110C4B2BCD26C019F601F2B367383FDDF4AD695353BDDDACAFF008A
            5E5DCC71159D149A57BBB6F6E8DF67D8AFF6EBFF00F9F3B6FF00C096FF00E22B
            4F654BF99FDCBFCCE5FAE54FE45F7FFF006A51D5F5992DAD6C2F825E79534719
            F26D4216777960544CBAEDE7795C975382C40246E4C670E49B876675C2AF3D38
            CEDBA4FEFB16B4A4BEB98049732EA966C8C17CBBA16A59C011F3FBB0C3076B77
            07E77C01F26D8358DDFF00487DDA1D36C65BCBDD62F05BDA47E6CCED1C47E540
            85890B1E7908D9C7FCF47C63E4DA0DFBAAED95756B89F481643ED1AA6A135CCC
            208E1856D833B040E492C14005617CF23FD63631F2ED112DB8DBFE00695713DD
            5DB5A4D71AA5B5CDBC314F24570B6C495662A013182327ECEE4E0F494E307684
            1845B6EDFE5FD743423B1B84D9BB55BC7DBB73B961F9B1B339C277D8D9C63FD6
            3E3185DA8AB3EE56D14BEA3A5D8EA10EA77E61B98629D5654843152B1B61B09C
            1214E71FF3D1F18C2ED6F4147549DCCEFED6659122B39F57D466F324458E34B5
            532885A2495F2E14050E0A1E4126472A3684652C4F376BFE068E905EFECE2B98
            B53BFC0631BA4A90860F1B2A3AB6D4C67746E09538F9DF69C6C2A3D0A8EAAF70
            D3CBDCDC5DC09A9DFB3584C904A64484076F2E1932309D083CF4E647C6309B40
            5DAFB15752BBB9D36FACECE27D5F53B89E37942402D57E58CC218B17D83927B7
            FCF47C630BB4136E2D2D7F026D22496F5A74FB76A31CB6524714D1CE96F9DC62
            8242094523A120E0F57931C042A3D071D7A926A45F48D2EE750B9D4EFE586C61
            33C8AA90EE75455661F7072446DE9FEB1B18C2ED01FBAAF7D8B31D8DC26CDDAA
            DE3EDDB9DCB0FCD8D99CE13BEC6CE31FEB1F18C2ED43B3EE56D14BEA3A5D8EA1
            0EA77E61B98629D5654843152B1B61B09C1214E71FF3D1F18C2ED6F4147549DC
            B31D8DC26CDDAADE3EDDB9DCB0FCD8D99CE13BEC6CE31FEB1F18C2ED43B3EE11
            D8DC26CDDAADE3EDDB9DCB0FCD8D99CE13BEC6CE31FEB1F18C2ED02CFB98BFDA
            CC9A4E8D7F6F3EAF7DFDABE5F910225AAC8D9884BF36E0AA3E589F383D646C7F
            06D76239B44D5F5F4347482F7F6715CC5A9DFE0318DD254843078D951D5B6A63
            3BA3704A9C7CEFB4E36151E8547557B954DFAC37E2C86A3A8CF2A5CC56BFEAE0
            02494A24ACBF74748D19D8F0312B05CB05542C2BD9DAE69C763709B376AB78FB
            76E772C3F363667384EFB1B38C7FAC7C630BB51567DCA5A0EA067D4F52B06BB9
            A77B0F292459D621223153CFC8795750AE3E51CB919E0A46DA145EAD7636A916
            14005007416BFF001ED17FB83F9574C76479553E37EA4B4C80A002800A00C3F1
            D7FC8A5A97FD72FEA2811B940CE33C6DFF002158BFEB80FF00D09A811DA27DF5
            FAD00323FF0056BF4140C750073F75FF001F32FF00BE7F9D734B767AB4FE05E8
            63788048D1DA88182CA66608C7A06F2A4C1AEAC2D939736D6FFDB91C3985F923
            CBBDFF00F6D66658477F7976977A80FB3A41911C0BFC4D820B1F6EB8FF0024F5
            D5952A7070A7ADFAF976FF003FEADE4D38D59C94EA696E9FAFF97F57AFABE992
            EABA4E8B0430BB9F2602CC8C636545B8B577C48172A76A13C3A93B78562329C3
            5DDAB4FD5FEA7B54237A14D792FD097C55A1BCFA7D9584369737F61133BBA030
            DCDC093F80E6ECB295C190139DC328071BAB14CE89C744BA7F5DCC8FF846B57B
            CD3FECF75678BFB8D17ECB35EDC5CEFC486DF6105C12FF007C9DD1E1A3385903
            070433BA447249AB3DEDFD7F5B753A1D5F47FED287C3F0C569359DADB5C89258
            619BC87B74FB3CAA1418D8630CCAB84247D466A53B1A4A37B7F5D0A5A968F7D6
            FE26B7D4ECED26BBB6B18ED82A0995A5976A5E46C0191865879F1B12CC3233C9
            3C534F425C5A95D7F5BFF99574DD0F538EF74F9EF74A4F3D2EEE65775BA0C902
            BDCC9212ADC3292ACB8280F980B248AA36952E84A2EEAEBFABFF005EBD4B5E0F
            F0F4FA27F61EDB5F20AE9262D45BCC0CCF38F236063925F681285EA14640C020
            50DDC70872DBD3FC883498EEED6EA3BE82C66BD36973AA5BCD6D0B46B2A19AE9
            6546224651B4A283D7243A1008390308DD3BDBBFE64967E186BABDD3DB58B149
            6D5575196586560CAAD3DCC72C68EB9C390BBB23E650CB90785345FB0285DABA
            EFF8B39EB7D1B532C34DBE910EABA9DA35A4E924E249228A5B3B6492E9B69624
            2C96CC9CE03330F986412EE8CD45ECF77FE4B5FC0ED35AD10EA9E22D3A79BED2
            B6B6F69728F25BDD3C0C1D9E02A328CAC4108FC74E39ED529D91B4A3792FEBB1
            9FFD9BAAD978B2F757B7B0FB4A4B24B1C482654FF590D98123127840D6EE0E01
            6E842B53D2D62795A93697F5A7F918BFF08BEAA341FB28D27FD30E83F64329B8
            5E1C5B6C1186CE47CE4E633988E1640CAE08677572391F2DADD3F4FEBCBA9D6E
            8DA4FF00656B77DF6483C9D3E5B680AE1F3E64E1A5F31DB272CE54C5976E5B03
            24E3896F4368C795BB6C62D85B6AD2782EC7449F44BCB796CEDAD566F36580C7
            72B1347E6C4BB6439DE8AEA0300A41C3100D3D2F721297228DBB10AE832A4C26
            B8F0E7DA747324A61D1716E7ECE59200AFE5B38887CD1CE7E5627F7DEACF82E2
            E4F2D3B7DDF2EE1AA689AB4BADE9D72B63309ED64B458A7B7782458E056432AC
            934B8B866FF5C3E5E194AE4659C509AB038CAE9DBB7F5DC9AE345BE4F0A784ED
            65B0BC9E5D37C9FB5416774B0CAB8B59233B5FCC4E8ECA0E1B919EA28BEAC6E2
            F962ADB7F913D8E9BAAE9ADA6DDC561E7BC51DE43E479CAAD1F9F3A491995C9E
            76AA62461BD8B1C8F3324D1A028B8D9DBB997E18F095DDAA694DA869908960BD
            B69666631B10B169A22539C9CED9B38F43F30E39A6D930A6D5AEBFAB7F995B4F
            F065F2DA882EAD2E67919AD56F8DC35A886F0ADCC2F2498450D28DA921DD31DF
            86C60976C1712A6EDAFE9DFF00ADCE8FC2CFBFC59E2B657DD13DCC0530F95388
            551881BCF478D949DA3942373152125EC8D21F148E9E91A85001401D05AFFC7B
            45FEE0FE55D31D91E554F8DFA92D3202800A0028030FC75FF2296A5FF5CBFA8A
            046E50338CF1B7FC8562FF00AE03FF00426A047689F7D7EB400C8FFD5AFD0503
            1D401877304C6E252229082E70429F5AE769DCF4A138A8AD4AD71A77DA5025CD
            9F9C80E42C916E19F5E45541CE0EF1BA09FB2A8AD3B35E7620FEC0B4FF00A04C
            1FF80C3FC2B4F6F5FF0099FDECC7D8617F963F7216E7448EE3CADF6B346D0A34
            71B425E264565DACA1948207438F5553D54118BE66EECDEF4D24934AC364D084
            9BF72EA037EECEDBA997AEFCE30DC7FAC6C63A61318D8B82CFB07343BFE21268
            424DFB97501BF7676DD4CBD77E7186E3FD63631D3098C6C5C167D839A1DFF109
            342126FDCBA80DFBB3B6EA65EBBF38C371FEB1B18E984C6362E0B3EC1CD0EFF8
            849A10937EE5D406FDD9DB7532F5DF9C61B8FF0058D8C74C2631B17059F60E68
            77FC424D0849BF72EA037EECEDBA997AEFCE30DC7FAC6C63A61318D8B82CFB07
            343BFE21268424DFB97501BF7676DD4CBD77E7186E3FD63631D3098C6C5C167D
            839A1DFF00109342126FDCBA80DFBB3B6EA65EBBF38C371FEB1B18E984C6362E
            0B3EC1CD0EFF008849A10937EE5D406FDD9DB7532F5DF9C61B8FF58D8C74C263
            1B17059F60E6877FC424D0849BF72EA037EECEDBA997AEFCE30DC7FAC6C63A61
            318D8B82CFB07343BFE21268424DFB97501BF7676DD4CBD77E7186E3FD63631D
            3098C6C5C167D839A1DFF109342126FDCBA80DFBB3B6EA65EBBF38C371FEB1B1
            8E984C6362E0B3EC1CD0EFF8849A10937EE5D406FDD9DB7532F5DF9C61B8FF00
            58D8C74C2631B17059F60E6877FC424D0849BF72EA037EECEDBA997AEFCE30DC
            7FAC6C63A61318D8B82CFB07343BFE21268424DFB97501BF7676DD4CBD77E718
            6E3FD63631D3098C6C5C167D839A1DFF00109342126FDCBA80DFBB3B6EA65EBB
            F38C371FEB1B18E984C6362E0B3EC1CD0EFF008849A10937EE5D406FDD9DB753
            2F5DF9C61B8FF58D8C74C2631B17059F60E6877FC424D0849BF72EA037EECEDB
            A997AEFCE30DC7FAC6C63A61318D8B82CFB07343BFE21268424DFB97501BF767
            6DD4CBD77E7186E3FD63631D3098C6C5C167D839A1DFF109342126FDCBA80DFB
            B3B6EA65EBBF38C371FEB1B18E984C6362E0B3EC1CD0EFF8849A10937EE5D406
            FDD9DB7532F5DF9C61B8FF0058D8C74C2631B17059F60E6877FC49ADF4C7B791
            DE38EE8993A87924703E666E0312072C7A76DA3A280159F61A9C175FC49FECF3
            FF00CF193FEF93472BEC3F690EE83ECF3FFCF193FEF93472BEC1ED21DD07D9E7
            FF009E327FDF268E57D83DA43BA372D815B788104108320FD2BA16C7993D64C9
            29921400500140187E3AFF00914B52FF00AE5FD4502372819C678DBFE42B17FD
            701FFA135023B44FBEBF5A00647FEAD7E82818EA0028020BA9A489A14863491E
            67D803B9503E566CE403FDDF4A041B751FF9F7B5FF00C086FF00E2280B85BDC2
            CB6515CBE23578C48727850467AD031F6F2ACF0A4A8080C3383D54F707D08E84
            7AD00494011C12ACD19750400CCBCFAAB153FA8A0049AE23864891CE0CAD81C8
            E3DCFB6703EA40EF400D4BA47BA6B7556DE99C9E31C0427FF460FD68104573E6
            4BB5219766E6512E06D246723AE4720F2401C7D3200F9A5585033024175418F5
            660A3F5340C92801864512AC59F9D94B018EC0807F98A007D00566BC55B6332C
            6EC3CCF2828C64B6FD9DCE3AD021F04FE6BBA344F0C880128E549C1CE0E5491D
            8F7ED400F9245894339C02C1471DC9007EA45031F40050014005001400500140
            0500140050014005001400500140050061F8EBFE452D4BFEB97F51408DCA0671
            9E36FF0090AC5FF5C07FE84D408ED13EFAFD680191FF00AB5FA0A063A800A00A
            F3FF00C7ED87FD773FFA29E811A5484615BC524FA258C3160078E3DECDC80A14
            1391919071B719FE2A6323B982449A24B9856F11EE3CC0AAAAAA498DF202B360
            608DC493C96340111B4732CF08B50D3980794FF27FA36E794AF24F18057EEE71
            B78ED4013430137AD0A94397F324E72630B3B3A8207760E3AE3804F3D28027B9
            B3B8B996765952052A2342D1EF61FC5BD7E61B4E48FC501A002CE09FEDEF712C
            4220EAC4AEF0DB495878FCD587E1400E8E1905E86485E140CC5DBCDCA3A90718
            5CF049209F9477E4F700A769A74D104CA49E62B45E63334604844884B0DA32DD
            18E58E79F5268012DB4D9A384EE8E52FB544BB9A3027C3296C05196C80C32E47
            DEF738009A4B27601A0B65B63E54A918DC3313305C371C2FDD3F77279CF73800
            64560634C8B591A1DE0B5BC8621BC6D61F7570BD4A9C939F97D8640264B373A6
            476FE518BFD203F96AC14A279DBBAA9E30BE86801F73668A89E5C0D3A07DD2C6
            EFBCC836B0032E790090704E3A9EB4015869CE56432DBA36447B50ED3F2099DC
            C63B7DDDA31D3A0CE05005BB581E3BEB891A10AAD9F9F70258E7DB9231FDE1F2
            F20641E002E5030A002800A002800A002800A002800A002800A002800A002803
            0FC75FF2296A5FF5CBFA8A046E50338CF1B7FC8562FF00AE03FF00426A047689
            F7D7EB400C8FFD5AFD05031D400500473C10DC2049E249541C80EA1867F1A008
            3FB32C3FE7C6DBFEFD2FF8500594554454450AAA300018005003BE940050019E
            31DA800A002800A002800A002800A002800A002800A002800A002800A002800A
            002800A002800A002800A002800A0028030FC75FF2296A5FF5CBFA8A046E5033
            8CF1B7FC8562FF00AE03FF00426A047689F7D7EB400C8FFD5AFD05031D400500
            1400500140050014005001400500140050014005001400500140050014005001
            40050014005001400500140050014005001400500140050061F8EBFE452D4BFE
            B97F51408DCA06719E36FF0090AC5FF5C07FE84D408EC645668D952468D88203
            AE32A7D464119FA8340CC51E1C900C0D7B581FF6D93FF88A041FF08EC9FF0041
            FD67FEFF0027FF00114007FC23B27FD07F59FF00BFC9FF00C45001FF0008EC9F
            F41FD67FEFF27FF114007FC23B27FD07F59FFBFC9FFC45001FF08EC9FF0041FD
            67FEFF0027FF00114007FC23B27FD07F59FF00BFC9FF00C45001FF0008EC9FF4
            1FD67FEFF27FF114007FC23B27FD07F59FFBFC9FFC45001FF08EC9FF0041FD67
            FEFF0027FF00114007FC23B27FD07F59FF00BFC9FF00C45001FF0008EC9FF41F
            D67FEFF27FF114007FC23B27FD07F59FFBFC9FFC45001FF08EC9FF0041FD67FE
            FF0027FF00114007FC23B27FD07F59FF00BFC9FF00C45001FF0008EC9FF41FD6
            7FEFF27FF114007FC23B27FD07F59FFBFC9FFC45001FF08EC9FF0041FD67FEFF
            0027FF00114007FC23B27FD07F59FF00BFC9FF00C45001FF0008EC9FF41FD67F
            EFF27FF114007FC23B27FD07F59FFBFC9FFC45001FF08EC9FF0041FD67FEFF00
            27FF00114007FC23B27FD07F59FF00BFC9FF00C45001FF0008EC9FF41FD67FEF
            F27FF114007FC23B27FD07F59FFBFC9FFC45001FF08EC9FF0041FD67FEFF0027
            FF00114007FC23B27FD07F59FF00BFC9FF00C45001FF0008EC9FF41FD67FEFF2
            7FF114007FC23B27FD07F59FFBFC9FFC45001FF08EC9FF0041FD67FEFF0027FF
            00114007FC23B27FD07F59FF00BFC9FF00C45001FF0008EC9FF41FD67FEFF27F
            F114007FC23B27FD07F59FFBFC9FFC45001FF08EC9FF0041FD67FEFF0027FF00
            114007FC23B27FD07F59FF00BFC9FF00C45004773E151756EF05CEB5AB4B1483
            0C8D2A1047FDF1401D050338CF1B7FC8562FFAE03FF426A0476740C2800A0028
            00A002800A002800A002800A002800A002800A002800A002800A002800A00280
            0A002800A002800A002800A002800A002800A002800A002800A0028038CF1B7F
            C8562FFAE03FF426A0476740C2800A002800A002800A002800A002800A002800
            A002800A008EE24F260925C676296C7AE050219E44A79375283DC2AA81F8641A
            003C893FE7EE6FC93FF89A003C893FE7EE6FC93FF89A003C893FE7EE6FC93FF8
            9A004589D8656F2523247013A8EBFC34934F61269ECC5F224FF9FB9BF24FFE26
            98C3C893FE7EE6FC93FF0089A003C893FE7EE6FC93FF0089A003C893FE7EE6FC
            93FF0089A008B49B992EAD1A49B66F59A68FE404021246507193D945005CA064
            77127930492E33B14B63D702810CF2253C9BA941EE15540FC320D001E449FF00
            3F737E49FF00C4D001E449FF003F737E49FF00C4D001E449FF003F737E49FF00
            C4D001E449FF003F737E49FF00C4D001E449FF003F737E49FF00C4D001E449FF
            003F737E49FF00C4D001E449FF003F737E49FF00C4D001E449FF003F737E49FF
            00C4D0045A4DCC97568D24DB37ACD347F2020109232838C9ECA280398F1B7FC8
            562FFAE03FF426A00ECE81850014005001400500140050014005001400500140
            0500140105FF00FC78DC7FD726FE468113D030A0089AE614B94B769544CEA595
            09E481D4D43A9152506F5FEBFAFBFB19BAB05354DBD5FF005FD7CFB339AF15F8
            8E48665D2745533EA331D9F27250FA0F7C739E80649AE69CE75A7EC68FCDF6FE
            BFE02D76E1AF5E5525EC68EFD5FE8BF57D365AEDA5E14D19F44D30C13CE679E6
            90CD2907E50C40185CF38E0727A9C9E3381D718429C5420B45F8FF005F9591D7
            428AA3050472B26B5AE25BDC78806A6E6DEDF593A79D3BCA8FC968FED82DB3BB
            6F99BB69DD9DF8DDDB6FCB4CD8B5E0FF00106AFAF6B17F6AF2A450E93A8DD452
            EE401EE13CE9163E31C46146030E59D0E4808DE60077140C28033BC3FF00F1E1
            2FFD7DDCFF00E8F9281234681905FF00FC78DC7FD726FE468113D03327C5767A
            95EE8B2C3A3DD35B5D64302A769703F8437F0E7D7F0E86B3A8A4E3EE9D5849D2
            854FDEABAFCBCEDD7FA6B547071EB5A8F8E2E2CF446956CE2DBBAE993FE5A953
            DBDB18E3A67F0AC2EEB34BA1E8384701194D2BCAF64FCBFABDDF55DAECF4DB4B
            74B4B486DA2CF970A2C6BB8E4E00C0CD75A492B23C7949CE4E52DD9CEF837FB5
            751D2B4AD76E7599E55D42D63B99ACA4822F263F3230DB622AAAEBB58800BB3F
            CA08392430082A58FC49D1EF8225A5BDD5C5D3DC2DBADB5B3C172C59E395D096
            8A46400F92E3961B700B6D53BA802FC7E30B69C85B3D3751BB7890BDE2431A16
            B302478CEF5DD9721E194622F309F2CE3395DC0189E24F891A6C76DAED869773
            E5EA5696B762DE5F3216FDFC31BB30F2B71906D31B72E810EDE09DCBB803BEA0
            667787FF00E3C25FFAFBB9FF00D1F2502473BE36FF0090AC5FF5C07FE84D401D
            9D030A002800A002800A002800A002800A002800A002800A0028020BFF00F8F1
            B8FF00AE4DFC8D0227A061401CDF8BFC3F3EA0D1EA5A5C8D1EA36AB845DD8122
            824E0760D92707A1CE0F6233AB4615A3CAF47D1F6FF81F8ADD754F9313875595
            D6E86782FC32FA486BFBF24EA13A152A1B22252412B9EEC48049E9C607725D2A
            51A10F671F9FFC0F25FF000FD9186C3AA11B753A7AB3ACE52E3C17BEE6548F54
            BA5D2E6BAFB63E9E56331F9DE679A5836CF33FD60DF8DF8CF18DBC5022DDB785
            6DECCF9B6B3CB15D25E4F7714E31B809A4F32489B8C346C4E307D148C3286001
            D05030A00CEF0FFF00C784BFF5F773FF00A3E4A048D1A06417FF00F1E371FF00
            5C9BF91A044F40CE63C7D16B77561059E89192972E52E1D4E0AAF1819EC0F39F
            A7E78D58CA568C763BF05528D2BD49FC4B6FC6EFD76B7AFCD73B73F0EEFACA4D
            3E6D1AF00B84204F213B763649DEBEDDB1D7F3388745C5AE5378E3613849545E
            8BF4F5EB7FCAC93F468959624591F7B85019B18DC7D715D279273F0783EDA3B2
            3A6CFA96A373A40B76B68F4E7911228E22863D9B915646010951BDDBB31CB00C
            0105A784638B5A8B56BCD5B51D46F2178D91AE3C9500224E81711C6A318B990F
            AE76F38182002783EDA09A492CB52D46CCDC3C86EBC89101B8579A59B6162A59
            0069A500C655B0DF789008002EFC1F6D756FA859B6A5A8C7A7DF25C03671C88B
            1C6D386F31C1DBB989323B61D99416C85F95768074740CCEF0FF00FC784BFF00
            5F773FFA3E4A048E77C6DFF2158BFEB80FFD09A803B3A0614005001400500140
            050014005001400500140050014005002328652AC01046083D0D00672E9974AA
            146B7A8600C72B013FFA2E810BFD9B75FF0041BBFF00FBE20FFE374007F66DD7
            FD06EFFF00EF883FF8DD001FD9B75FF41BBFFF00BE20FF00E374007F66DD7FD0
            6EFF00FEF883FF008DD001FD9B75FF0041BBFF00FBE20FFE374007F66DD7FD06
            EFFF00EF883FF8DD001FD9B75FF41BBFFF00BE20FF00E374007F66DD7FD06EFF
            00FEF883FF008DD0059B0B48EC6D56088BB05258B39CB33124B31F72493E9CD0
            058A062328652AC01046083D0D00672E9974AA146B7A8600C72B013FFA2E810B
            FD9B75FF0041BBFF00FBE20FFE374007F66DD7FD06EFFF00EF883FF8DD001FD9
            B75FF41BBFFF00BE20FF00E374007F66DD7FD06EFF00FEF883FF008DD001FD9B
            75FF0041BBFF00FBE20FFE374007F66DD7FD06EFFF00EF883FF8DD001FD9B75F
            F41BBFFF00BE20FF00E374007F66DD7FD06EFF00FEF883FF008DD0059B0B48EC
            6D56088BB05258B39CB33124B31F72493E9CD00729E36FF90AC5FF005C07FE84
            D401D9D030A002800A002800A002800A002800A002800A002800A002800A0028
            00A002800A002800A002800A002800A002800A002800A002800A002800A00280
            0A002800A00E33C6DFF2158BFEB80FFD09A81157FE123D57FE7EBFF21A7F8500
            1FF091EABFF3F5FF0090D3FC2800FF00848F55FF009FAFFC869FE14007FC247A
            AFFCFD7FE434FF000A003FE123D57FE7EBFF0021A7F85001FF00091EABFF003F
            5FF90D3FC2800FF848F55FF9FAFF00C869FE14007FC247AAFF00CFD7FE434FF0
            A003FE123D57FE7EBFF21A7F85001FF091EABFF3F5FF0090D3FC2800FF00848F
            55FF009FAFFC869FE14007FC247AAFFCFD7FE434FF000A003FE123D57FE7EBFF
            0021A7F85001FF00091EABFF003F5FF90D3FC2800FF848F55FF9FAFF00C869FE
            14007FC247AAFF00CFD7FE434FF0A003FE123D57FE7EBFF21A7F85001FF091EA
            BFF3F5FF0090D3FC2800FF00848F55FF009FAFFC869FE14007FC247AAFFCFD7F
            E434FF000A003FE123D57FE7EBFF0021A7F85001FF00091EABFF003F5FF90D3F
            C2800FF848F55FF9FAFF00C869FE14007FC247AAFF00CFD7FE434FF0A003FE12
            3D57FE7EBFF21A7F85001FF091EABFF3F5FF0090D3FC2800FF00848F55FF009F
            AFFC869FE14007FC247AAFFCFD7FE434FF000A003FE123D57FE7EBFF0021A7F8
            5001FF00091EABFF003F5FF90D3FC2800FF848F55FF9FAFF00C869FE14007FC2
            47AAFF00CFD7FE434FF0A003FE123D57FE7EBFF21A7F85001FF091EABFF3F5FF
            0090D3FC2800FF00848F55FF009FAFFC869FE14007FC247AAFFCFD7FE434FF00
            0A003FE123D57FE7EBFF0021A7F85001FF00091EABFF003F5FF90D3FC280295F
            5EDC5F4A25BA93CC70BB41DA071F87D6803FFFD9}
        end
        object GroupBox12: TGroupBox
          Left = 14
          Top = 32
          Width = 319
          Height = 198
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Vidage du port COM'
          TabOrder = 0
          object Label32: TLabel
            Left = 34
            Top = 104
            Width = 274
            Height = 80
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Alignment = taRightJustify
            Caption = 
              'Attention avec les MOXA (ou autres convertisseurs RS232-Ethernet' +
              '), il faut leur activer le "Fast Flush" pour utiliser PURGECOMM,' +
              ' voir image ici ->'
            WordWrap = True
          end
          object CheckBoxPurgCOMM: TCheckBox
            Left = 12
            Top = 24
            Width = 303
            Height = 77
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 
              'Activer la fonction PURGECOMM au lieu de FLUSHFILEBUFFERS dans l' +
              'es communiciations sur le port s'#233'rie.'
            TabOrder = 0
            WordWrap = True
          end
        end
        object GroupBox13: TGroupBox
          Left = 14
          Top = 234
          Width = 319
          Height = 251
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'TimeOut (temps de max d'#39'attente)'
          TabOrder = 1
          object Label33: TLabel
            Left = 12
            Top = 51
            Width = 188
            Height = 40
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Temps maximum d'#39#233'criture avant "timeout" en ms'
            WordWrap = True
          end
          object Label34: TLabel
            Left = 12
            Top = 123
            Width = 197
            Height = 40
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Caption = 'Temps maximum de lecture avant "timeout" en ms'
            WordWrap = True
          end
          object Label35: TLabel
            Left = 12
            Top = 182
            Width = 281
            Height = 60
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Alignment = taCenter
            Caption = 
              'Une valeur trop courte peut faire couper pr'#233'maturement la commun' +
              'ication avec MCMT II'
            WordWrap = True
          end
          object NumberEditWriteTimeOutms: NbreEdit
            Left = 231
            Top = 57
            Width = 68
            Height = 28
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            TabOrder = 0
            Text = '500'
            ValMax = 3000.000000000000000000
            ValMin = 10.000000000000000000
            TypeData = 0
          end
          object NumberEditReadTimeoutMs: NbreEdit
            Left = 231
            Top = 129
            Width = 68
            Height = 28
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            TabOrder = 1
            Text = '2000'
            ValMax = 5000.000000000000000000
            ValMin = 10.000000000000000000
            TypeData = 0
          end
        end
      end
    end
    object TabSheet_King_et_PEC: TTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'King et PEC'
      ImageIndex = 7
      object GroupBox_King: TGroupBox
        Left = 48
        Top = 24
        Width = 710
        Height = 62
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'King'
        TabOrder = 0
        object CheckBoxActivateKing: TCheckBox
          Left = 12
          Top = 24
          Width = 278
          Height = 26
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Activation de la poursuite de King'
          TabOrder = 0
        end
      end
      object GroupBox20: TGroupBox
        Left = 51
        Top = 101
        Width = 710
        Height = 412
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'PEC'
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        object Label_Amplitude_PEC: TLabel
          Left = 41
          Top = 366
          Width = 129
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Amplitude (" d'#39'arc)'
        end
        object Label_Periode_PEC: TLabel
          Left = 41
          Top = 294
          Width = 124
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'P'#233'riode    (" d'#39'arc)'
        end
        object Label_Phase_PEC: TLabel
          Left = 41
          Top = 330
          Width = 123
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Phase      (" d'#39'arc)'
        end
        object Label_Titre_PEC_0: TLabel
          Left = 195
          Top = 222
          Width = 63
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'P'#233'riode1'
        end
        object Label_Titre_PEC_1: TLabel
          Left = 315
          Top = 222
          Width = 63
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'P'#233'riode2'
        end
        object Label_Titre_PEC_2: TLabel
          Left = 435
          Top = 222
          Width = 63
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'P'#233'riode3'
        end
        object Label100: TLabel
          Left = 18
          Top = 60
          Width = 684
          Height = 120
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 
            'On rentre ici les p'#233'riodes en " d'#39'arc des diff'#233'rentes erreurs ap' +
            'r'#232's analyse des erreurs p'#233'riodiques. On a une p'#233'riode "fondament' +
            'ale qui correspond '#224' la p'#233'riode entre deux passages sur le capte' +
            'ur inductif. Pour des raisons de continuit'#233', toutes les p'#233'riodes' +
            ' doivent '#234'tre des sous valeurs enti'#232'res de cette p'#233'riode fondame' +
            'ntale. Donc les valeurs possible sont fondamentale, fondamentale' +
            '/2, fondamentale/3 .. etc. Mettre amplitude=0 pour qu'#39' Mettre am' +
            'plitude=0 pour qu'#39'il n'#39'y ait pas d'#39'effet.il n'#39'y ait pas d'#39'effet.'
          WordWrap = True
        end
        object Label_Titre_PEC_3: TLabel
          Left = 555
          Top = 222
          Width = 63
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'P'#233'riode4'
        end
        object LabelPeriodeFondamentale: TLabel
          Left = 18
          Top = 186
          Width = 160
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'P'#233'riode fondamentale:'
        end
        object Label103: TLabel
          Left = 41
          Top = 258
          Width = 40
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Ordre'
        end
        object LabelPeriode_PEC_0: TLabel
          Left = 195
          Top = 296
          Width = 36
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = '1000'
        end
        object LabelPeriode_PEC_1: TLabel
          Left = 315
          Top = 296
          Width = 36
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = '1000'
        end
        object LabelPeriode_PEC_2: TLabel
          Left = 435
          Top = 296
          Width = 36
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = '1000'
        end
        object LabelPeriode_PEC_3: TLabel
          Left = 554
          Top = 296
          Width = 36
          Height = 20
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = '1000'
        end
        object CheckBoxActivatePEC: TCheckBox
          Left = 12
          Top = 26
          Width = 158
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Activation du PEC'
          TabOrder = 0
          OnClick = CheckBoxActivatePECClick
        end
        object NbreEditPhase_PEC_0: NbreEdit
          Left = 195
          Top = 324
          Width = 62
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 1
          Text = '0'
          TypeData = 0
        end
        object NbreEditPhase_PEC_1: NbreEdit
          Left = 315
          Top = 324
          Width = 62
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 2
          Text = '0'
          TypeData = 0
        end
        object NbreEditPhase_PEC_2: NbreEdit
          Left = 435
          Top = 324
          Width = 62
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 3
          Text = '0'
          TypeData = 0
        end
        object NbreEditAmplitude_PEC_0: NbreEdit
          Left = 195
          Top = 360
          Width = 62
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 4
          Text = '0'
          TypeData = 0
        end
        object NbreEditAmplitude_PEC_1: NbreEdit
          Left = 315
          Top = 360
          Width = 62
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 5
          Text = '0'
          TypeData = 0
        end
        object NbreEditAmplitude_PEC_2: NbreEdit
          Left = 435
          Top = 360
          Width = 62
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 6
          Text = '0'
          TypeData = 0
        end
        object NbreEditPhase_PEC_3: NbreEdit
          Left = 555
          Top = 324
          Width = 62
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 7
          Text = '0'
          TypeData = 0
        end
        object NbreEditAmplitude_PEC_3: NbreEdit
          Left = 555
          Top = 360
          Width = 62
          Height = 28
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TabOrder = 8
          Text = '0'
          TypeData = 0
        end
        object SpinEditOrdre_PEC_0: TSpinEdit
          Left = 195
          Top = 251
          Width = 63
          Height = 31
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          MaxValue = 15
          MinValue = 1
          TabOrder = 9
          Value = 1
          OnChange = SpinEditOrdre_PEC_0Change
        end
        object SpinEditOrdre_PEC_1: TSpinEdit
          Left = 315
          Top = 251
          Width = 63
          Height = 31
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          MaxValue = 15
          MinValue = 1
          TabOrder = 10
          Value = 1
          OnChange = SpinEditOrdre_PEC_1Change
        end
        object SpinEditOrdre_PEC_2: TSpinEdit
          Left = 435
          Top = 251
          Width = 63
          Height = 31
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          MaxValue = 15
          MinValue = 1
          TabOrder = 11
          Value = 1
          OnChange = SpinEditOrdre_PEC_2Change
        end
        object SpinEditOrdre_PEC_3: TSpinEdit
          Left = 554
          Top = 251
          Width = 63
          Height = 31
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          MaxValue = 15
          MinValue = 1
          TabOrder = 12
          Value = 1
          OnChange = SpinEditOrdre_PEC_3Change
        end
      end
    end
  end
  object Pane_Entrees_Sorties: TPanel
    Left = 0
    Top = 554
    Width = 870
    Height = 168
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    TabOrder = 0
    object GroupBoxCOMSELECT: TGroupBox
      Left = 440
      Top = 39
      Width = 384
      Height = 95
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Port de communication s'#233'rie RS232'
      TabOrder = 0
      object Label16: TLabel
        Left = 78
        Top = 30
        Width = 205
        Height = 20
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Num'#233'ro du port S'#233'rie RS232'
      end
      object ComboBoxNumCOM: TComboBox
        Left = 297
        Top = 24
        Width = 59
        Height = 28
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        MaxLength = 1
        TabOrder = 0
        Text = '10'
      end
      object CheckBoxAutoCOM: TCheckBox
        Left = 15
        Top = 59
        Width = 341
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Alignment = taLeftJustify
        Caption = 'Rechercher port s'#233'rie automatiquement'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = CheckBoxAutoCOMClick
      end
      object NbreEditPortSerieForced: NbreEdit
        Left = 297
        Top = 24
        Width = 74
        Height = 28
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        TabOrder = 2
        Text = '1'
        Visible = False
        ValMax = 255.000000000000000000
        ValMin = 1.000000000000000000
        TypeData = 0
      end
    end
    object CheckBoxLogFile: TCheckBox
      Left = 21
      Top = 23
      Width = 315
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Activer le fichier journal de d'#233'bug (LOG)'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = CheckBoxLogFileClick
    end
    object Panel10: TPanel
      Left = 9
      Top = 81
      Width = 182
      Height = 41
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 2
      object Button1: TButton
        Left = 12
        Top = 0
        Width = 170
        Height = 38
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = '&OK'
        ModalResult = 1
        TabOrder = 0
      end
    end
    object CheckBoxSimulator: TCheckBox
      Left = 20
      Top = 47
      Width = 175
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Activer le simulateur'
      TabOrder = 3
    end
    object CheckBoxTrace: TCheckBox
      Left = 204
      Top = 48
      Width = 176
      Height = 26
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Activer la trace'
      TabOrder = 4
    end
    object Panel11: TPanel
      Left = 200
      Top = 81
      Width = 181
      Height = 41
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 5
      object Button2: TButton
        Left = 11
        Top = 2
        Width = 169
        Height = 37
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = '&Annuler'
        ModalResult = 2
        TabOrder = 0
      end
    end
    object CheckBoxMCMT2021: TCheckBox
      Left = 474
      Top = 9
      Width = 132
      Height = 26
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'MCMT2021'
      TabOrder = 6
      WordWrap = True
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'hex'
    Filter = 'HEX|*.HEX'
    Options = [ofReadOnly]
    Title = 'Fichier Firmware'
    Left = 571
    Top = 366
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'ini'
    Filter = 'INI|*.INI'
    Left = 406
    Top = 496
  end
  object OpenDialog2: TOpenDialog
    DefaultExt = 'ini'
    Filter = 'INI|*.INI'
    Left = 866
    Top = 665
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 455
    Top = 522
  end
  object HiResTimer1: THiResTimer
    Resolution = 100
    Left = 580
    Top = 571
  end
end
