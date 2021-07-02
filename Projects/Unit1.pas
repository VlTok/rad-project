unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ComCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB;

type
  TEmployers = class(TForm)
    PageControl1: TPageControl;
    Employers: TTabSheet;
    Затраты: TTabSheet;
    AddButton: TButton;
    UpdateButton: TButton;
    DeleteButton: TButton;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Employers: TEmployers;

implementation

{$R *.dfm}

uses Unit2;

end.
