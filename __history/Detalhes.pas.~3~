unit Detalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.StrUtils, Vcl.ExtCtrls, PReport, PdfDoc;

type
  TForm5 = class(TForm)
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
    Label8: TLabel;
    txtIdProj: TEdit;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    PRPage1: TPRPage;
    PRLayoutPanel1: TPRLayoutPanel;
    PRImage1: TPRImage;
    btnDownload: TButton;
    PRGridPanel1: TPRGridPanel;
    PRlblNumProj: TPRLabel;
    PRGridPanel2: TPRGridPanel;
    PRlblFunc: TPRLabel;
    PRGridPanel3: TPRGridPanel;
    PRlblForm: TPRLabel;
    PRGridPanel4: TPRGridPanel;
    PRlblPiso: TPRLabel;
    PRGridPanel5: TPRGridPanel;
    PRlblOrg: TPRLabel;
    PRGridPanel6: TPRGridPanel;
    PRlblAddEm: TPRLabel;
    PRlblDesc: TPRLabel;
    PRlblHabil: TPRLabel;
    SaveDialog1: TSaveDialog;
    PReport1: TPReport;
    txtCriadoEm: TEdit;
    procedure txtIdProjChange(Sender: TObject);
    procedure txtPisoSKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDownloadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.btnDownloadClick(Sender: TObject);
var
  SvDlg : TSaveDialog;
  filename : string;
  pdf : TPRPage;
begin
  PRlblNumProj.Caption := txtNumProj.Text;
  PRlblFunc.Caption := txtFunc.Text;
  PRlblForm.Caption := comboBForm.Text;
  PRlblPiso.Caption := 'R$ ' + txtPisoS.Text;
  PRlblOrg.Caption := txtOrgao.Text;
  PRlblDesc.Caption := txtDesc.Text;


  SvDlg := TSaveDialog.Create(self);
  try
    SvDlg.Title := 'Salvar PDF';
    SvDlg.DefaultExt := '.pdf';
    SvDlg.FileName := 'Projeto_' + txtNumProj.Text;
    SvDlg.Filter := 'Arquivos PDF (*.pdf)|*.pdf';
    SvDlg.Options := [ofOverwritePrompt, ofPathMustExist];
    if SvDlg.Execute then
    begin
      //FileName := SvDlg.FileName;
      //pdf := PRPage1.Create(nil);
      //PReport1.FileName := FileName;
      PReport1.FileName := SvDlg.FileName;
      PReport1.BeginDoc;
      PReport1.Print(PRPage1.Create(nil));
      PReport1.EndDoc;

      //PReport1.Print(PRPage1);

      //PRPage1.SaveToFile(FileName);
    end;
  finally
    SvDlg.Free;
  end;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  txtNumProj.Text := '';
  txtFunc.Text := '';
  txtDesc.Text := '';
  txtOrgao.Text := '';
  txtPisoS.Text := '';
  listBHabil.Clear;
end;

procedure TForm5.txtIdProjChange(Sender: TObject);
var
  projnum : integer;
  funcao : string;
  formacao : string;
  descricao : string;
  habilidades : string;
  piso_salarial : double;
  orgao : string;
  i : integer;
  arrayString : TArray<string>;
  i2 : integer;
begin

  try
    FDQuery1.SQL.Text := 'select * from projetoandre where id_projeto = :num';
    FDQuery1.ParamByName('num').asInteger := strToInt(txtIdProj.Text);
    FDQuery1.Open;
    if not FDQuery1.IsEmpty then
    begin
      projnum := FDQuery1.FieldByName('projeto').AsInteger;
      funcao := FDQuery1.FieldByName('funcao').AsString;
      formacao := FDQuery1.FieldByName('formacao').AsString;
      descricao := FDQuery1.FieldByName('descricao').AsString;
      habilidades := FDQuery1.FieldByName('habilidades').AsString;
      orgao := FDQuery1.FieldByName('orgao').AsString;
      piso_salarial := FDQuery1.FieldByName('piso_salarial').AsFloat;


      txtNumProj.Text := IntToStr(projnum);
      txtFunc.Text := funcao;
      txtDesc.Text := descricao;
      txtOrgao.Text := orgao;
      txtPisoS.Text := FloatToStr(piso_salarial);

      arrayString := SplitString(habilidades, '-');

      for i2 := Low(arrayString) to High(arrayString) do
        listBHabil.Items.Add(arrayString[i2]);

      for i := 0 to comboBForm.Items.Count - 1 do
      begin
        if comboBForm.Items[i] = formacao then
        begin
          comboBForm.ItemIndex := i;
        end;

      end;
    end;
  finally
    //FDQuery1.Free;
  end;

  end;


procedure TForm5.txtPisoSKeyPress(Sender: TObject; var Key: Char);
var
  str: string;
  p: Integer;
begin
  if not (CharInSet(Key, ['0'..'9', FormatSettings.DecimalSeparator, #8, #13])) then
    Key := #0;
  str := txtPisoS.Text;
  p := Pos(FormatSettings.DecimalSeparator, str);
  if (p > 0) and (Length(str) - p > 2) then
  begin
    str := Copy(str, 1, p+1);
    txtPisoS.Text := str;
    txtPisoS.SelStart := Length(str);
  end;
end;

end.
