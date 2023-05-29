unit UFrmPesquisa_produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmPesquisa_Produtos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesquisa_Produtos: TFrmPesquisa_Produtos;

implementation

{$R *.dfm}

uses DelphiConexaocombanco, UDM, UFrmClientes, UFrmFornecedores,
  UFrmProdutos, UFrmVendedores, Unit2;

procedure TFrmPesquisa_Produtos.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
begin
DM.Query_produtos.Close;
DM.Query_produtos.SQL.Clear;
DM.QUery_produtos.SQL.ADD('SELECT * FROM produtos');
  case ComboBox1.ItemIndex of
  0:
  if edit1.Text <> '' then
  begin
    DM.Query_produtos.SQL.ADD('SELECT * FROM produtos LIKE :Pdcproduto');
    DM.Query_produtos.ParamByName('Pdcproduto').AsString:= '%' + 'Pdcproduto' + '%';
  end;

  end;


end;
end;

end.
