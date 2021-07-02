unit AddInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, DataModule;

type
  TAddInfoForm = class(TForm)
    ExpensesGrid: TDBGrid;
    ReportGrid: TDBGrid;
    eQuantity: TEdit;
    lQuantity: TLabel;
    lSum: TLabel;
    eSum: TEdit;
    bAddInfo: TButton;
    procedure bAddInfoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddInfoForm: TAddInfoForm;

implementation

{$R *.dfm}

procedure TAddInfoForm.bAddInfoClick(Sender: TObject);
begin
  DataModule.DataModule1.ProcTransaction.StartTransaction;
  DataModule.DataModule1.addInfoProc.Unprepare;
  DataModule.DataModule1.addInfoProc.Prepare;
  DataModule.DataModule1.addInfoProc.Params[0].Value := StrToInt64((ExpensesGrid.DataSource.DataSet.Fields.Fields[0].Value));
  DataModule.DataModule1.addInfoProc.Params[1].Value := StrToInt64((ReportGrid.DataSource.DataSet.Fields.Fields[0].Value));
  DataModule.DataModule1.addInfoProc.Params[2].Value := eQuantity.Text;
  DataModule.DataModule1.addInfoProc.Params[3].Value := eSum.Text;
  DataModule.DataModule1.addInfoProc.ExecProc;
  DataModule.DataModule1.ProcTransaction.Commit;
  DataModule.DataModule1.InfoQuery.Refresh();
  Self.ModalResult := mrOK;
  Close();
end;

end.
