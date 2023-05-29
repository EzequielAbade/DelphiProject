object FrmClientes: TFrmClientes
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 591
  ClientWidth = 856
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 225
    Width = 856
    Height = 295
    Align = alClient
    DataSource = DM.DS_clientes
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 520
    Width = 856
    Height = 71
    Align = alBottom
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 1
    object BtPrimeiro: TBitBtn
      Left = 9
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
    object BtProximo: TBitBtn
      Left = 177
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Prox'#237'mo'
      TabOrder = 2
      OnClick = BtProximoClick
    end
    object BtUltimo: TBitBtn
      Left = 261
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ultimo'
      TabOrder = 3
      OnClick = BtUltimoClick
    end
    object BtInserir: TBitBtn
      Left = 408
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Inserir'
      TabOrder = 4
      OnClick = BtInserirClick
    end
    object BtAlterar: TBitBtn
      Left = 489
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 5
      OnClick = BtAlterarClick
    end
    object BtExcluir: TBitBtn
      Left = 570
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 6
      OnClick = BtExcluirClick
    end
    object BtGravar: TBitBtn
      Left = 408
      Top = 39
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 7
      OnClick = BtGravarClick
    end
    object BtCancelar: TBitBtn
      Left = 489
      Top = 39
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 8
      OnClick = BtCancelarClick
    end
    object BtSair: TBitBtn
      Left = 570
      Top = 39
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 9
      OnClick = BtSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 856
    Height = 225
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 56
      Top = 32
      Width = 69
      Height = 13
      Caption = 'C'#243'digo Cliente'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 212
      Top = 32
      Width = 82
      Height = 13
      Caption = 'Descri'#231#227'o Cliente'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 56
      Top = 78
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 56
      Top = 124
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 316
      Top = 124
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 56
      Top = 170
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 212
      Top = 170
      Width = 19
      Height = 13
      Caption = 'CEP'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 634
      Top = 80
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object DBEdit1: TDBEdit
      Left = 56
      Top = 51
      Width = 134
      Height = 21
      DataField = 'cdcliente'
      DataSource = DM.DS_clientes
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 212
      Top = 51
      Width = 368
      Height = 21
      DataField = 'dccliente'
      DataSource = DM.DS_clientes
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 56
      Top = 97
      Width = 524
      Height = 21
      DataField = 'endereco'
      DataSource = DM.DS_clientes
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 56
      Top = 143
      Width = 241
      Height = 21
      DataField = 'bairro'
      DataSource = DM.DS_clientes
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 316
      Top = 143
      Width = 264
      Height = 21
      DataField = 'cidade'
      DataSource = DM.DS_clientes
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 56
      Top = 189
      Width = 134
      Height = 21
      DataField = 'telefone'
      DataSource = DM.DS_clientes
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 212
      Top = 189
      Width = 108
      Height = 21
      DataField = 'cep'
      DataSource = DM.DS_clientes
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      Left = 680
      Top = 124
      Width = 75
      Height = 25
      Caption = '&Pesquisa'
      TabOrder = 7
      OnClick = BitBtn1Click
    end
  end
  object Edit1: TEdit
    Left = 631
    Top = 97
    Width = 185
    Height = 21
    Color = clScrollBar
    TabOrder = 3
    TextHint = 'Valor para ser colocado'
  end
end
