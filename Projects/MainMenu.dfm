object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
  ClientHeight = 382
  ClientWidth = 660
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
    Width = 660
    Height = 382
    ActivePage = Report
    Align = alClient
    TabOrder = 0
    object Workers: TTabSheet
      Caption = #1056#1072#1073#1086#1090#1085#1080#1082#1080
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 467
        Height = 354
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object WorkersGrid: TDBGrid
          Left = 1
          Top = 1
          Width = 465
          Height = 352
          Align = alClient
          DataSource = DataModule1.WorkerDataSource
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object Panel2: TPanel
        Left = 467
        Top = 0
        Width = 185
        Height = 354
        Align = alRight
        TabOrder = 1
        object bAddNewWorker: TButton
          Left = 1
          Top = 26
          Width = 183
          Height = 25
          Align = alTop
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1088#1072#1073#1086#1090#1085#1080#1082#1072
          TabOrder = 0
          OnClick = bAddNewWorkerClick
        end
        object bDeleteWorker: TButton
          Left = 1
          Top = 1
          Width = 183
          Height = 25
          Align = alTop
          Caption = #1059#1076#1072#1083#1080#1090#1100' '#1088#1072#1073#1086#1090#1085#1080#1082#1072
          TabOrder = 1
          OnClick = bDeleteWorkerClick
        end
        object bEditWorker: TButton
          Left = 1
          Top = 51
          Width = 183
          Height = 25
          Align = alTop
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1088#1072#1073#1086#1090#1085#1080#1082#1072
          TabOrder = 2
          OnClick = bEditWorkerClick
        end
      end
    end
    object Expenses: TTabSheet
      Caption = #1047#1072#1090#1088#1072#1090#1099
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 467
        Height = 354
        Align = alClient
        TabOrder = 0
        object ExpensesGrid: TDBGrid
          Left = 1
          Top = 1
          Width = 465
          Height = 352
          Align = alClient
          DataSource = DataModule1.ExpensesDataSource
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object Panel4: TPanel
        Left = 467
        Top = 0
        Width = 185
        Height = 354
        Align = alRight
        TabOrder = 1
        object bAddNewExpense: TButton
          Left = 1
          Top = 1
          Width = 183
          Height = 25
          Align = alTop
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1090#1088#1072#1090#1099
          TabOrder = 0
          OnClick = bAddNewExpenseClick
        end
        object bUpdateExpense: TButton
          Left = 1
          Top = 26
          Width = 183
          Height = 25
          Align = alTop
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1079#1072#1090#1088#1072#1090#1099
          TabOrder = 1
          OnClick = bUpdateExpenseClick
        end
        object bDeleteExpense: TButton
          Left = 1
          Top = 51
          Width = 183
          Height = 25
          Align = alTop
          Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1090#1088#1072#1090#1099
          TabOrder = 2
          OnClick = bDeleteExpenseClick
        end
      end
    end
    object Report: TTabSheet
      Caption = #1054#1090#1095#1105#1090
      ImageIndex = 2
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 467
        Height = 354
        Align = alClient
        TabOrder = 0
        object InfoGrid: TDBGrid
          Left = 1
          Top = 169
          Width = 465
          Height = 184
          Align = alTop
          DataSource = DataModule1.InfoDataSource
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object ReportGrid: TDBGrid
          Left = 1
          Top = 1
          Width = 465
          Height = 168
          Align = alTop
          DataSource = DataModule1.ReportDataSource
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object Panel6: TPanel
        Left = 467
        Top = 0
        Width = 185
        Height = 354
        Align = alRight
        TabOrder = 1
        object bAddNewReport: TButton
          Left = 1
          Top = 1
          Width = 183
          Height = 25
          Align = alTop
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1086#1090#1095#1105#1090
          TabOrder = 0
        end
        object bAddNewInfo: TButton
          Left = 1
          Top = 26
          Width = 183
          Height = 25
          Align = alTop
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102
          TabOrder = 1
          OnClick = bAddNewInfoClick
        end
        object bDeleteInfo: TButton
          Left = 1
          Top = 51
          Width = 183
          Height = 25
          Align = alTop
          Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1082' '#1086#1090#1095#1105#1090#1091
          TabOrder = 2
          OnClick = bDeleteInfoClick
          ExplicitLeft = 5
          ExplicitTop = 57
        end
        object bDeleteReport: TButton
          Left = 1
          Top = 76
          Width = 183
          Height = 25
          Align = alTop
          Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1086#1090#1095#1105#1090#1072
          TabOrder = 3
          OnClick = bDeleteReportClick
        end
      end
    end
    object ReportCreateWord: TTabSheet
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1105#1090' '#1074' MSWord'
      ImageIndex = 3
    end
    object Diagram: TTabSheet
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1076#1080#1072#1075#1088#1072#1084#1084#1091
      ImageIndex = 4
    end
    object ReportCreateExcel: TTabSheet
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1105#1090' '#1074' MSExcel'
      ImageIndex = 5
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 551
    Top = 320
  end
  object ReportWordDataSource: TDataSource
    Left = 220
    Top = 320
  end
  object ReportExcelDataSource: TDataSource
    Left = 356
    Top = 320
  end
  object ReportWordQuery: TFDQuery
    Left = 220
    Top = 272
  end
  object ReportExcelQuery: TFDQuery
    Left = 356
    Top = 272
  end
end
