unit Query;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, PReport,
  PdfDoc;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    btnInsert: TButton;
    btnViewProjects: TButton;
    btnClose: TButton;
    btnQuerySql: TButton;
    PRPage1: TPRPage;
    PReport1: TPReport;
    PRGridPanel1: TPRGridPanel;
    PRLabel1: TPRLabel;
    btnDownload: TButton;
    procedure btnQuerySqlClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnViewProjectsClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDownloadClick(Sender: TObject);
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

procedure TForm4.btnCloseClick(Sender: TObject);
begin
  Self.Close;
  TelaInicial.Form1.Close;
end;

procedure TForm4.btnDownloadClick(Sender: TObject);
begin
  PReport1.FileName := 'C:\Users\andre\Downloads\pdfteste.pdf';
  PReport1.BeginDoc;
  PReport1.Print(PRPage1.Create(nil));
  PReport1.EndDoc;
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
  btnQuerySql.Enabled := false;
end;

end.
