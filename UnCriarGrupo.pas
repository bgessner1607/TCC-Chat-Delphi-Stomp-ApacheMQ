unit UnCriarGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, StompClient;

type
  TFrmCriarGrupo = class(TForm)
    EdtNomeGrupo: TEdit;
    BtnCancelar: TButton;
    BtnOk: TButton;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCriarGrupo: TFrmCriarGrupo;

implementation

{$R *.dfm}

procedure TFrmCriarGrupo.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCriarGrupo.BtnOkClick(Sender: TObject);
var
  lNomeGrupo: String;
  LStomp: IStompClient;
begin
  lNomeGrupo := '/topic/#' + EdtNomeGrupo.Text;
  lStomp := StompUtils.StompClient;
  lStomp.SetHost('localhost').Connect;
  lStomp.Subscribe(lNomeGrupo, amClient);

  Close;
end;

end.
