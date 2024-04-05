object Form_scan_mcmt: TForm_scan_mcmt
  Left = 520
  Top = 304
  Caption = 'Recherche de MCMT'
  ClientHeight = 111
  ClientWidth = 277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
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
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 99
    Top = 68
    Width = 85
    Height = 32
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 2
  end
  object Panel_Info: TPanel
    Left = 16
    Top = 16
    Width = 257
    Height = 33
    Caption = 'Recherche MCMT sur COM '
    TabOrder = 0
  end
  object Button_Cancel: TButton
    Left = 104
    Top = 72
    Width = 75
    Height = 25
    Caption = '&Annuler'
    TabOrder = 1
    OnClick = Button_CancelClick
  end
end
