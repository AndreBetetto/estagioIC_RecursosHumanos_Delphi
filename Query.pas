unit Query;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, PReport,
  PdfDoc, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    btnInsert: TButton;
    btnViewProjects: TButton;
    btnClose: TButton;
    btnQuerySql: TButton;
    txtInputSQL: TMemo;
    txtOutputSQL: TMemo;
    btnExec: TButton;
    btnClear: TButton;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnQuerySqlClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnViewProjectsClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnExecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses insert, Tabelas, TelaInicial;

procedure TForm4.btnClearClick(Sender: TObject);
begin
  txtInputSQL.Text := '';
end;

procedure TForm4.btnCloseClick(Sender: TObject);
begin
  Self.Close;
  TelaInicial.Form1.Close;
end;

procedure TForm4.btnExecClick(Sender: TObject);
var
  strsql : string;
begin
  strsql := txtInputSQL.Text;
  with FDQuery1 do
  begin

  try
    SQl.Clear;
    SQL.Add(strsql);
    if strsql.StartsWith('select') then
    begin
      Open;
    end else begin
      ExecSQL;
    end;
    txtOutputSQL.Text := 'Comando executado com sucesso.';
  except
    on E: Exception do
    begin
      txtOutputSQL.Text := 'Erro: ' + E.Message;
    end;
  end;
  end;
end;

procedure TForm4.btnInsertClick(Sender: TObject);
begin
  Self.Close;
  insert.Form2.Show;
end;

procedure TForm4.btnQuerySqlClick(Sender: TObject);
begin
  Self.Close;
  Query.Form4.Show;
end;

procedure TForm4.btnViewProjectsClick(Sender: TObject);
begin
  Self.Close;
  Tabelas.Form3.Show;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  txtInputSQL.Text := '';
  txtOutputSQL.Text := '';
  Panel1.Color := rgb(110, 133, 183);
  //Panel2.Color := rgb(178, 200, 223);
  Form4.Color := rgb(196, 215, 224);
end;

end.
