object FrmVendas: TFrmVendas
  Left = 0
  Top = 0
  Caption = 'Registro Vendas'
  ClientHeight = 591
  ClientWidth = 876
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 876
    Height = 591
    Align = alClient
    TabOrder = 2
    object Label6: TLabel
      Left = 15
      Top = 348
      Width = 162
      Height = 29
      Caption = 'Itens da Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 15
      Top = 69
      Width = 77
      Height = 29
      Caption = 'Vendas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Panel5: TPanel
      Left = 33
      Top = 104
      Width = 799
      Height = 245
      TabOrder = 0
      object Label2: TLabel
        Left = 91
        Top = 24
        Width = 85
        Height = 13
        Caption = 'N'#250'mero da venda'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 105
        Top = 54
        Width = 71
        Height = 13
        Caption = 'Data da venda'
      end
      object Label4: TLabel
        Left = 92
        Top = 80
        Width = 84
        Height = 13
        Caption = 'C'#243'digo do Cliente'
      end
      object Label5: TLabel
        Left = 79
        Top = 108
        Width = 97
        Height = 13
        Caption = 'C'#243'digo do Vendedor'
      end
      object DBText2: TDBText
        Left = 182
        Top = 83
        Width = 31
        Height = 17
        DataField = 'cdcliente'
        DataSource = DM.DS_vendas
      end
      object DBText3: TDBText
        Left = 182
        Top = 106
        Width = 31
        Height = 17
        DataField = 'cdvendedor'
        DataSource = DM.DS_vendedores
      end
      object BtPrimeiro: TBitBtn
        Left = 55
        Top = 192
        Width = 75
        Height = 25
        Caption = '&Primeiro'
        TabOrder = 0
        OnClick = BtPrimeiroClick
      end
      object BtAnterior: TBitBtn
        Left = 136
        Top = 192
        Width = 75
        Height = 25
        Caption = '&Anterior'
        TabOrder = 1
        OnClick = BtAnteriorClick
      end
      object BtProximo: TBitBtn
        Left = 221
        Top = 192
        Width = 75
        Height = 25
        Caption = '&Prox'#237'mo'
        TabOrder = 2
        OnClick = BtProximoClick
      end
      object BtUltimo: TBitBtn
        Left = 302
        Top = 192
        Width = 75
        Height = 25
        Caption = '&Ultimo'
        TabOrder = 3
        OnClick = BtUltimoClick
      end
      object DBEdit1: TDBEdit
        Left = 182
        Top = 24
        Width = 63
        Height = 21
        DataField = 'nrvenda'
        DataSource = DS_vendas
        TabOrder = 4
      end
      object BtInserir: TBitBtn
        Left = 688
        Top = 44
        Width = 73
        Height = 25
        Caption = '&Inserir'
        TabOrder = 5
        OnClick = BtInserirClick
      end
      object BtAlterar: TBitBtn
        Left = 688
        Top = 75
        Width = 75
        Height = 25
        Caption = '&Alterar'
        TabOrder = 6
        OnClick = BtAlterarClick
      end
      object BtGravar: TBitBtn
        Left = 688
        Top = 106
        Width = 75
        Height = 25
        Caption = '&Gravar'
        TabOrder = 7
        OnClick = BtGravarClick
      end
      object BtCancelar: TBitBtn
        Left = 688
        Top = 137
        Width = 75
        Height = 25
        Caption = '&Cancelar'
        TabOrder = 8
        OnClick = BtCancelarClick
      end
      object BtExcluir: TBitBtn
        Left = 688
        Top = 168
        Width = 75
        Height = 25
        Caption = '&Excluir'
        TabOrder = 9
        OnClick = BtExcluirClick
      end
      object DBEdit4: TDBEdit
        Left = 182
        Top = 51
        Width = 79
        Height = 21
        DataField = 'dtvenda'
        DataSource = DM.DS_vendas
        TabOrder = 10
        OnChange = DBEdit4Change
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 232
        Top = 78
        Width = 402
        Height = 21
        DataField = 'cdcliente'
        DataSource = DM.DS_vendas
        KeyField = 'cdcliente'
        ListField = 'dccliente'
        ListSource = DM.DS_clientes
        TabOrder = 11
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 232
        Top = 105
        Width = 402
        Height = 21
        DataField = 'cdvendedor'
        DataSource = DM.DS_vendas
        KeyField = 'cdvendedor'
        ListField = 'dcvendedor'
        ListSource = DM.DS_vendedores
        TabOrder = 12
      end
      object BtSair: TBitBtn
        Left = 688
        Top = 208
        Width = 75
        Height = 25
        Caption = '&Sair'
        TabOrder = 13
        OnClick = BtSairClick
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = -2
    Width = 876
    Height = 72
    Caption = 'Registros de vendas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 8
    Top = 376
    Width = 917
    Height = 215
    TabOrder = 1
    object Label1: TLabel
      Left = 462
      Top = 187
      Width = 61
      Height = 13
      Caption = 'Total Venda:'
    end
    object DBText1: TDBText
      Left = 529
      Top = 188
      Width = 65
      Height = 17
      DataField = 'valorfinal'
      DataSource = DM.DS_itens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 19
      Top = 179
      Width = 310
      Height = 29
      DataSource = DM.DS_vendas
      TabOrder = 0
    end
    object BtProduto: TBitBtn
      Left = 749
      Top = 56
      Width = 75
      Height = 25
      Caption = '&Produto'
      TabOrder = 1
      OnClick = BtProdutoClick
    end
    object BtNovo: TBitBtn
      Left = 749
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 2
      OnClick = BtNovoClick
    end
    object Btfinalizar: TBitBtn
      Left = 749
      Top = 87
      Width = 75
      Height = 25
      Caption = '&Finalizar'
      TabOrder = 3
      OnClick = BtfinalizarClick
    end
    object BtDesistencia: TBitBtn
      Left = 749
      Top = 149
      Width = 75
      Height = 25
      Caption = '&Desist'#234'ncia'
      TabOrder = 4
      OnClick = BtDesistenciaClick
    end
    object BtEditar: TBitBtn
      Left = 749
      Top = 118
      Width = 75
      Height = 25
      Caption = '&Editar'
      TabOrder = 5
      OnClick = BtEditarClick
    end
    object DBGrid1: TDBGrid
      Left = 7
      Top = 7
      Width = 705
      Height = 167
      DataSource = DM.DS_itens
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'nrvenda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nritem'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Produto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtvenda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Visible = True
        end>
    end
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 16
    object V1: TMenuItem
      Caption = 'Vendas'
    end
    object Movimentao1: TMenuItem
      Caption = 'Movimenta'#231#227'o'
    end
  end
  object DS_vendas: TDataSource
    DataSet = DM.Query_vendas
    Left = 752
    Top = 8
  end
  object DS_itens: TDataSource
    DataSet = DM.Query_itens
    Left = 792
    Top = 8
  end
  object DS_clientes: TDataSource
    DataSet = DM.Query_clientes
    Left = 712
    Top = 8
  end
  object DS_vendedores: TDataSource
    DataSet = DM.Query_vendedores
    Left = 664
    Top = 8
  end
end
