unit UpdateExpense;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DataModule;

type
  TUpdateExpenseForm = class(TForm)
    Label1: TLabel;
    bUpdate: TButton;
    eName: TEdit;
    procedure bUpdateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UpdateExpenseForm: TUpdateExpenseForm;

implementation

{$R *.dfm}

procedure TUpdateExpenseForm.bUpdateClick(Sender: TObject);
begin
  DataModule.DataModule1.ProcTransaction.StartTransaction;
  DataModule.DataModule1.updateExpensesProc.Unprepare;
  DataModule.DataModule1.updateExpensesProc.Prepare;
  DataModule.DataModule1.updateExpensesProc.Params[0].Value := eName.Text;
  DataModule.DataModule1.updateExpensesProc.ExecProc;
  DataModule.DataModule1.ProcTransaction.Commit;
  DataModule.DataModule1.ExpensesQuery.Refresh();
  Self.ModalResult := mrOK;
  Close();
end;

end.
