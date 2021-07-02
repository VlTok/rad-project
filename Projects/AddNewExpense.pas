unit AddNewExpense;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DataModule;

type
  TAddNewExpensesForm = class(TForm)
    Label1: TLabel;
    eName: TEdit;
    bAddExpenses: TButton;
    procedure bAddExpensesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddNewExpensesForm: TAddNewExpensesForm;

implementation

{$R *.dfm}

procedure TAddNewExpensesForm.bAddExpensesClick(Sender: TObject);
begin
  DataModule.DataModule1.ProcTransaction.StartTransaction;
  DataModule.DataModule1.addNewExpenses.Unprepare;
  DataModule.DataModule1.addNewExpenses.Prepare;
  DataModule.DataModule1.addNewExpenses.Params[0].Value := eName.Text;
  DataModule.DataModule1.addNewExpenses.ExecProc;
  DataModule.DataModule1.ProcTransaction.Commit;
  DataModule.DataModule1.ExpensesQuery.Refresh();
  Self.ModalResult := mrOK;
  Close();
end;

end.
