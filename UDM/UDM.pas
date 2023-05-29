unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    DS_fornecedores: TDataSource;
    conexao1: TFDConnection;
    Query_fornecedores: TFDQuery;
    Query_clientes: TFDQuery;
    DS_clientes: TDataSource;
    Query_vendedores: TFDQuery;
    DS_vendedores: TDataSource;
    Query_produtos: TFDQuery;
    DS_produtos: TDataSource;
    Query_produtosdescricaofornecedor: TStringField;
    Query_clientescdcliente: TIntegerField;
    Query_clientesdccliente: TWideStringField;
    Query_clientesendereco: TWideStringField;
    Query_clientesbairro: TWideStringField;
    Query_clientescidade: TWideStringField;
    Query_clientestelefone: TWideStringField;
    Query_clientescep: TWideStringField;
    Query_produtoscdproduto: TIntegerField;
    Query_produtosdcproduto: TWideStringField;
    Query_produtosvlproduto: TBCDField;
    Query_produtosqtestoque: TBCDField;
    Query_produtosqtminima: TBCDField;
    Query_produtoscdfornecedor: TIntegerField;
    Query_fornecedorescdfornecedor: TIntegerField;
    Query_fornecedoresdcfornecedor: TWideStringField;
    Query_fornecedoresendereco: TWideStringField;
    Query_fornecedoresbairro: TWideStringField;
    Query_fornecedorescidade: TWideStringField;
    Query_fornecedorestelefone: TWideStringField;
    Query_fornecedorescep: TWideStringField;
    Query_vendedorescdvendedor: TIntegerField;
    Query_vendedoresdcvendedor: TWideStringField;
    Query_produtossugestaocompra: TFloatField;
    Query_produtosvalorestoque: TFloatField;
    Query_vendas: TFDQuery;
    DS_vendas: TDataSource;
    Query_itens: TFDQuery;
    DS_itens: TDataSource;
    Query_vendasnrvenda: TIntegerField;
    Query_vendasdtvenda: TDateField;
    Query_vendascdcliente: TIntegerField;
    Query_vendascdvendedor: TIntegerField;
    Query_itensnrvenda: TIntegerField;
    Query_itensnritem: TIntegerField;
    Query_itenscdproduto: TIntegerField;
    Query_itensqtvenda: TBCDField;
    Query_itensvlproduto: TBCDField;
    Query_itensProduto: TStringField;
    Query_itensTotal: TFloatField;
    Query_itensValor: TFloatField;
    Query_vendasCliente: TStringField;
    Query_vendasVendendor: TStringField;
    Query_itensvalorfinal: TFloatField;
    procedure Query_produtosCalcFields(DataSet: TDataSet);
    procedure Query_itensCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DelphiConexaocombanco, UFrmClientes, UFrmFornecedores, UFrmProdutos, UFrmVendedores, UFrmPesquisa_produtos, Unit2;

{$R *.dfm}


procedure TDM.Query_itensCalcFields(DataSet: TDataSet);
begin
    if (DM.Query_itens.FieldByName('qtvenda').AsFloat <> 0) and
    (DM.Query_itens.FieldByName('valor').AsFloat <> 0)
    then
    begin
      DM.Query_itens.FieldByName('Total').AsFloat :=
      DM.Query_itens.FieldByName('qtvenda').AsFloat *
      DM.Query_itens.FieldByName('valor').AsFloat;
    end;

end;


procedure TDM.Query_produtosCalcFields(DataSet: TDataSet);
begin
    if DM.Query_produtos.FieldByName('qtestoque').asfloat <
    DM.Query_produtos.FieldByName('qtminima').asfloat then
    begin
      DM.Query_produtos.FieldByName('sugestaocompra').asfloat:=
      DM.Query_produtos.FieldByName('qtminima').asfloat -
      DM.Query_produtos.FieldByName('qtestoque').asfloat;
    end;

    if (DM.Query_produtos.FieldByName('qtestoque').AsFloat <> 0) and
    (DM.Query_produtos.FieldByName('vlproduto').AsFloat <> 0)
    then
    begin
      DM.Query_produtos.FieldByName('valorestoque').AsFloat :=
      DM.Query_produtos.FieldByName('qtestoque').AsFloat *
      DM.Query_produtos.FieldByName('vlproduto').AsFloat;
    end;

end;
end.





