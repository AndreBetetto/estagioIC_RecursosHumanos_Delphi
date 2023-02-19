program RecursosHumanos;

uses
  Vcl.Forms,
  TelaInicial in 'TelaInicial.pas' {Form1},
  insert in 'insert.pas' {Form2},
  Tabelas in 'Tabelas.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
