unit UpdateWorker;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DataModule;

type
  TUpdateWorkerForm = class(TForm)
    bUpdate: TButton;
    lName: TLabel;
    lSurname: TLabel;
    eName: TEdit;
    eSurname: TEdit;
    procedure bUpdateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UpdateWorkerForm: TUpdateWorkerForm;

implementation

{$R *.dfm}

procedure TUpdateWorkerForm.bUpdateClick(Sender: TObject);
begin
  DataModule.DataModule1.ProcTransaction.StartTransaction;
  DataModule.DataModule1.updateWorkerProc.Unprepare;
  DataModule.DataModule1.updateWorkerProc.Prepare;
  DataModule.DataModule1.updateWorkerProc.Params[0].Value := eName.Text;
  DataModule.DataModule1.updateWorkerProc.Params[1].Value := eSurname.Text;
  DataModule.DataModule1.updateWorkerProc.ExecProc;
  DataModule.DataModule1.ProcTransaction.Commit;
  DataModule.DataModule1.WorkerQuery.Refresh();
  Self.ModalResult := mrOK;
  Close();
end;

end.
