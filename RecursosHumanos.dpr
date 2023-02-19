program RecursosHumanos;

uses
  Vcl.Forms,
  TelaInicial in 'TelaInicial.pas' {Form1},
  insert in 'insert.pas' {Form2},
  Tabelas in 'Tabelas.pas' {Form3},
  Query in 'Query.pas' {Form4},
  Detalhes in 'Detalhes.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
