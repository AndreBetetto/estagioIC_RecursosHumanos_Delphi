object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 543
  ClientWidth = 863
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -2
    Top = 0
    Width = 865
    Height = 65
    TabOrder = 0
    object btnInsert: TButton
      Left = 514
      Top = 1
      Width = 113
      Height = 65
      Caption = 'Inserir projeto'
      TabOrder = 0
    end
    object btnViewProjects: TButton
      Left = 633
      Top = 1
      Width = 113
      Height = 65
      Caption = 'Visualizar projetos'
      TabOrder = 1
    end
    object btnClose: TButton
      Left = 752
      Top = 1
      Width = 113
      Height = 65
      Caption = 'Sair'
      TabOrder = 2
    end
    object btnQuerySql: TButton
      Left = 395
      Top = 1
      Width = 113
      Height = 65
      Caption = 'Query tool'
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 200
    Width = 745
    Height = 335
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=projetoscti4'
      'User_Name=projetoscti4'
      'Password=cti123'
      'Server=pgsql.projetoscti.com.br'
      'DriverID=PG')
    Connected = True
    Left = 86
    Top = 80
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select id_projeto, projeto, funcao, piso_salarial, adicionado_em' +
        ' from projetoandre')
    Left = 150
    Top = 88
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 30
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 224
    Top = 88
  end
end
