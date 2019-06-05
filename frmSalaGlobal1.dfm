object frmSalaGlobal: TfrmSalaGlobal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecionar conversa'
  ClientHeight = 163
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnGeral: TPanel
    Left = 0
    Top = 0
    Width = 476
    Height = 163
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 19
      Width = 284
      Height = 16
      Caption = 'Selecione com quem voc'#234' deseja falar:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 26
      Top = 70
      Width = 152
      Height = 16
      Caption = 'Ou selecione o grupo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbUsuarios: TComboBox
      Left = 24
      Top = 41
      Width = 284
      Height = 21
      TabOrder = 0
      Text = 'Selecione...'
      OnClick = cbUsuariosClick
    end
    object cbGrupos: TComboBox
      Left = 24
      Top = 97
      Width = 284
      Height = 21
      TabOrder = 1
      Text = 'Selecione...'
      OnClick = cbGruposClick
    end
    object BtnCriarGrupo: TButton
      Left = 314
      Top = 95
      Width = 75
      Height = 25
      Hint = 'Clique para adicionar um novo grupo'
      Caption = 'Criar grupo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtnCriarGrupoClick
    end
  end
  object XMLTopics: TXMLDocument
    Left = 358
    Top = 24
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 424
    Top = 24
  end
end
