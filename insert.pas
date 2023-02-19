unit insert;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Phys.PGDef, FireDAC.Phys.PG, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    btnInsert: TButton;
    btnViewProjects: TButton;
    btnClose: TButton;
    btnQuerySql: TButton;
    txtNumProj: TEdit;
    Label1: TLabel;
    txtFunc: TEdit;
    Label2: TLabel;
    txtPisoS: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    listBForm: TListBox;
    txtDesc: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    txtHabil: TEdit;
    txtHabilAll: TEdit;
    listBHabil: TListBox;
    btnAdd: TButton;
    Label7: TLabel;
    txtOrgao: TEdit;
    btnSave: TButton;
    comboBForm: TComboBox;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
