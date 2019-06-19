unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit2, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.MainForm.Close;
end;

procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := MessageDlg('Вы действительно ходите выйти?', mtInformation,
    [mbYes, mbNo], 0) = mrYes
end;

end.
