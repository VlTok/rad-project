object AddInfoForm: TAddInfoForm
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1082' '#1086#1090#1095#1105#1090#1091
  ClientHeight = 385
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lQuantity: TLabel
    Left = 40
    Top = 249
    Width = 60
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
    OnClick = lQuantityClick
  end
  object lSum: TLabel
    Left = 40
    Top = 281
    Width = 31
    Height = 13
    Caption = #1057#1091#1084#1084#1072
    OnClick = lQuantityClick
  end
  object ExpensesGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 846
    Height = 120
    Align = alTop
    DataSource = DataModule1.ReportDataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ReportGrid: TDBGrid
    Left = 0
    Top = 120
    Width = 846
    Height = 120
    Align = alTop
    DataSource = DataModule1.ExpensesDataSource
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object eQuantity: TEdit
    Left = 136
    Top = 246
    Width = 337
    Height = 21
    TabOrder = 2
  end
  object eSum: TEdit
    Left = 136
    Top = 273
    Width = 337
    Height = 21
    TabOrder = 3
  end
  object bAddInfo: TButton
    Left = 136
    Top = 328
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 4
    OnClick = bAddInfoClick
  end
end
