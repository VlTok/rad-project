unit DataModule;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB;

type
  TDataModule1 = class(TForm)
    ExpensesQuery: TFDQuery;
    WorkerQuery: TFDQuery;
    ReportQuery: TFDQuery;
    WorkerDataSource: TDataSource;
    ReportDataSource: TDataSource;
    addInfoProc: TFDStoredProc;
    addReportProc: TFDStoredProc;
    deleteWorkerProc: TFDStoredProc;
    addNewWorkerProc: TFDStoredProc;
    updateExpensesProc: TFDStoredProc;
    deleteExpensesProc: TFDStoredProc;
    addNewExpenses: TFDStoredProc;
    Connection: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    ProcTransaction: TFDTransaction;
    updateWorkerProc: TFDStoredProc;
    ExcelQuery: TFDQuery;
    WordQuery: TFDQuery;
    InfoQuery: TFDQuery;
    ExcelDataSource: TDataSource;
    WordDataSource: TDataSource;
    InfoDataSource: TDataSource;
    ExpensesDataSource: TDataSource;
    updateInfoProc: TFDStoredProc;
    deleteInfoProc: TFDStoredProc;
    updateReportProc: TFDStoredProc;
    deleteReportProc: TFDStoredProc;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  ExpensesQuery.Open();
  WorkerQuery.Open();
  ReportQuery.Open();
  InfoQuery.Open();
  ExcelQuery.Open();
  WordQuery.Open();
end;

end.
