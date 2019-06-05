unit uUsuarios;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, StompClient;


Type
TUsuarios = class
private
  fUsuarios: TStringList;

public
  procedure create;
  procedure destroy;

  procedure addUsuario(nome: String);
  procedure removerUsuario(nome: String);
  function getUsuarios: TStringList;

end;
implementation

{ TUsuarios }

procedure TUsuarios.addUsuario(nome: String);
begin
  if (fUsuarios.IndexOfName(nome) = -1) then
  begin
    fUsuarios.add(nome);
  end;
end;

procedure TUsuarios.create;
begin
  fUsuarios := TStringList.Create();
end;

procedure TUsuarios.destroy;
begin
  fUsuarios.free;
end;

function TUsuarios.getUsuarios: TStringList;
begin
  result := fUsuarios;
end;

procedure TUsuarios.removerUsuario(nome: String);
var
  posicao: Integer;
begin
  posicao := fUsuarios.IndexOfName(nome);
  if (posicao >= 0) then
  begin
    fUsuarios.Delete(posicao);
  end;
end;

end.
