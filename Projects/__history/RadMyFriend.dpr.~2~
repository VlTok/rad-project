program RadMyFriend;

uses
  Vcl.Forms,
  DataModule in 'DataModule.pas' {DataModule1},
  AddNewExpense in 'AddNewExpense.pas' {AddNewExpensesForm},
  MainMenu in 'MainMenu.pas' {MainForm},
  AddNewWorker in 'AddNewWorker.pas' {AddNewWorkerForm},
  UpdateWorker in 'UpdateWorker.pas' {UpdateWorkerForm},
  UpdateExpense in 'UpdateExpense.pas' {UpdateExpenseForm},
  AddInfo in 'AddInfo.pas' {AddInfoForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TAddNewExpensesForm, AddNewExpensesForm);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAddNewWorkerForm, AddNewWorkerForm);
  Application.CreateForm(TUpdateWorkerForm, UpdateWorkerForm);
  Application.CreateForm(TUpdateExpenseForm, UpdateExpenseForm);
  Application.CreateForm(TAddInfoForm, AddInfoForm);
  Application.Run;
end.
