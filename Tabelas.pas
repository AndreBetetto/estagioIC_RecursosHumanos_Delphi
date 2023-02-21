unit Tabelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    btnInsert: TButton;
    btnViewProjects: TButton;
    btnClose: TButton;
    btnQuerySql: TButton;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    txtFiltro: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnQuerySqlClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnViewProjectsClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure txtFiltroChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses insert, Query, TelaInicial, Detalhes;

procedure TForm3.btnCloseClick(Sender: TObject);
begin
  Self.Close;
  TelaInicial.Form1.Close;
end;

procedure TForm3.btnInsertClick(Sender: TObject);
begin
  Self.Close;
  insert.Form2.Show;
end;

procedure TForm3.btnQuerySqlClick(Sender: TObject);
begin
  Self.Close;
  Query.Form4.Show;
end;

procedure TForm3.btnViewProjectsClick(Sender: TObject);
begin
  Self.Close;
  Tabelas.Form3.Show;
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
  with FDQuery1 do
  begin
  if(ComboBox1.ItemIndex = 0) then
  begin
    SQL.Text := 'select id_projeto, projeto, funcao, piso_salarial, adicionado_em from projetoandre order by adicionado_em desc';
  end;
  if(ComboBox1.ItemIndex = 1) then
  begin
    SQL.Text := 'select id_projeto, projeto, funcao, piso_salarial, adicionado_em from projetoandre order by adicionado_em asc';
  end;
  if(ComboBox1.ItemIndex = 2) then
  begin
    SQL.Text := 'select id_projeto, projeto, funcao, piso_salarial, adicionado_em from projetoandre order by projeto asc';
  end;
  if(ComboBox1.ItemIndex = 3) then
  begin
    SQL.Text := 'select id_projeto, projeto, funcao, piso_salarial, adicionado_em from projetoandre order by projeto desc';
  end;
  Open;
end;

end;

procedure TForm3.DBGrid1DblClick(Sender: TObject);
var
  id :integer;
begin
  id := DBGrid1.Fields[0].AsInteger;
  Detalhes.Form5.txtIdProj.Text := IntToStr(id);
  Detalhes.Form5.Show;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  btnViewProjects.Enabled := false;
  ComboBox1.ItemIndex := 1;
  FDQuery1.SQL.Text := 'select id_projeto, projeto, funcao, piso_salarial, adicionado_em from projetoandre order by adicionado_em desc';
  FDQuery1.Open;
  Panel1.Color := rgb(110, 133, 183);
  //Panel2.Color := rgb(178, 200, 223);
  Form3.Color := rgb(196, 215, 224);
end;

procedure TForm3.txtFiltroChange(Sender: TObject);
var
  filter : string;
  num : integer;
begin
  filter := txtFiltro.Text;
  with FDQuery1 do
  begin
    Close;
    SQL.Clear;
    if (txtFiltro.Text <> '') then
    begin
      SQL.Add('select id_projeto, projeto, funcao, piso_salarial, adicionado_em from projetoandre where ' +
                'funcao like :filt');
      ParamByName('filt').AsString :=  '%' + txtFiltro.Text + '%';
      Open;
    end else begin
      if(ComboBox1.ItemIndex = 0) then
  begin
    SQL.Text := 'select id_projeto, projeto, funcao, piso_salarial, adicionado_em from projetoandre order by adicionado_em desc';
  end;
  if(ComboBox1.ItemIndex = 1) then
  begin
    SQL.Text := 'select id_projeto, projeto, funcao, piso_salarial, adicionado_em from projetoandre order by adicionado_em asc';
  end;
  if(ComboBox1.ItemIndex = 2) then
  begin
    SQL.Text := 'select id_projeto, projeto, funcao, piso_salarial, adicionado_em from projetoandre order by projeto asc';
  end;
  if(ComboBox1.ItemIndex = 3) then
  begin
    SQL.Text := 'select id_projeto, projeto, funcao, piso_salarial, adicionado_em from projetoandre order by projeto desc';
  end;
  open;
    end;

  end;
end;

end.
