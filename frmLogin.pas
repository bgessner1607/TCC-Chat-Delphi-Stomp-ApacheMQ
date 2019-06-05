unit frmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  StompClient, MainFormClient, frmSalaGlobal1, StrUtils;

type
  TfrmLoginPrincipal = class(TForm)
    Panel1: TPanel;
    lbLogin: TLabel;
    lbUsuario: TLabel;
    lbSenha: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    bntCancelar: TButton;
    btnLogar: TButton;
    procedure btnLogarClick(Sender: TObject);
    procedure bntCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    stomp: IStompClient;
    roomname: string;
  end;

var
  frmLoginPrincipal: TfrmLoginPrincipal;

implementation

{$R *.dfm}

procedure TfrmLoginPrincipal.bntCancelarClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmLoginPrincipal.btnLogarClick(Sender: TObject);
begin
  roomname := '/topic/@' + trim(edtUsuario.Text);
  stomp := StompUtils.StompClient;

  stomp.SetHost('localhost').Connect;

  //Setup for reading messages
  stomp.Subscribe(LowerCase(roomname), amClient);
  stomp.Unsubscribe(LowerCase(roomname));


  //Cria o formulário sala global
  frmSalaGlobal := TfrmSalaGlobal.Create(Application);
  frmSalaGlobal.usuarioAtivo := trim(LowerCase(edtUsuario.Text));
  frmSalaGlobal.stomp := stomp;
  self.Visible := false;
  frmSalaGlobal.ShowModal;
  self.Visible := true;
end;

end.
