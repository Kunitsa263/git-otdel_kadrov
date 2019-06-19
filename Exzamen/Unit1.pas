unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit2, Unit3, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit4, Unit5, Unit6;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form4.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form5.Show;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form6.Show;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Application.MainForm.Close;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Application.MainForm.Close;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    CanClose := MessageDlg('Вы действительно ходите выйти?', mtInformation,
    [mbYes, mbNo], 0) = mrYes
end;

end.
