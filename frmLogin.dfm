object frmLoginPrincipal: TfrmLoginPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 318
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 391
    Height = 318
    Align = alClient
    TabOrder = 0
    object lbLogin: TLabel
      Left = 151
      Top = 32
      Width = 83
      Height = 32
      Caption = 'Login'
      Color = clCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbUsuario: TLabel
      Left = 62
      Top = 117
      Width = 60
      Height = 16
      Caption = 'Usu'#225'rio:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbSenha: TLabel
      Left = 72
      Top = 148
      Width = 50
      Height = 16
      Caption = 'Senha:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtUsuario: TEdit
      Left = 128
      Top = 116
      Width = 171
      Height = 21
      TabOrder = 0
      TextHint = 'Informe o usuario'
    end
    object edtSenha: TEdit
      Left = 128
      Top = 147
      Width = 171
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
      TextHint = 'Informe a senha'
    end
    object bntCancelar: TButton
      Left = 143
      Top = 216
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = bntCancelarClick
    end
    object btnLogar: TButton
      Left = 224
      Top = 216
      Width = 75
      Height = 25
      Caption = 'Entrar'
      TabOrder = 3
      OnClick = btnLogarClick
    end
  end
end
