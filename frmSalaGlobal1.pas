unit frmSalaGlobal1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, StrUtils, MainFormClient, StompClient, Vcl.ComCtrls, unCriarGrupo;

type
  TTopicos = class
  private
    fGrupos,
    fUsuarios: TStringList;
    fusuario,
    fsenha: String;
    fHTTP: TIdHTTP;
    fXML: TXMLDocument;
    fCarregado: boolean;
    fForcarCarregamento: Boolean;
    function getGrupos: TStringList;
    function getUsuarios: TStringList;

  public
    procedure carregar;
    constructor create(usuario, senha: string; http: TIdHTTP; xml: TXMLDocument);
    destructor destroy;
    property usuarios: TStringList read getUsuarios;
    property grupos: TStringList read getGrupos;
    property forcarCarregamento: Boolean read fForcarCarregamento write fForcarCarregamento;
  end;

  TfrmSalaGlobal = class(TForm)
    pnGeral: TPanel;
    cbUsuarios: TComboBox;
    Label1: TLabel;
    XMLTopics: TXMLDocument;
    IdHTTP1: TIdHTTP;
    cbGrupos: TComboBox;
    BtnCriarGrupo: TButton;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure cbUsuariosClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnCriarGrupoClick(Sender: TObject);
    procedure cbGruposClick(Sender: TObject);
  private

    { Private declarations }
  public
    gTopicos: TTopicos;
    usuarioAtivo: String;
    stomp: IStompClient;
  end;


var
  frmSalaGlobal: TfrmSalaGlobal;

implementation

{$R *.dfm}

procedure TfrmSalaGlobal.BtnCriarGrupoClick(Sender: TObject);
begin
  self.Visible := false;
  FrmCriarGrupo.ShowModal;
  self.Visible := true;

  gTopicos.carregar;
  cbGrupos.Items := gTopicos.grupos;
end;

procedure TfrmSalaGlobal.cbGruposClick(Sender: TObject);
begin
  //chama o formulário de chat
  Form5.roomname := trim(cbGrupos.Items[cbGrupos.ItemIndex]);
  Form5.usuarioAtivo := usuarioAtivo;
  Form5.stomp := stomp;
  self.Visible := false;
  Form5.ShowModal;
  self.Visible := true;
end;

procedure TfrmSalaGlobal.cbUsuariosClick(Sender: TObject);
begin
  //chama o formulário de chat
  Form5.roomname := trim(cbUsuarios.Items[cbUsuarios.ItemIndex]);
  Form5.usuarioAtivo := usuarioAtivo;
  Form5.stomp := stomp;
  self.Visible := false;
  Form5.ShowModal;
  self.Visible := true;
end;

procedure TfrmSalaGlobal.FormDestroy(Sender: TObject);
begin
  gTopicos.Free;
end;

procedure TfrmSalaGlobal.FormShow(Sender: TObject);
begin
  gTopicos := TTopicos.create('admin', 'admin', IdHTTP1, XMLTopics);
  cbGrupos.Items.Clear;
  cbUsuarios.Items.Clear;
  cbUsuarios.Items := gTopicos.usuarios;
  cbGrupos.Items := gTopicos.grupos;
end;

{ TTopicos }

procedure TTopicos.carregar;
const
  CAttrName = 'name';
var
  LNodeElement, LNode: IXMLNode;
  LAttrValue: Variant;
  i: Integer;
begin
  fUsuarios.Clear;
  fGrupos.Clear;
  fHttp.Request.BasicAuthentication := true;
  fHttp.Request.Username := fusuario;
  fHttp.Request.Password := fsenha;

  fXML.XML.Clear;
  fXML.XML.add(fHTTP.get('http://localhost:8161/admin/xml/topics.jsp'));
  fXML.Active := true;

  // Obtem todos os topicos
  LNodeElement := fXML.ChildNodes.FindNode('topics');
  if (LNodeElement <> nil) then
  begin
    for i := 0 to LNodeElement.ChildNodes.Count - 1 do
    begin
      LNode := LNodeElement.ChildNodes.Get(i);
      if (LNode.HasAttribute(CAttrName)) then
      begin
        LAttrValue := LNode.Attributes[CAttrName];

        if not (ContainsText(LAttrValue, 'ActiveMQ')) then
        begin
          if (ContainsText(LAttrValue, '@')) then // Usuarios
          begin
            fUsuarios.Add(trim(LAttrValue));
          end
          else
          if (ContainsText(trim(LAttrValue), '#')) then // Grupos
          begin
            fGrupos.Add(LAttrValue);
          end;
        end;
      end;
    end;
  end;
  fXML.Active := false;
end;

constructor TTopicos.create(usuario, senha: string; http: TIdHTTP; xml: TXMLDocument);
begin
  inherited create;
  fForcarCarregamento := false;
  fCarregado := false;
  fusuario := usuario;
  fsenha := senha;
  fGrupos := TStringList.Create;
  fUsuarios := TStringList.Create;

  fHTTP := http;
  fXML := xml;
end;

destructor TTopicos.destroy;
begin
  fGrupos.Free;
  fUsuarios.Free;
  inherited destroy;
end;

function TTopicos.getGrupos: TStringList;
begin
  if (not fCarregado or fForcarCarregamento) then
    carregar;
  result := fGrupos;
end;

function TTopicos.getUsuarios: TStringList;
begin
  if ( not fCarregado or fForcarCarregamento) then
    carregar;
  result := fUsuarios;
end;

end.
