object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Insert'
  ClientHeight = 428
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
  object Panel1: TPanel
    Left = -2
    Top = 0
    Width = 865
    Height = 65
    ParentBackground = False
    ParentColor = True
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
    TabOrder = 1
    Visible = False
  end
  object btnSave: TButton
    Left = 383
    Top = 372
    Width = 113
    Height = 48
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = btnSaveClick
  end
  object Panel2: TPanel
    Left = 40
    Top = 99
    Width = 784
    Height = 267
    BiDiMode = bdLeftToRight
    BorderWidth = 3
    Ctl3D = False
    ParentBiDiMode = False
    ParentBackground = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 3
    object Label6: TLabel
      Left = 482
      Top = 159
      Width = 80
      Height = 13
      Caption = 'Habilidades:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 482
      Top = 24
      Width = 68
      Height = 13
      Caption = 'Descricao:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 127
      Height = 13
      Caption = 'N'#250'mero do projeto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 65
      Width = 51
      Height = 13
      Caption = 'Fun'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 112
      Width = 86
      Height = 13
      Caption = 'Piso-salarial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 159
      Width = 69
      Height = 13
      Caption = 'Forma'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 205
      Width = 43
      Height = 13
      Caption = #211'rg'#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtHabil: TEdit
      Left = 568
      Top = 156
      Width = 144
      Height = 27
      TabOrder = 0
      TextHint = '...'
    end
    object txtHabilAll: TEdit
      Left = 353
      Top = 220
      Width = 193
      Height = 19
      TabOrder = 1
      Visible = False
    end
    object listBHabil: TListBox
      Left = 568
      Top = 189
      Width = 193
      Height = 73
      ItemHeight = 13
      TabOrder = 2
    end
    object btnAdd: TButton
      Left = 718
      Top = 156
      Width = 49
      Height = 25
      Caption = 'Add'
      TabOrder = 3
      OnClick = btnAddClick
    end
    object txtDesc: TMemo
      Left = 568
      Top = 22
      Width = 193
      Height = 89
      Lines.Strings = (
        'txtDesc')
      TabOrder = 4
    end
    object txtNumProj: TEdit
      Left = 157
      Top = 22
      Width = 193
      Height = 19
      TabOrder = 5
      TextHint = '...'
      OnKeyPress = txtNumProjKeyPress
    end
    object txtFunc: TEdit
      Left = 124
      Top = 62
      Width = 193
      Height = 19
      TabOrder = 6
      TextHint = '...'
    end
    object txtPisoS: TEdit
      Left = 124
      Top = 110
      Width = 193
      Height = 19
      TabOrder = 7
      TextHint = '...'
      OnKeyPress = txtPisoSKeyPress
    end
    object txtOrgao: TEdit
      Left = 124
      Top = 199
      Width = 193
      Height = 19
      TabOrder = 8
      TextHint = '...'
    end
    object comboBForm: TComboBox
      Left = 124
      Top = 156
      Width = 193
      Height = 21
      TabOrder = 9
      TextHint = '...'
      Items.Strings = (
        'Ensino Fundamental Incompleto'
        'Ensino Fundamental Completo'
        'Ensino M'#233'dio Incompleto'
        'Ensino M'#233'dio Completo'
        'Ensino Superior Incompleto'
        'Ensino Superior Completo')
    end
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
