object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Insert'
  ClientHeight = 438
  ClientWidth = 863
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 107
    Width = 94
    Height = 13
    Caption = 'N'#250'mero do projeto:'
  end
  object Label2: TLabel
    Left = 32
    Top = 147
    Width = 39
    Height = 13
    Caption = 'Fun'#231#227'o:'
  end
  object Label3: TLabel
    Left = 32
    Top = 195
    Width = 60
    Height = 13
    Caption = 'Piso-salarial:'
  end
  object Label4: TLabel
    Left = 32
    Top = 243
    Width = 51
    Height = 13
    Caption = 'Forma'#231#227'o:'
  end
  object Label5: TLabel
    Left = 456
    Top = 107
    Width = 50
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label6: TLabel
    Left = 456
    Top = 243
    Width = 58
    Height = 13
    Caption = 'Habilidades:'
  end
  object Label7: TLabel
    Left = 32
    Top = 322
    Width = 34
    Height = 13
    Caption = #211'rg'#227'o:'
  end
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
  object txtNumProj: TEdit
    Left = 132
    Top = 104
    Width = 193
    Height = 21
    TabOrder = 1
    TextHint = '...'
  end
  object txtFunc: TEdit
    Left = 132
    Top = 144
    Width = 193
    Height = 21
    TabOrder = 2
    TextHint = '...'
  end
  object txtPisoS: TEdit
    Left = 132
    Top = 192
    Width = 193
    Height = 21
    TabOrder = 3
    TextHint = '...'
  end
  object listBForm: TListBox
    Left = 132
    Top = 387
    Width = 193
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      'Ensino Fundamental Incompleto'
      'Ensino Fundamental Completo'
      'Ensino M'#233'diol Incompleto'
      'Ensino M'#233'diol Completo'
      'Ensino Superior Incompleto'
      'Ensino Superior Completo'
      '')
    TabOrder = 4
    Visible = False
  end
  object txtDesc: TEdit
    Left = 544
    Top = 104
    Width = 193
    Height = 109
    TabOrder = 5
    TextHint = '...'
  end
  object txtHabil: TEdit
    Left = 544
    Top = 240
    Width = 138
    Height = 21
    TabOrder = 6
    TextHint = '...'
  end
  object txtHabilAll: TEdit
    Left = 544
    Top = 346
    Width = 193
    Height = 21
    TabOrder = 7
  end
  object listBHabil: TListBox
    Left = 544
    Top = 267
    Width = 193
    Height = 73
    ItemHeight = 13
    TabOrder = 8
  end
  object btnAdd: TButton
    Left = 688
    Top = 236
    Width = 49
    Height = 25
    Caption = 'Add'
    TabOrder = 9
  end
  object txtOrgao: TEdit
    Left = 132
    Top = 319
    Width = 193
    Height = 21
    TabOrder = 10
    TextHint = '...'
  end
  object btnSave: TButton
    Left = 368
    Top = 363
    Width = 113
    Height = 48
    Caption = 'Salvar'
    TabOrder = 11
  end
  object comboBForm: TComboBox
    Left = 132
    Top = 238
    Width = 193
    Height = 21
    TabOrder = 12
    TextHint = '...'
    Items.Strings = (
      'Ensino Fundamental Incompleto'
      'Ensino Fundamental Completo'
      'Ensino M'#233'diol Incompleto'
      'Ensino M'#233'diol Completo'
      'Ensino Superior Incompleto'
      'Ensino Superior Completo')
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=projetoscti4'
      'User_Name=projetoscti4'
      'Password=cti123'
      'Server=pgsql.projetoscti.com.br'
      'DriverID=PG')
    Left = 270
    Top = 32
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 334
    Top = 40
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 214
    Top = 40
  end
end
