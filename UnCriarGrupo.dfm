object FrmCriarGrupo: TFrmCriarGrupo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Criar grupo'
  ClientHeight = 76
  ClientWidth = 431
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  DesignSize = (
    431
    76)
  PixelsPerInch = 96
  TextHeight = 13
  object EdtNomeGrupo: TEdit
    Left = 8
    Top = 8
    Width = 415
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    TextHint = 'Informe o nome do grupo'
  end
  object BtnCancelar: TButton
    Left = 262
    Top = 38
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 1
    OnClick = BtnCancelarClick
  end
  object BtnOk: TButton
    Left = 343
    Top = 38
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 2
    OnClick = BtnOkClick
  end
end
