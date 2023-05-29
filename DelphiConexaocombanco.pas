unit DelphiConexaocombanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Phys.PGDef, FireDAC.Phys.PG, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    Cadastro: TMainMenu;
    Fornecedores1: TMenuItem;
    Clientes1: TMenuItem;
    Vendedores1: TMenuItem;
    Produtos1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    Sa1: TMenuItem;
    SaSA1: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    procedure Fornecedores1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure Sa1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


uses UFrmFornecedores, UDM, UFrmClientes, UFrmProdutos, UFrmVendedores, Unit2;


procedure TForm1.Clientes1Click(Sender: TObject);
begin
  FrmClientes.Show;

end;

procedure TForm1.Fornecedores1Click(Sender: TObject);
begin
    FrmFornecedores.Show;

end;

procedure TForm1.N1Click(Sender: TObject);
begin
    FrmVendas.Show;

end;

procedure TForm1.Produtos1Click(Sender: TObject);
begin
    try
      FrmProdutos := TFrmProdutos.Create(self);
      FrmProdutos.ShowModal;
    finally
      FrmProdutos.Free;
    end;
    //FrmProdutos.Show;  esqueça tudo papai
end;

procedure TForm1.Sa1Click(Sender: TObject);
begin
    close;

end;


procedure TForm1.Vendedores1Click(Sender: TObject);
begin
    FrmVendedores.Show;

end;

end.



