object FrmEnviarImagem: TFrmEnviarImagem
  Left = 0
  Top = 0
  Caption = 'Enviar imagem'
  ClientHeight = 281
  ClientWidth = 447
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
    Width = 447
    Height = 240
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 152
    ExplicitTop = 160
    ExplicitWidth = 185
    ExplicitHeight = 41
    object imgEnviarImagem: TImage
      Left = 1
      Top = 1
      Width = 445
      Height = 238
      Align = alClient
      ExplicitLeft = 372
      ExplicitTop = -105
      ExplicitWidth = 75
      ExplicitHeight = 345
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 240
    Width = 447
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 152
    ExplicitTop = 160
    ExplicitWidth = 185
    object BtnEnviarImagem: TButton
      Left = 352
      Top = 2
      Width = 92
      Height = 36
      Caption = 'Enviar imagem'
      ModalResult = 1
      TabOrder = 0
      OnClick = BtnEnviarImagemClick
    end
    object BtnCancelar: TButton
      Left = 256
      Top = 2
      Width = 92
      Height = 36
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
  end
end
