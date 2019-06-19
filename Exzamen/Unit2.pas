unit Unit2;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    ADOTable4: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    ADOTable1Код_подразделения: TAutoIncField;
    ADOTable1Название_подразделения: TWideStringField;
    ADOTable1Служебныйтелефон: TWideStringField;
    ADOTable4Номер_сотрудника: TAutoIncField;
    ADOTable4фамилия: TWideStringField;
    ADOTable4имя: TWideStringField;
    ADOTable4отчество: TWideStringField;
    ADOTable4Паспорт: TWideStringField;
    ADOTable4Телефон: TWideStringField;
    ADOTable4Образование: TWideStringField;
    ADOTable4Должность: TWideStringField;
    ADOTable4Зпл: TBCDField;
    ADOTable4Код_подразделения: TIntegerField;
    ADOTable3Номер_сотрудника: TIntegerField;
    ADOTable3Датаприказа: TDateTimeField;
    ADOTable3Видприказа: TWideStringField;
    ADOTable2ID: TAutoIncField;
    ADOTable2логин: TWideStringField;
    ADOTable2пароль: TWideStringField;
    ADOQuery1: TADOQuery;
    ADOQuery1ID: TAutoIncField;
    ADOQuery1логин: TWideStringField;
    ADOQuery1пароль: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule2.DataModuleCreate(Sender: TObject);
begin
  with ADOConnection1 do
  begin
    Connected := False;
    ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0; ' +
      'Persist Security Info=False; Data Source=' + 'otdel_kadrov.mdb';
    Connected := True;
  end;

  // Технология ADO
  DataModule2.ADOTable1.Active := True;
  DataModule2.ADOTable2.Active := True;
  DataModule2.ADOTable3.Active := True;
  DataModule2.ADOTable4.Active := True;
  DataModule2.ADOQuery1.Active := True;
end;

end.
