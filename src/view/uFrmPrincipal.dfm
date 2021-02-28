object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Banco Virtual'
  ClientHeight = 236
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pgControl: TPageControl
    Left = 0
    Top = 0
    Width = 292
    Height = 236
    ActivePage = pg1
    Align = alClient
    TabOrder = 0
    object pg1: TTabSheet
      Caption = 'Criar Conta'
      object Label3: TLabel
        Left = 24
        Top = 84
        Width = 65
        Height = 13
        Caption = 'Tipo de conta'
      end
      object edtNome: TLabeledEdit
        Left = 24
        Top = 45
        Width = 217
        Height = 21
        EditLabel.Width = 97
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome do correntista'
        TabOrder = 0
      end
      object cmbTipoConta: TComboBox
        Left = 24
        Top = 99
        Width = 121
        Height = 21
        TabOrder = 1
        Items.Strings = (
          'Conta Corrente'
          'Poupan'#231'a'
          'Cart'#227'o de Cr'#233'dito')
      end
      object btnCriarConta: TButton
        Left = 166
        Top = 97
        Width = 75
        Height = 25
        Caption = 'Criar Conta'
        TabOrder = 2
        OnClick = btnCriarContaClick
      end
    end
    object pg2: TTabSheet
      Caption = 'Opera'#231#245'es'
      ImageIndex = 1
      object Label1: TLabel
        Left = 208
        Top = 3
        Width = 57
        Height = 13
        Caption = 'Saldo atual:'
      end
      object lblSaldo: TLabel
        Left = 208
        Top = 30
        Width = 57
        Height = 35
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -29
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblNome: TLabel
        Left = 16
        Top = 11
        Width = 61
        Height = 13
        Caption = 'Correntista: '
      end
      object lblTipoConta: TLabel
        Left = 16
        Top = 30
        Width = 72
        Height = 13
        Caption = 'Tipo de conta: '
      end
      object Label4: TLabel
        Left = 104
        Top = 66
        Width = 87
        Height = 13
        Caption = 'Valor da opera'#231#227'o'
      end
      object Label2: TLabel
        Left = 98
        Top = 117
        Width = 93
        Height = 13
        Caption = 'Escolha a opera'#231#227'o'
      end
      object edtValor: TEdit
        Left = 88
        Top = 85
        Width = 113
        Height = 21
        TabOrder = 0
      end
      object btnDeposito: TButton
        Left = 23
        Top = 152
        Width = 75
        Height = 25
        Caption = 'Dep'#243'sito '
        TabOrder = 1
        OnClick = btnDepositoClick
      end
      object btnSaque: TButton
        Left = 104
        Top = 152
        Width = 75
        Height = 25
        Caption = 'Saque'
        TabOrder = 2
        OnClick = btnSaqueClick
      end
      object btnSaldo: TButton
        Left = 185
        Top = 152
        Width = 75
        Height = 25
        Caption = 'Saldo atual'
        TabOrder = 3
        OnClick = btnSaldoClick
      end
    end
  end
end
