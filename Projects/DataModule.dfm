object DataModule1: TDataModule1
  Left = 0
  Top = 0
  Caption = 'DataModule1'
  ClientHeight = 458
  ClientWidth = 878
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ExpensesQuery: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT ID, TITLE FROM EXPENSES ORDER BY TITLE;')
    Left = 376
    Top = 72
  end
  object WorkerQuery: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT ID, NAME, SURNAME FROM WORKERS;')
    Left = 232
    Top = 72
  end
  object ReportQuery: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT REPORT.ID, ID_WORKERS, FINISH_DATE, TOTAL_SUM, QUANTITY'
      
        'FROM REPORT JOIN INFO ON REPORT.ID=INFO.ID_REPORT ORDER BY REPOR' +
        'T.ID;')
    Left = 112
    Top = 72
  end
  object WorkerDataSource: TDataSource
    Left = 232
    Top = 128
  end
  object ReportDataSource: TDataSource
    Left = 112
    Top = 128
  end
  object addInfoProc: TFDStoredProc
    Left = 688
    Top = 184
  end
  object addReportProc: TFDStoredProc
    Left = 112
    Top = 184
  end
  object deleteWorkerProc: TFDStoredProc
    Left = 232
    Top = 280
  end
  object addNewWorkerProc: TFDStoredProc
    Left = 232
    Top = 184
  end
  object updateExpensesProc: TFDStoredProc
    Left = 376
    Top = 232
  end
  object deleteExpensesProc: TFDStoredProc
    Left = 376
    Top = 280
  end
  object addNewExpenses: TFDStoredProc
    Left = 376
    Top = 184
  end
  object Connection: TFDConnection
    Params.Strings = (
      'Database=C:\Users\User\Desktop\RAD\db\DB.FDB'
      'User_Name=SYSDBA'
      'Password=12345'
      'CharacterSet=WIN1251'
      'DriverID=FB')
    Connected = True
    Left = 480
    Top = 16
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 584
    Top = 16
  end
  object ProcTransaction: TFDTransaction
    Connection = Connection
    Left = 688
    Top = 16
  end
  object updateWorkerProc: TFDStoredProc
    Connection = Connection
    Left = 232
    Top = 232
  end
  object ExcelQuery: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT ID, TITLE FROM EXPENSES ORDER BY TITLE;')
    Left = 584
    Top = 72
  end
  object WordQuery: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT ID, TITLE FROM EXPENSES ORDER BY TITLE;')
    Left = 480
    Top = 72
  end
  object InfoQuery: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT ID, TITLE FROM EXPENSES ORDER BY TITLE;')
    Left = 688
    Top = 72
  end
  object ExcelDataSource: TDataSource
    Left = 584
    Top = 128
  end
  object WordDataSource: TDataSource
    Left = 480
    Top = 128
  end
  object InfoDataSource: TDataSource
    Left = 688
    Top = 128
  end
  object ExpensesDataSource: TDataSource
    Left = 376
    Top = 128
  end
  object updateInfoProc: TFDStoredProc
    Connection = Connection
    Left = 688
    Top = 232
  end
  object deleteInfoProc: TFDStoredProc
    Connection = Connection
    Left = 688
    Top = 280
  end
  object updateReportProc: TFDStoredProc
    Connection = Connection
    Left = 112
    Top = 232
  end
  object deleteReportProc: TFDStoredProc
    Connection = Connection
    Left = 112
    Top = 280
  end
end
