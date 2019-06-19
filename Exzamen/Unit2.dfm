object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 453
  Width = 163
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Otdel_kadrov_2\'#1069 +
      #1082#1079#1072#1084#1077#1085'\otdel_kadrov.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 72
    Top = 32
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
    Left = 24
    Top = 96
    object ADOTable1Код_подразделения: TAutoIncField
      FieldName = #1050#1086#1076'_'#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
      ReadOnly = True
    end
    object ADOTable1Название_подразделения: TWideStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077'_'#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
      Size = 255
    end
    object ADOTable1Служебныйтелефон: TWideStringField
      FieldName = #1057#1083#1091#1078#1077#1073#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085
      Size = 255
    end
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
    Left = 24
    Top = 160
    object ADOTable2ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOTable2логин: TWideStringField
      FieldName = #1083#1086#1075#1080#1085
      Size = 255
    end
    object ADOTable2пароль: TWideStringField
      FieldName = #1087#1072#1088#1086#1083#1100
      Size = 255
    end
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1055#1088#1080#1082#1072#1079
    Left = 24
    Top = 224
    object ADOTable3Номер_сотрудника: TIntegerField
      FieldName = #1053#1086#1084#1077#1088'_'#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
    end
    object ADOTable3Датаприказа: TDateTimeField
      FieldName = #1044#1072#1090#1072' '#1087#1088#1080#1082#1072#1079#1072
    end
    object ADOTable3Видприказа: TWideStringField
      FieldName = #1042#1080#1076' '#1087#1088#1080#1082#1072#1079#1072
      Size = 255
    end
  end
  object ADOTable4: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
    Left = 24
    Top = 288
    object ADOTable4Номер_сотрудника: TAutoIncField
      FieldName = #1053#1086#1084#1077#1088'_'#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      ReadOnly = True
    end
    object ADOTable4фамилия: TWideStringField
      FieldName = #1092#1072#1084#1080#1083#1080#1103
      Size = 255
    end
    object ADOTable4имя: TWideStringField
      FieldName = #1080#1084#1103
      Size = 255
    end
    object ADOTable4отчество: TWideStringField
      FieldName = #1086#1090#1095#1077#1089#1090#1074#1086
      Size = 255
    end
    object ADOTable4Паспорт: TWideStringField
      FieldName = #1055#1072#1089#1087#1086#1088#1090
      Size = 255
    end
    object ADOTable4Телефон: TWideStringField
      FieldName = #1058#1077#1083#1077#1092#1086#1085
      Size = 255
    end
    object ADOTable4Образование: TWideStringField
      FieldName = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
      Size = 255
    end
    object ADOTable4Должность: TWideStringField
      FieldName = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      Size = 255
    end
    object ADOTable4Зпл: TBCDField
      FieldName = #1047'/'#1087#1083
      Precision = 19
    end
    object ADOTable4Код_подразделения: TIntegerField
      FieldName = #1050#1086#1076'_'#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 104
    Top = 104
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 104
    Top = 160
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 104
    Top = 224
  end
  object DataSource4: TDataSource
    DataSet = ADOTable4
    Left = 104
    Top = 288
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource2
    Parameters = <
      item
        Name = 'p_login'
        DataType = ftWideString
        Size = -1
        Value = Null
      end
      item
        Name = 'p_passw'
        DataType = ftWideString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM ['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080']')
    Left = 64
    Top = 360
    object ADOQuery1ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQuery1логин: TWideStringField
      FieldName = #1083#1086#1075#1080#1085
      Size = 255
    end
    object ADOQuery1пароль: TWideStringField
      FieldName = #1087#1072#1088#1086#1083#1100
      Size = 255
    end
  end
end
