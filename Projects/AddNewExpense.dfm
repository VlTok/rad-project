object AddNewExpensesForm: TAddNewExpensesForm
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1099#1093' '#1079#1072#1090#1088#1072#1090
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
  object Label1: TLabel
    Left = 112
    Top = 64
    Width = 77
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
  end
  object eName: TEdit
    Left = 195
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object bAddExpenses: TButton
    Left = 195
    Top = 104
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = bAddExpensesClick
  end
end