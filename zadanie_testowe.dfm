object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Window'
  ClientHeight = 406
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 504
    Top = 384
    Width = 118
    Height = 13
    Caption = 'Ilo'#347#263' wierszy'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 8
    Width = 372
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    MaxErrors = 0
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 39
    Width = 372
    Height = 274
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object DBGrid2: TDBGrid
    Left = 378
    Top = 39
    Width = 367
    Height = 274
    DataSource = DataSource2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator2: TDBNavigator
    Left = 378
    Top = 8
    Width = 360
    Height = 25
    DataSource = DataSource2
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    TabOrder = 3
  end
  object CheckBox1: TCheckBox
    Left = 267
    Top = 344
    Width = 105
    Height = 26
    Caption = 'Podsumowanie'
    TabOrder = 4
    OnClick = CheckBox1Click
  end
  object Button1: TButton
    Left = 628
    Top = 336
    Width = 129
    Height = 25
    Caption = 'Za'#322'aduj losowe dane'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 628
    Top = 377
    Width = 129
    Height = 21
    NumbersOnly = True
    TabOrder = 6
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'dokumenty'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver260.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver260.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      
        'Database=C:\Users\Asus\Desktop\proba\zadanie_testowe\Zadanie_tes' +
        'towe\baza.fdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Connected = True
    Left = 192
    Top = 80
  end
  object SQLDataSet1: TSQLDataSet
    DataSource = DataSource1
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 184
    Top = 160
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 176
    Top = 232
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 176
    Top = 360
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 184
    Top = 304
  end
  object SQLDataSet2: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 568
    Top = 120
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet2
    Left = 560
    Top = 184
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 560
    Top = 240
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 560
    Top = 304
  end
  object SQLDataSet3: TSQLDataSet
    DataSource = DataSource3
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 80
    Top = 160
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = SQLDataSet3
    Left = 72
    Top = 224
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider3'
    ReadOnly = True
    Left = 64
    Top = 288
  end
  object DataSource3: TDataSource
    DataSet = ClientDataSet3
    Left = 56
    Top = 352
  end
  object SQLStoredProc1: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ITERATIONS'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = SQLConnection1
    StoredProcName = 'FILL_DATABASE'
    Left = 416
    Top = 160
  end
  object DataSource4: TDataSource
    DataSet = SQLStoredProc1
    Left = 424
    Top = 240
  end
end
