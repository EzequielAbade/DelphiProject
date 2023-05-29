object DM: TDM
  OldCreateOrder = False
  Height = 242
  Width = 562
  object DS_fornecedores: TDataSource
    AutoEdit = False
    DataSet = Query_fornecedores
    Left = 39
    Top = 158
  end
  object conexao1: TFDConnection
    Params.Strings = (
      'Database=SYSDBA'
      'User_Name=postgres'
      'Password=youngmaster'
      'Port=5433'
      'Server=127.0.0.1'
      'DriverID=PG')
    Connected = True
    Left = 278
    Top = 40
  end
  object Query_fornecedores: TFDQuery
    Connection = conexao1
    SQL.Strings = (
      'SELECT * FROM fornecedores')
    Left = 40
    Top = 96
    object Query_fornecedorescdfornecedor: TIntegerField
      FieldName = 'cdfornecedor'
    end
    object Query_fornecedoresdcfornecedor: TWideStringField
      FieldName = 'dcfornecedor'
      Size = 30
    end
    object Query_fornecedoresendereco: TWideStringField
      FieldName = 'endereco'
      Size = 40
    end
    object Query_fornecedoresbairro: TWideStringField
      FieldName = 'bairro'
    end
    object Query_fornecedorescidade: TWideStringField
      FieldName = 'cidade'
    end
    object Query_fornecedorestelefone: TWideStringField
      FieldName = 'telefone'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 10
    end
    object Query_fornecedorescep: TWideStringField
      FieldName = 'cep'
      EditMask = '00000\-999;1;_'
      Size = 8
    end
  end
  object Query_clientes: TFDQuery
    Connection = conexao1
    SQL.Strings = (
      'SELECT * FROM clientes')
    Left = 136
    Top = 96
    object Query_clientescdcliente: TIntegerField
      FieldName = 'cdcliente'
      Origin = 'cdcliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Query_clientesdccliente: TWideStringField
      FieldName = 'dccliente'
      Origin = 'dccliente'
      Size = 30
    end
    object Query_clientesendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 40
    end
    object Query_clientesbairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
    end
    object Query_clientescidade: TWideStringField
      FieldName = 'cidade'
      Origin = 'cidade'
    end
    object Query_clientestelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '!\(99\)0-0000-0000;1;_'
      Size = 10
    end
    object Query_clientescep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      EditMask = '00000\-999;1;_'
      Size = 8
    end
  end
  object DS_clientes: TDataSource
    AutoEdit = False
    DataSet = Query_clientes
    Left = 136
    Top = 160
  end
  object Query_vendedores: TFDQuery
    Connection = conexao1
    SQL.Strings = (
      'SELECT * FROM vendedores')
    Left = 224
    Top = 96
    object Query_vendedorescdvendedor: TIntegerField
      FieldName = 'cdvendedor'
      Origin = 'cdvendedor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Query_vendedoresdcvendedor: TWideStringField
      FieldName = 'dcvendedor'
      Origin = 'dcvendedor'
      Size = 30
    end
  end
  object DS_vendedores: TDataSource
    AutoEdit = False
    DataSet = Query_vendedores
    Left = 224
    Top = 160
  end
  object Query_produtos: TFDQuery
    OnCalcFields = Query_produtosCalcFields
    Connection = conexao1
    SQL.Strings = (
      'SELECT * FROM produtos')
    Left = 320
    Top = 96
    object Query_produtosdescricaofornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'descricaofornecedor'
      LookupDataSet = Query_fornecedores
      LookupKeyFields = 'cdfornecedor'
      LookupResultField = 'dcfornecedor'
      KeyFields = 'cdfornecedor'
      Size = 30
      Lookup = True
    end
    object Query_produtoscdproduto: TIntegerField
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Query_produtosdcproduto: TWideStringField
      FieldName = 'dcproduto'
      Origin = 'dcproduto'
      Size = 30
    end
    object Query_produtosvlproduto: TBCDField
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
      DisplayFormat = '###'
      EditFormat = '###,##0.00'
      Precision = 16
      Size = 2
    end
    object Query_produtosqtestoque: TBCDField
      FieldName = 'qtestoque'
      Origin = 'qtestoque'
      Precision = 16
      Size = 2
    end
    object Query_produtosqtminima: TBCDField
      FieldName = 'qtminima'
      Origin = 'qtminima'
      Precision = 16
      Size = 2
    end
    object Query_produtoscdfornecedor: TIntegerField
      FieldName = 'cdfornecedor'
      Origin = 'cdfornecedor'
    end
    object Query_produtossugestaocompra: TFloatField
      FieldKind = fkCalculated
      FieldName = 'sugestaocompra'
      Calculated = True
    end
    object Query_produtosvalorestoque: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valorestoque'
      Calculated = True
    end
  end
  object DS_produtos: TDataSource
    AutoEdit = False
    DataSet = Query_produtos
    Left = 320
    Top = 160
  end
  object Query_vendas: TFDQuery
    Connection = conexao1
    SQL.Strings = (
      'SELECT * FROM vendas')
    Left = 400
    Top = 96
    object Query_vendasnrvenda: TIntegerField
      FieldName = 'nrvenda'
      Origin = 'nrvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Query_vendasdtvenda: TDateField
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
      EditMask = '!99/99/0000;1;_'
    end
    object Query_vendascdcliente: TIntegerField
      FieldName = 'cdcliente'
      Origin = 'cdcliente'
    end
    object Query_vendascdvendedor: TIntegerField
      FieldName = 'cdvendedor'
      Origin = 'cdvendedor'
    end
    object Query_vendasCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = Query_clientes
      LookupKeyFields = 'cdcliente'
      LookupResultField = 'dccliente'
      KeyFields = 'cdcliente'
      Size = 60
      Lookup = True
    end
    object Query_vendasVendendor: TStringField
      FieldKind = fkLookup
      FieldName = 'Vendendor'
      LookupDataSet = Query_vendedores
      LookupKeyFields = 'cdvendedor'
      LookupResultField = 'dcvendedor'
      KeyFields = 'cdvendedor'
      Size = 60
      Lookup = True
    end
  end
  object DS_vendas: TDataSource
    DataSet = Query_vendas
    Left = 400
    Top = 160
  end
  object Query_itens: TFDQuery
    OnCalcFields = Query_itensCalcFields
    MasterSource = DS_vendas
    MasterFields = 'nrvenda'
    Connection = conexao1
    SQL.Strings = (
      ' SELECT * FROM ITENS WHERE NRVENDA = NRVENDA')
    Left = 472
    Top = 96
    object Query_itensnrvenda: TIntegerField
      FieldName = 'nrvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Query_itensnritem: TIntegerField
      FieldName = 'nritem'
      Origin = 'nritem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Query_itenscdproduto: TIntegerField
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
    end
    object Query_itensqtvenda: TBCDField
      FieldName = 'qtvenda'
      Origin = 'qtvenda'
      Precision = 16
      Size = 2
    end
    object Query_itensvlproduto: TBCDField
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
      Precision = 16
      Size = 2
    end
    object Query_itensProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = Query_produtos
      LookupKeyFields = 'cdproduto'
      LookupResultField = 'dcproduto'
      KeyFields = 'cdproduto'
      Size = 30
      Lookup = True
    end
    object Query_itensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object Query_itensValor: TFloatField
      FieldKind = fkLookup
      FieldName = 'Valor'
      LookupDataSet = Query_produtos
      LookupKeyFields = 'cdproduto'
      LookupResultField = 'vlproduto'
      KeyFields = 'cdproduto'
      Lookup = True
    end
    object Query_itensvalorfinal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valorfinal'
      Calculated = True
    end
  end
  object DS_itens: TDataSource
    AutoEdit = False
    DataSet = Query_itens
    Left = 472
    Top = 160
  end
end
