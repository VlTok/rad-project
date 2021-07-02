unit MainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Vcl.ComCtrls, DataModule, AddNewWorker,UpdateWorker,AddNewExpense,UpdateExpense,AddInfo;

type
  TMainForm = class(TForm)
    SaveDialog1: TSaveDialog;
    PageControl1: TPageControl;
    Workers: TTabSheet;
    Panel1: TPanel;
    WorkersGrid: TDBGrid;
    Panel2: TPanel;
    bAddNewWorker: TButton;
    bDeleteWorker: TButton;
    bEditWorker: TButton;
    Expenses: TTabSheet;
    Panel3: TPanel;
    ExpensesGrid: TDBGrid;
    Panel4: TPanel;
    bAddNewExpense: TButton;
    bUpdateExpense: TButton;
    bDeleteExpense: TButton;
    Report: TTabSheet;
    Panel5: TPanel;
    InfoGrid: TDBGrid;
    ReportGrid: TDBGrid;
    Panel6: TPanel;
    bAddNewReport: TButton;
    bAddNewInfo: TButton;
    ReportCreateWord: TTabSheet;
    Diagram: TTabSheet;
    ReportCreateExcel: TTabSheet;
    ReportWordDataSource: TDataSource;
    ReportExcelDataSource: TDataSource;
    ReportWordQuery: TFDQuery;
    ReportExcelQuery: TFDQuery;
    bDeleteInfo: TButton;
    bDeleteReport: TButton;
    procedure bDeleteWorkerClick(Sender: TObject);
    procedure bAddNewWorkerClick(Sender: TObject);
    procedure bEditWorkerClick(Sender: TObject);
    procedure bAddNewExpenseClick(Sender: TObject);
    procedure bUpdateExpenseClick(Sender: TObject);
    procedure bDeleteExpenseClick(Sender: TObject);
    procedure bAddNewInfoClick(Sender: TObject);
    procedure bDeleteInfoClick(Sender: TObject);
    procedure bDeleteReportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.bAddNewExpenseClick(Sender: TObject);
var
  addForm : AddNewExpense.TAddNewExpensesForm;
begin
  addForm := AddNewExpense.TAddNewExpensesForm.Create(Self);
  addForm.ShowModal;
end;

procedure TMainForm.bAddNewInfoClick(Sender: TObject);
var
  addNewInfo : TAddInfoForm;
begin
  addNewInfo := TAddInfoForm.Create(Self);
  addNewInfo.ShowModal;
end;

procedure TMainForm.bAddNewWorkerClick(Sender: TObject);
var
  addWorkerForm : AddNewWorker.TAddNewWorkerForm;
begin
  addWorkerForm := AddNewWorker.TAddNewWorkerForm.Create(Self);
  addWorkerForm.ShowModal;
end;

procedure TMainForm.bDeleteExpenseClick(Sender: TObject);
begin
  DataModule.DataModule1.ProcTransaction.StartTransaction;
  DataModule.DataModule1.deleteExpensesProc.Unprepare;
  DataModule.DataModule1.deleteExpensesProc.Prepare;
  DataModule.DataModule1.deleteExpensesProc.Params[0].Value := ExpensesGrid.DataSource.DataSet.Fields.Fields[0].Value;
  DataModule.DataModule1.deleteExpensesProc.ExecProc;
  DataModule.DataModule1.ProcTransaction.Commit;
  DataModule.DataModule1.ExpensesQuery.Refresh();
end;

procedure TMainForm.bDeleteInfoClick(Sender: TObject);
begin
  DataModule.DataModule1.ProcTransaction.StartTransaction;
  DataModule.DataModule1.deleteInfoProc.Params[0].Value := InfoGrid.DataSource.DataSet.Fields.Fields[0].Value;
  DataModule.DataModule1.deleteInfoProc.ExecProc;
  DataModule.DataModule1.ProcTransaction.Commit;
  DataModule.DataModule1.InfoQuery.Refresh();
  DataModule.DataModule1.ReportQuery.Refresh();
end;

procedure TMainForm.bDeleteReportClick(Sender: TObject);
begin
  DataModule.DataModule1.ProcTransaction.StartTransaction;
  DataModule.DataModule1.updatePutListKolKmProc.Params[0].Value := PutListInfoGrid.DataSource.DataSet.Fields.Fields[1].Value;
  DataModule.DataModule1.updatePutListKolKmProc.Params[1].Value := PutListInfoGrid.DataSource.DataSet.Fields.Fields[0].Value;
  DataModule.DataModule1.deleteReportProc.Params[0].Value := ReportGrid.DataSource.DataSet.Fields.Fields[0].Value;
  DataModule.DataModule1.updatePutListKolKmProc.ExecProc;
  DataModule.DataModule1.deleteReportProc.ExecProc;
  DataModule.DataModule1.ProcTransaction.Commit;
  DataModule.DataModule1.InfoQuery.Refresh();
  DataModule.DataModule1.ReportQuery.Refresh();
end;

procedure TMainForm.bDeleteWorkerClick(Sender: TObject);
begin
  DataModule.DataModule1.ProcTransaction.StartTransaction;
  DataModule.DataModule1.deleteWorkerProc.Unprepare;
  DataModule.DataModule1.deleteWorkerProc.Prepare;
  DataModule.DataModule1.deleteWorkerProc.Params[0].Value := WorkersGrid.DataSource.DataSet.Fields.Fields[0].Value;
  DataModule.DataModule1.deleteWorkerProc.ExecProc;
  DataModule.DataModule1.ProcTransaction.Commit;
  DataModule.DataModule1.WorkerQuery.Refresh();
end;

procedure TMainForm.bEditWorkerClick(Sender: TObject);
var
  upForm : UpdateWorker.TUpdateWorkerForm;
begin
  upForm := UpdateWorker.TUpdateWorkerForm.Create(Self);
  upForm.eName.Text := WorkersGrid.DataSource.DataSet.Fields.Fields[1].Value;
  upForm.eSurname.Text := WorkersGrid.DataSource.DataSet.Fields.Fields[2].Value;
  DataModule.DataModule1.updateWorkerProc.Params[2].Value := WorkersGrid.DataSource.DataSet.Fields.Fields[0].Value;
  upForm.ShowModal;
  upForm.Free;
end;

procedure TMainForm.bUpdateExpenseClick(Sender: TObject);
var
  upForm : UpdateExpense.TUpdateExpenseForm;
begin
  upForm := UpdateExpense.TUpdateExpenseForm.Create(Self);
  upForm.eName.Text := ExpensesGrid.DataSource.DataSet.Fields.Fields[1].Value;
  DataModule.DataModule1.updateExpensesProc.Params[1].Value := ExpensesGrid.DataSource.DataSet.Fields.Fields[0].Value;
  upForm.ShowModal;
  upForm.Free;
end;

end.