unit UnEnviarImagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmEnviarImagem = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    imgEnviarImagem: TImage;
    BtnEnviarImagem: TButton;
    BtnCancelar: TButton;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnEnviarImagemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEnviarImagem: TFrmEnviarImagem;

implementation

{$R *.dfm}

procedure TFrmEnviarImagem.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEnviarImagem.BtnEnviarImagemClick(Sender: TObject);
begin
  CloseModal;
end;

end.
