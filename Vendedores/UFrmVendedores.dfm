object FrmVendedores: TFrmVendedores
  Left = 0
  Top = 0
  Caption = 'Vendedores'
  ClientHeight = 483
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object t: TDBGrid
    Left = 0
    Top = 129
    Width = 777
    Height = 280
    Align = alClient
    DataSource = DM.DS_vendedores
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 129
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 56
      Top = 8
      Width = 57
      Height = 13
      Caption = 'cdvendedor'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 56
      Top = 54
      Width = 57
      Height = 13
      Caption = 'dcvendedor'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 56
      Top = 27
      Width = 134
      Height = 21
      DataField = 'cdvendedor'
      DataSource = DM.DS_vendedores
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 56
      Top = 73
      Width = 394
      Height = 21
      DataField = 'dcvendedor'
      DataSource = DM.DS_vendedores
      TabOrder = 1
    end
    object RadioGroup1: TRadioGroup
      Left = 570
      Top = 0
      Width = 185
      Height = 100
      Caption = 'Ordem de Apresenta'#231#227'o'
      Items.Strings = (
        'Normal'
        'Ascendente '
        'Descendente ')
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 622
      Top = 101
      Width = 75
      Height = 25
      Caption = '&Pesquisa'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 409
    Width = 777
    Height = 74
    Align = alBottom
    TabOrder = 2
    object BtPrimeiro: TBitBtn
      Left = 11
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Primeiro'
      TabOrder = 0
      OnClick = BtPrimeiroClick
    end
    object BtAnterior: TBitBtn
      Left = 92
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Anterior'
      TabOrder = 1
      OnClick = BtAnteriorClick
    end
    object BtUltimo: TBitBtn
      Left = 258
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Ultimo'
      TabOrder = 2
      OnClick = BtUltimoClick
    end
    object BtInserir: TBitBtn
      Left = 408
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Inserir'
      TabOrder = 3
      OnClick = BtInserirClick
    end
    object BtGravar: TBitBtn
      Left = 408
      Top = 39
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 4
      OnClick = BtGravarClick
    end
    object BtCancelar: TBitBtn
      Left = 489
      Top = 39
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 5
      OnClick = BtCancelarClick
    end
    object BtAlterar: TBitBtn
      Left = 489
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 6
      OnClick = BtAlterarClick
    end
    object BtExcluir: TBitBtn
      Left = 570
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 7
      OnClick = BtExcluirClick
    end
    object BtSair: TBitBtn
      Left = 570
      Top = 39
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 8
      OnClick = BtSairClick
    end
    object BtProximo: TBitBtn
      Left = 177
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Prox'#237'mo'
      TabOrder = 9
      OnClick = BtProximoClick
    end
  end
end
