object FrmFornecedores: TFrmFornecedores
  Left = 0
  Top = 0
  Caption = 'Cadastro de fornecedores'
  ClientHeight = 497
  ClientWidth = 1058
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
    Left = -6
    Top = 240
    Width = 1064
    Height = 190
    DataSource = DM.DS_fornecedores
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 428
    Width = 1058
    Height = 69
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 1
    object BtPrimeiro: TBitBtn
      Left = 119
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Primeiro'
      TabOrder = 0
      OnClick = BtPrimeiroClick
    end
    object BtAnterior: TBitBtn
      Left = 200
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Anterior'
      TabOrder = 1
      OnClick = BtAnteriorClick
    end
    object BtProximo: TBitBtn
      Left = 285
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Prox'#237'mo'
      TabOrder = 2
      OnClick = BtProximoClick
    end
    object BtUltimo: TBitBtn
      Left = 369
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Ultimo'
      TabOrder = 3
      OnClick = BtUltimoClick
    end
    object BtInserir: TBitBtn
      Left = 619
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Inserir'
      TabOrder = 4
      OnClick = BtInserirClick
    end
    object BtAlterar: TBitBtn
      Left = 700
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 5
      OnClick = BtAlterarClick
    end
    object BtExcluir: TBitBtn
      Left = 781
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 6
      OnClick = BtExcluirClick
    end
    object BtGravar: TBitBtn
      Left = 619
      Top = 39
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 7
      OnClick = BtGravarClick
    end
    object BtCancelar: TBitBtn
      Left = 700
      Top = 39
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 8
      OnClick = BtCancelarClick
    end
    object BtSair: TBitBtn
      Left = 781
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
    Width = 1058
    Height = 241
    Align = alTop
    Color = clCream
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 40
      Top = 13
      Width = 106
      Height = 13
      Caption = 'C'#243'digo do Fornecedor'
    end
    object Label2: TLabel
      Left = 200
      Top = 13
      Width = 119
      Height = 13
      Caption = 'Descri'#231#227'o do Fornecedor'
    end
    object Label3: TLabel
      Left = 40
      Top = 70
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
    end
    object Label4: TLabel
      Left = 40
      Top = 125
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object Label5: TLabel
      Left = 337
      Top = 125
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Label6: TLabel
      Left = 40
      Top = 171
      Width = 42
      Height = 13
      Caption = 'Telefone'
    end
    object Label7: TLabel
      Left = 200
      Top = 171
      Width = 19
      Height = 13
      Caption = 'CEP'
    end
    object DBEdit1: TDBEdit
      Left = 40
      Top = 32
      Width = 121
      Height = 21
      DataField = 'cdfornecedor'
      DataSource = DM.DS_fornecedores
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 200
      Top = 32
      Width = 441
      Height = 21
      DataField = 'dcfornecedor'
      DataSource = DM.DS_fornecedores
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 40
      Top = 88
      Width = 601
      Height = 21
      DataField = 'endereco'
      DataSource = DM.DS_fornecedores
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 40
      Top = 144
      Width = 281
      Height = 21
      DataField = 'bairro'
      DataSource = DM.DS_fornecedores
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 337
      Top = 144
      Width = 304
      Height = 21
      DataField = 'cidade'
      DataSource = DM.DS_fornecedores
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 40
      Top = 190
      Width = 129
      Height = 21
      DataField = 'telefone'
      DataSource = DM.DS_fornecedores
      MaxLength = 14
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 200
      Top = 190
      Width = 111
      Height = 21
      DataField = 'cep'
      DataSource = DM.DS_fornecedores
      MaxLength = 9
      TabOrder = 6
    end
    object RadioGroup1: TRadioGroup
      Left = 687
      Top = 0
      Width = 185
      Height = 83
      Caption = 'Selecionar por'
      Color = clMedGray
      Items.Strings = (
        'Codigo'
        'Descricao')
      ParentBackground = False
      ParentColor = False
      TabOrder = 7
    end
    object RadioGroup2: TRadioGroup
      Left = 687
      Top = 79
      Width = 185
      Height = 105
      Caption = 'Ordem de Apresentac'#227'o'
      Color = clMedGray
      Items.Strings = (
        'Normal'
        'Crescente'
        'Descendente')
      ParentBackground = False
      ParentColor = False
      TabOrder = 8
    end
    object Edit1: TEdit
      Left = 687
      Top = 183
      Width = 185
      Height = 21
      Color = clScrollBar
      TabOrder = 9
      TextHint = 'Valor para ser colocado'
    end
    object Pesquisa_Fornecedores: TBitBtn
      Left = 742
      Top = 210
      Width = 75
      Height = 25
      Caption = 'Pesquisa'
      TabOrder = 10
      OnClick = Pesquisa_FornecedoresClick
    end
  end
end
