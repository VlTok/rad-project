object Employers: TEmployers
  Left = 0
  Top = 0
  Caption = #1056#1072#1073#1086#1090#1085#1080#1082#1080
  ClientHeight = 251
  ClientWidth = 503
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 503
    Height = 251
    ActivePage = Employers
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 504
    ExplicitHeight = 231
    object Employers: TTabSheet
      Caption = #1056#1072#1073#1086#1090#1085#1080#1082#1080
      object AddButton: TButton
        Left = -4
        Top = 0
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 0
      end
      object UpdateButton: TButton
        Left = 77
        Top = 0
        Width = 75
        Height = 25
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 1
      end
      object DeleteButton: TButton
        Left = 158
        Top = 0
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 2
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 31
        Width = 497
        Height = 194
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object Затраты: TTabSheet
      Caption = 'Expenses'
      ImageIndex = 1
    end
  end
  object ADOConnection1: TADOConnection
    Left = 164
    Top = 136
  end
  object DataSource1: TDataSource
    Left = 260
    Top = 136
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 332
    Top = 136
  end
end
