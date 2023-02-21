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
    procedure btnQuerySqlClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnViewProjectsClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Query, Tabelas, TelaInicial;

procedure TForm2.btnCloseClick(Sender: TObject);
begin
  Self.Close;
  TelaInicial.Form1.Close;
end;

procedure TForm2.btnInsertClick(Sender: TObject);
begin
  Self.Close;
  insert.Form2.Show;
end;

procedure TForm2.btnQuerySqlClick(Sender: TObject);
begin
  Self.Close;
  Query.Form4.Show;
end;

procedure TForm2.btnViewProjectsClick(Sender: TObject);
begin
  Self.Close;
  Tabelas.Form3.Show;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  btnInsert.Enabled := false;
end;

end.
