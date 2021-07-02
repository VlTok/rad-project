unit AddNewWorker;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DataModule;

type
  TAddNewWorkerForm = class(TForm)
    Add: TButton;
    eName: TEdit;
    eSurname: TEdit;
    lName: TLabel;
    lSurname: TLabel;
    procedure AddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddNewWorkerForm: TAddNewWorkerForm;

implementation

{$R *.dfm}

procedure TAddNewWorkerForm.AddClick(Sender: TObject);
begin
  DataModule.DataModule1.ProcTransaction.StartTransaction;
  DataModule.DataModule1.addNewWorkerProc.Unprepare;
  DataModule.DataModule1.addNewWorkerProc.Prepare;
  DataModule.DataModule1.addNewWorkerProc.Params[0].Value := eName.Text;
  DataModule.DataModule1.addNewWorkerProc.Params[1].Value := eSurname.Text;
  DataModule.DataModule1.addNewWorkerProc.ExecProc;
  DataModule.DataModule1.ProcTransaction.Commit;
  DataModule.DataModule1.WorkerQuery.Refresh();
  Self.ModalResult := mrOK;
  Close();
end;

end.
