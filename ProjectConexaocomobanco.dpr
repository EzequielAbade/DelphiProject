program ProjectConexaocomobanco;

uses
  Vcl.Forms,
  DelphiConexaocombanco in 'DelphiConexaocombanco.pas' {Form1},
  UDM in '..\Delphi VENDAS\UDM\UDM.pas' {DM: TDataModule},
  UFrmFornecedores in '..\Delphi VENDAS\fornecedores\UFrmFornecedores.pas' {FrmFornecedores},
  UFrmVendedores in '..\Delphi VENDAS\Vendedores\UFrmVendedores.pas' {FrmVendedores},
  UFrmProdutos in '..\Delphi VENDAS\Produtos\UFrmProdutos.pas' {FrmProdutos},
  Unit2 in '..\Delphi VENDAS\vendas\Unit2.pas' {FrmVendas},
  UFrmPesquisa_produtos in '..\Delphi VENDAS\telaProdutos\UFrmPesquisa_produtos.pas' {FrmPesquisa_Produtos},
  UFrmClientes in '..\Delphi VENDAS\Clientes\UFrmClientes.pas' {FrmClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmFornecedores, FrmFornecedores);
  Application.CreateForm(TFrmClientes, FrmClientes);
  Application.CreateForm(TFrmVendedores, FrmVendedores);
  Application.CreateForm(TFrmVendas, FrmVendas);
  Application.CreateForm(TFrmPesquisa_Produtos, FrmPesquisa_Produtos);
  Application.CreateForm(TFrmPesquisa_Produtos, FrmPesquisa_Produtos);
  Application.CreateForm(TFrmPesquisa_Produtos, FrmPesquisa_Produtos);
  Application.CreateForm(TFrmClientes, FrmClientes);
  Application.Run;
end.
