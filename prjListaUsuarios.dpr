program prjListaUsuarios;

uses
  Vcl.Forms,
  frmLogin in 'frmLogin.pas' {frmLoginPrincipal},
  UnCriarGrupo in 'UnCriarGrupo.pas' {$R *.res},
  MainFormClient in 'MainFormClient.pas',
  uUsuarios in 'uUsuarios.pas' {$R *.res},
  UnEnviarImagem in 'UnEnviarImagem.pas' {FrmEnviarImagem};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLoginPrincipal, frmLoginPrincipal);
  Application.CreateForm(TFrmCriarGrupo, FrmCriarGrupo);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TFrmEnviarImagem, FrmEnviarImagem);
  Application.Run;
end.
