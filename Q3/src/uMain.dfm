object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 517
  ClientWidth = 276
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lResult: TLabel
    Left = 41
    Top = 96
    Width = 3
    Height = 15
  end
  object Label1: TLabel
    Left = 41
    Top = 35
    Width = 70
    Height = 15
    Caption = 'Informar CEP'
  end
  object eCEP: TEdit
    Left = 41
    Top = 56
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object bCEP: TButton
    Left = 168
    Top = 55
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = bCEPClick
  end
end
