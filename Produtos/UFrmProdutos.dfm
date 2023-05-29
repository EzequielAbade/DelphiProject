object FrmProdutos: TFrmProdutos
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 569
  ClientWidth = 813
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
    Top = 200
    Width = 812
    Height = 314
    DataSource = DM.DS_produtos
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cdfornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricaofornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cdproduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcproduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlproduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtestoque'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sugestaocompra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valorestoque'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtminima'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 512
    Width = 813
    Height = 57
    Align = alBottom
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 812
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
      Left = 564
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Inserir'
      TabOrder = 4
      OnClick = BtInserirClick
    end
    object BtAlterar: TBitBtn
      Left = 645
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 5
      OnClick = BtAlterarClick
    end
    object BtExcluir: TBitBtn
      Left = 722
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 6
      OnClick = BtExcluirClick
    end
    object BtSair: TBitBtn
      Left = 722
      Top = 28
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 7
      OnClick = BtSairClick
    end
    object BtCancelar: TBitBtn
      Left = 645
      Top = 28
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 8
      OnClick = BtCancelarClick
    end
    object BtGravar: TBitBtn
      Left = 564
      Top = 28
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 9
      OnClick = BtGravarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 639
    Height = 201
    TabOrder = 2
    object Label1: TLabel
      Left = 32
      Top = 16
      Width = 74
      Height = 13
      Caption = 'Codigo Produto'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 32
      Top = 56
      Width = 87
      Height = 13
      Caption = 'Descri'#231#227'o Produto'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 288
      Top = 144
      Width = 75
      Height = 13
      Caption = 'Pre'#231'o de Venda'
    end
    object Label4: TLabel
      Left = 32
      Top = 144
      Width = 26
      Height = 13
      Caption = 'Saldo'
      FocusControl = DBEdit4
    end
    object Label6: TLabel
      Left = 32
      Top = 102
      Width = 91
      Height = 13
      Caption = 'Codigo Fornecedor'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 188
      Top = 102
      Width = 122
      Height = 13
      Caption = 'Descricao  do Fornecedor'
      FocusControl = DBEdit7
    end
    object Label9: TLabel
      Left = 519
      Top = 144
      Width = 91
      Height = 13
      Caption = 'Quantidade minima'
      FocusControl = DBEdit5
    end
    object Label10: TLabel
      Left = 496
      Top = 16
      Width = 98
      Height = 13
      Caption = 'Sugest'#227'o de compra'
    end
    object DBText1: TDBText
      Left = 496
      Top = 35
      Width = 65
      Height = 17
      Color = clRed
      DataField = 'sugestaocompra'
      DataSource = DM.DS_produtos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label11: TLabel
      Left = 496
      Top = 56
      Width = 75
      Height = 13
      Caption = 'valordoestoque'
    end
    object DBText2: TDBText
      Left = 496
      Top = 75
      Width = 65
      Height = 17
      DataField = 'valorestoque'
      DataSource = DM.DS_produtos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 32
      Top = 35
      Width = 134
      Height = 21
      DataField = 'cdproduto'
      DataSource = DM.DS_produtos
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 32
      Top = 75
      Width = 394
      Height = 21
      DataField = 'dcproduto'
      DataSource = DM.DS_produtos
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 32
      Top = 163
      Width = 225
      Height = 21
      DataField = 'qtestoque'
      DataSource = DM.DS_produtos
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 32
      Top = 117
      Width = 134
      Height = 21
      DataField = 'cdfornecedor'
      DataSource = DM.DS_produtos
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 188
      Top = 117
      Width = 394
      Height = 21
      DataField = 'descricaofornecedor'
      DataSource = DM.DS_produtos
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 519
      Top = 163
      Width = 67
      Height = 21
      DataField = 'qtminima'
      DataSource = DM.DS_produtos
      TabOrder = 5
    end
    object DBEdit8: TDBEdit
      Left = 288
      Top = 163
      Width = 225
      Height = 21
      DataField = 'vlproduto'
      DataSource = DM.DS_produtos
      TabOrder = 6
    end
  end
  object Panel3: TPanel
    Left = 638
    Top = 0
    Width = 174
    Height = 201
    TabOrder = 3
    object Label5: TLabel
      Left = 9
      Top = 28
      Width = 95
      Height = 13
      Caption = 'Op'#231#245'es de Sele'#231#227'o:'
    end
    object Label8: TLabel
      Left = 9
      Top = 74
      Width = 106
      Height = 13
      Caption = 'Descri'#231#227'o do Produto:'
    end
    object ComboBox1: TComboBox
      Left = 9
      Top = 47
      Width = 154
      Height = 21
      TabOrder = 0
      TextHint = 'Selecione'
      Items.Strings = (
        'Todos os Produtos'
        'Com Necessidade de compra')
    end
    object Edit1: TEdit
      Left = 9
      Top = 93
      Width = 154
      Height = 21
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 52
      Top = 120
      Width = 75
      Height = 25
      Caption = '&Seleciona'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
end
