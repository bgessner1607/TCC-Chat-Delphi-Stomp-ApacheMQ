unit MainFormClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, StompClient, StrUtils, jpeg, Types, Vcl.ComCtrls,
  Vcl.OleCtrls, SHDocVw, MSHTML, ActiveX,  System.NetEncoding,
  Vcl.Buttons, Vcl.ExtDlgs, unEnviarImagem, Soap.EncdDecd;

type
  TForm5 = class(TForm)
    tmr: TTimer;
    wbchat: TWebBrowser;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    Memo2: TMemo;
    Button2: TButton;
    BtnEnviarImagem: TBitBtn;
    htmlTemplate: TMemo;
    templateImagem: TMemo;
    procedure tmrTimer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Memo2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnEnviarImagemClick(Sender: TObject);
  private
    procedure WBLoadHTML(WebBrowser: TWebBrowser; HTMLCode: string) ;

  public
    stomp: IStompClient;
    roomname: string;
    usuarioAtivo :string;
    function formatarMensagem(quem, quando, mensagem: string; eu: boolean): String;
    function formatarHTML(html, mensagem: string): String;
    function ImageToBase64(image: TImage): String;
  end;

var
  Form5: TForm5;

implementation
const
  CMENSAGEM1 = '<div class="container"> '+
  '<img src="<!--imagem!-->" alt="Avatar" class="img" style="width:100%;"> '+
  '<b><!--quem!--></b> '+
  '<p><!--mensagem!--></p> '+
  '<span class="time-right"><small><!--quando!--></small></span> '+
'</div> '+
              '<!--inserir_mensagem!-->';

  CMENSAGEM2 = '<div class="container darker"> '+
  '<img src="<!--imagem!-->"  class="img right" alt="Avatar" style="width:100%;"> '+
  '<b><!--quem!--></b> '+
  '<p><!--mensagem!--></p> '+
  '<span class="time-left"><small><!--quando!--></small></span> '+
'</div> '+
              '<!--inserir_mensagem!-->';
{$R *.dfm}

function TForm5.ImageToBase64(image: TImage): String;
var
  lImagemBase64: String;
  stream : TMemoryStream;
begin
 stream := TMemoryStream.Create;
  try
    image.picture.SaveToStream(stream);
    lImagemBase64 := EncodeBase64(stream.Memory, stream.Size);
  finally
    stream.Free;
  end;
  result := 'data:image/png;base64,'+lImagemBase64;
end;


procedure TForm5.BtnEnviarImagemClick(Sender: TObject);
var
  lImagemBase64: String;
begin
  if OpenPictureDialog1.Execute() then
  begin
    FrmEnviarImagem.imgEnviarImagem.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    FrmEnviarImagem.ShowModal();
    if (FrmEnviarImagem.ModalResult = mrOk) then
    begin
      //chama rotina para grupos
      if (ContainsText(roomname, '#')) then
      begin
          //converter a imagem para base64
          lImagemBase64 := ImageToBase64(FrmEnviarImagem.imgEnviarImagem);
          stomp.Send('/topic/'+ roomname,  lImagemBase64,
          StompUtils.Headers
              .Add('sender', usuarioAtivo)
              .Add('imagem', 'S')
              .Add('datetime', formatdatetime('yyyy/mm/dd hh:nn:ss', now))
              .Add(StompUtils.NewPersistentHeader(true))
              );
      end
      else    // chama rotina para conversas individuais
      begin
        //converter a imagem para base64
        lImagemBase64 := ImageToBase64(FrmEnviarImagem.imgEnviarImagem);
        stomp.Send('/queue/'+ roomname + '@' + usuarioAtivo , lImagemBase64,
          StompUtils.Headers
            .Add('sender', usuarioAtivo)
            .Add('imagem', 'S')
            .Add('datetime', formatdatetime('yyyy/mm/dd hh:nn:ss', now))
            .Add(StompUtils.NewPersistentHeader(true))
            );

            //converter a imagem para base64
            lImagemBase64 := ImageToBase64(FrmEnviarImagem.imgEnviarImagem);
            stomp.Send('/queue/@'+ usuarioAtivo + roomname, lImagemBase64,
            StompUtils.Headers
              .Add('sender', usuarioAtivo)
              .Add('imagem', 'S')
              .Add('datetime', formatdatetime('yyyy/mm/dd hh:nn:ss', now))
              .Add(StompUtils.NewPersistentHeader(true))
              );
      end;
      Memo2.Lines.Clear;
    end;
  end;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  if (ContainsText(roomname, '#')) then
  begin
    stomp.Send('/topic/'+ roomname, Memo2.Lines.Text,
      StompUtils.Headers
        .Add('sender', usuarioAtivo)
        .Add('datetime', formatdatetime('yyyy/mm/dd hh:nn:ss', now))
        .Add(StompUtils.NewPersistentHeader(true))
        );
  end
  else
  begin
    stomp.Send('/queue/'+ roomname + '@' + usuarioAtivo , Memo2.Lines.Text,
      StompUtils.Headers
        .Add('sender', usuarioAtivo)
        .Add('imagem', 'N')
        .Add('datetime', formatdatetime('yyyy/mm/dd hh:nn:ss', now))
        .Add(StompUtils.NewPersistentHeader(true))
        );

    stomp.Send('/queue/@'+ usuarioAtivo + roomname, Memo2.Lines.Text,
      StompUtils.Headers
        .Add('sender', usuarioAtivo)
        .Add('imagem', 'N')
        .Add('datetime', formatdatetime('yyyy/mm/dd hh:nn:ss', now))
        .Add(StompUtils.NewPersistentHeader(true))
        );
  end;

  Memo2.Lines.Clear;
end;

function TForm5.formatarHTML(html, mensagem: string): String;
begin
  Result := StringReplace(html, '<!--inserir_mensagem!-->', mensagem, []);
end;

function TForm5.formatarMensagem(quem, quando, mensagem: string; eu: boolean): String;
var
  lMensagem: string;
begin
  if eu then
    lMensagem := CMENSAGEM2
  else
    lMensagem := CMENSAGEM1;
  lMensagem := StringReplace(lMensagem, '<!--imagem!-->', templateImagem.Lines.GetText(), []);
  lMensagem := StringReplace(lMensagem, '<!--quem!-->', quem, []);
  lMensagem := StringReplace(lMensagem, '<!--quando!-->', quando, []);
  lMensagem := StringReplace(lMensagem, '<!--mensagem!-->', mensagem, []);
  result := lMensagem;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tmr.Enabled := false;
  if (ContainsText(roomname, '#')) then
    stomp.Unsubscribe('/topic/' + roomname)
  else
    stomp.Unsubscribe('/queue/@' + usuarioAtivo + roomname);
end;

procedure TForm5.FormShow(Sender: TObject);
var
  lHTML: String;
begin
  lHTML := htmlTemplate.Lines.GetText();
  WBLoadHTML(wbchat, lHTML);

  tmr.Enabled := true;
  Self.Caption := '@' + usuarioAtivo + ' está falando com ' + roomname;
  if (ContainsText(roomname, '#')) then
    stomp.Subscribe('/topic/' + roomname , amClient)
  else
    stomp.Subscribe('/queue/@' + usuarioAtivo + roomname , amClient);
end;

procedure TForm5.Memo2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key = 13) and not (ssCtrl in Shift) then
  begin
    key := 0;
    Button2.Click;
  end;
end;

procedure TForm5.WBLoadHTML(WebBrowser: TWebBrowser; HTMLCode: string) ;
var
   sl: TStringList;
   ms: TMemoryStream;
begin
   WebBrowser.Navigate('about:blank') ;
   while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
    Application.ProcessMessages;

   if Assigned(WebBrowser.Document) then
   begin
     sl := TStringList.Create;
     try
       ms := TMemoryStream.Create;
       try
         sl.Text := HTMLCode;
         sl.SaveToStream(ms) ;
         ms.Seek(0, 0) ;
         (WebBrowser.Document as IPersistStreamInit).Load(TStreamAdapter.Create(ms)) ;
       finally
         ms.Free;
       end;
     finally
       sl.Free;
     end;
   end;
end;

procedure TForm5.tmrTimer(Sender: TObject);
const
  CIMG = '<div width="100px" height="100px"> <img src="<!--src-imagem!-->" class="zoom" width="100px"> </div>';
var
  f: IStompFrame;
  fw: FLASHWINFO;
  usuario: string;
  lposicao: string;
  mensagem, imagem: string;
  eu: boolean;
begin
  eu := false;
  f := stomp.Receive(50);  //this should be done in a secondary thread
  if assigned(f) then
  begin
    usuario := f.GetHeaders.Value('sender');
    lposicao := 'left';
    if (usuario = usuarioAtivo) then
    begin
      eu := true;
      usuario := 'Você';
      lposicao := 'right';
    end;

    if (f.GetHeaders.value('imagem') = 'S') then
    begin
      imagem := StringReplace(CIMG, '<!--src-imagem!-->', f.GetBody, []);
      mensagem := formatarMensagem(usuario, f.GetHeaders.Value('datetime'), imagem , eu);
      (wbchat.Document as IHTMLDocument2).body.innerHTML := formatarHTML((wbchat.Document as IHTMLDocument2).body.innerHTML, mensagem);
    end
    else
    begin
      mensagem := formatarMensagem(usuario, f.GetHeaders.Value('datetime'), f.GetBody, eu);
      (wbchat.Document as IHTMLDocument2).body.innerHTML := formatarHTML((wbchat.Document as IHTMLDocument2).body.innerHTML, mensagem);
    end;
    if (WindowState = wsMinimized) or (Application.ActiveFormHandle <> self.Handle) then
    begin
      fw.cbSize := SizeOf(FLASHWINFO);
      fw.hwnd := self.Handle;
      fw.dwFlags := FLASHW_ALL;
      fw.uCount := 5;
      fw.dwTimeout := 500;
      FlashWindowEx(fw);
    end;
  end;

end;

end.
