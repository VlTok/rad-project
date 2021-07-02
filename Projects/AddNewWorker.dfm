object AddNewWorkerForm: TAddNewWorkerForm
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1085#1080#1082#1072
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lName: TLabel
    Left = 88
    Top = 51
    Width = 76
    Height = 13
    Caption = #1048#1084#1103' '#1088#1072#1073#1086#1090#1085#1080#1082#1072
  end
  object lSurname: TLabel
    Left = 88
    Top = 91
    Width = 101
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103' '#1088#1072#1073#1086#1090#1085#1080#1082#1072
  end
  object Add: TButton
    Left = 208
    Top = 139
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 0
    OnClick = AddClick
  end
  object eName: TEdit
    Left = 208
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
    Text = #1048#1084#1103
  end
  object eSurname: TEdit
    Left = 208
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
    Text = #1060#1072#1084#1080#1083#1080#1103
  end
end
