object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Query'
  ClientHeight = 547
  ClientWidth = 863
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 101
    Width = 177
    Height = 13
    Caption = 'Digite aqui o comando SQL:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 269
    Width = 40
    Height = 13
    Caption = 'Sa'#237'da:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = -2
    Top = 0
    Width = 865
    Height = 65
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentColor = True
    ParentFont = False
    TabOrder = 0
    object btnInsert: TButton
      Left = 514
      Top = 1
      Width = 113
      Height = 65
      Caption = 'Inserir projeto'
      TabOrder = 0
      OnClick = btnInsertClick
    end
    object btnViewProjects: TButton
      Left = 633
      Top = 1
      Width = 113
      Height = 65
      Caption = 'Visualizar projetos'
      TabOrder = 1
      OnClick = btnViewProjectsClick
    end
    object btnClose: TButton
      Left = 752
      Top = 1
      Width = 113
      Height = 65
      Caption = 'Sair'
      TabOrder = 2
      OnClick = btnCloseClick
    end
    object btnQuerySql: TButton
      Left = 395
      Top = 1
      Width = 113
      Height = 65
      Caption = 'Query tool'
      TabOrder = 3
      OnClick = btnQuerySqlClick
    end
  end
  object txtInputSQL: TMemo
    Left = 32
    Top = 120
    Width = 801
    Height = 97
    Lines.Strings = (
      'txtInputSQL')
    TabOrder = 1
  end
  object txtOutputSQL: TMemo
    Left = 32
    Top = 288
    Width = 801
    Height = 89
    Lines.Strings = (
      'txtOutputSQL')
    TabOrder = 2
  end
  object btnExec: TButton
    Left = 656
    Top = 223
    Width = 177
    Height = 25
    Caption = 'Executar'
    TabOrder = 3
    OnClick = btnExecClick
  end
  object btnClear: TButton
    Left = 32
    Top = 223
    Width = 177
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = btnClearClick
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 383
    Width = 801
    Height = 74
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from projetoandre')
    Left = 334
    Top = 40
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=projetoscti4'
      'User_Name=projetoscti4'
      'Password=cti123'
      'Server=pgsql.projetoscti.com.br'
      'DriverID=PG')
    Connected = True
    Left = 270
    Top = 32
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 214
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 384
    Top = 240
  end
end
