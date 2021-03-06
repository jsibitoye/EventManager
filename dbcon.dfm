object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 428
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 40
    Top = 24
    Width = 641
    Height = 201
    Color = clMenuHighlight
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'first_name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'last_name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'password'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'birthdate'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pic'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'registration_date'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 192
    Top = 336
    Width = 75
    Height = 25
    Caption = 'edit'
    TabOrder = 1
  end
  object Button2: TButton
    Left = 368
    Top = 336
    Width = 75
    Height = 25
    Caption = 'post'
    TabOrder = 2
    OnClick = Button2Click
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'MySQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbxmys.dll'
    LoginPrompt = False
    Params.Strings = (
      'Password='
      'DriverUnit=DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver150.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=15.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver150.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=15.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'VendorLib=LIBMYSQL.dll'
      'HostName=localhost'
      'Database=event_man'
      'User_Name=root'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile=')
    VendorLib = 'LIBMYSQL.dll'
    Connected = True
    Left = 24
    Top = 16
  end
  object SimpleDataSet1: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select * from chat_group'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 8
    Top = 160
    object SimpleDataSet1first_name: TStringField
      FieldName = 'first_name'
      Required = True
      Size = 15
    end
    object SimpleDataSet1last_name: TStringField
      FieldName = 'last_name'
      Required = True
      Size = 15
    end
    object SimpleDataSet1user_name: TStringField
      FieldName = 'user_name'
      Required = True
      Size = 10
    end
    object SimpleDataSet1password: TStringField
      FieldName = 'password'
      Required = True
      Size = 12
    end
    object SimpleDataSet1birthdate: TStringField
      FieldName = 'birthdate'
      Required = True
      Size = 12
    end
    object SimpleDataSet1pic: TStringField
      FieldName = 'pic'
      Required = True
      Size = 100
    end
    object SimpleDataSet1user_id: TIntegerField
      FieldName = 'user_id'
      Required = True
    end
    object SimpleDataSet1registration_date: TSQLTimeStampField
      FieldName = 'registration_date'
    end
  end
  object DataSource1: TDataSource
    DataSet = SQLQuery1
    Left = 24
    Top = 120
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from staff')
    SQLConnection = SQLConnection1
    Left = 32
    Top = 56
    object SQLQuery1Name: TStringField
      FieldName = 'Name'
      Required = True
      Size = 15
    end
    object SQLQuery1SureName: TStringField
      FieldName = 'SureName'
      Required = True
      Size = 15
    end
    object SQLQuery1MaritalStatus: TStringField
      FieldName = 'MaritalStatus'
      Required = True
      Size = 15
    end
    object SQLQuery1Email: TMemoField
      FieldName = 'Email'
      Required = True
      BlobType = ftMemo
      Size = 1
    end
    object SQLQuery1Department: TStringField
      FieldName = 'Department'
      Required = True
    end
    object SQLQuery1Phone: TStringField
      FieldName = 'Phone'
      Required = True
      Size = 12
    end
    object SQLQuery1Staff_Id: TIntegerField
      FieldName = 'Staff_Id'
      Required = True
    end
    object SQLQuery1Picture: TStringField
      FieldName = 'Picture'
      Required = True
      Size = 30
    end
    object SQLQuery1Reg_date: TStringField
      FieldName = 'Reg_date'
      Required = True
      Size = 15
    end
  end
  object chatTable: TSQLTable
    MaxBlobSize = 1
    SQLConnection = SQLConnection1
    TableName = 'comments'
    Left = 304
    Top = 248
  end
end
