unit UFrmProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, Unit2, vcl.forms;

type
  TFrmProdutos = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    BtPrimeiro: TBitBtn;
    BtAnterior: TBitBtn;
    BtProximo: TBitBtn;
    BtUltimo: TBitBtn;
    BtInserir: TBitBtn;
    BtAlterar: TBitBtn;
    BtExcluir: TBitBtn;
    BtSair: TBitBtn;
    BtCancelar: TBitBtn;
    BtGravar: TBitBtn;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Edit1: TEdit;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBText1: TDBText;
    Label11: TLabel;
    DBText2: TDBText;
    DBEdit8: TDBEdit;
    procedure BtInserirClick(Sender: TObject);
    procedure BtAlterarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure BtPrimeiroClick(Sender: TObject);
    procedure BtAnteriorClick(Sender: TObject);
    procedure BtProximoClick(Sender: TObject);
    procedure BtUltimoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutos : TFrmProdutos;

implementation

{$R *.dfm}

uses DelphiConexaocombanco, UDM, UFrmClientes, UFrmFornecedores, UFrmVendedores;

procedure TFrmProdutos.BitBtn1Click(Sender: TObject);

begin

begin
    DM.Query_produtos.close;
    DM.Query_produtos.SQL.Clear;
    DM.Query_produtos.SQL.ADD('SELECT * FROM produtos');
    case ComboBox1.ItemIndex of
    0:
    if Edit1.Text <> '' then
    begin
      DM.Query_produtos.SQL.ADD('WHERE dcproduto LIKE :Pdcproduto');
      DM.Query_produtos.ParamByname('Pdcproduto').AsString := '%' +  Edit1.Text + '%';

    end;
    1:
    begin
      DM.Query_produtos.SQL.ADD('WHERE qtestoque < qtminima');
    end;

end;
    DM.Query_produtos.Open;
end;

end;



procedure TFrmProdutos.BtAlterarClick(Sender: TObject);
begin
    DM.Query_produtos.Edit;
    BtInserir.Enabled := false;
    BtExcluir.Enabled := false;
    BtSair.Enabled := false;

end;

procedure TFrmProdutos.BtAnteriorClick(Sender: TObject);
begin
    DM.Query_produtos.Prior;

end;

procedure TFrmProdutos.BtCancelarClick(Sender: TObject);
begin
    DM.Query_produtos.Cancel;
    BtInserir.Enabled := true;
    BtAlterar.Enabled := true;
    BtGravar.Enabled := true;
    BtExcluir.Enabled := true;
    BtSair.Enabled := true;

end;

procedure TFrmProdutos.BtExcluirClick(Sender: TObject);
begin
    if MessageBox (0, 'Deseja Excluir?', 'Excluir', mb_YesNo)=idYes then
    begin
      DM.Query_produtos.Delete;

    end;

end;

procedure TFrmProdutos.BtGravarClick(Sender: TObject);
begin
    DM.Query_produtos.Post;
    BtSair.Enabled := true;
    BtInserir.Enabled := true;
    BtExcluir.Enabled := true;
    BtAlterar.Enabled := true;
end;

procedure TFrmProdutos.BtInserirClick(Sender: TObject);
  var prox:integer;
begin
    DM.Query_produtos.close;
    DM.Query_produtos.SQL.Clear;
    DM.Query_produtos.SQL.Add('SELECT * FROM produtos ORDER BY cdproduto asc');
    DM.Query_produtos.open;
    DM.Query_produtos.Active:=true;
    DM.Query_produtos.Last;
    prox:=DM.Query_produtoscdproduto.AsInteger + 1;
    DM.Query_produtos.Append;
    DM.Query_produtoscdproduto.AsInteger:=prox;
    DBedit2.setFocus;
    BtAlterar.Enabled := false;
    BtExcluir.Enabled := false;
    BtSair.Enabled := false;

end;

procedure TFrmProdutos.BtPrimeiroClick(Sender: TObject);
begin
    DM.Query_produtos.First;

end;

procedure TFrmProdutos.BtProximoClick(Sender: TObject);
begin
    DM.Query_produtos.Next;

end;

procedure TFrmProdutos.BtSairClick(Sender: TObject);
begin
    Close;

end;

procedure TFrmProdutos.BtUltimoClick(Sender: TObject);
begin
    DM.Query_produtos.Last;

end;

end.
