unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask, DateUtils;

type
  TFrmVendas = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    MainMenu1: TMainMenu;
    V1: TMenuItem;
    Movimentao1: TMenuItem;
    Panel3: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    DS_vendas: TDataSource;
    DS_itens: TDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Panel5: TPanel;
    BtPrimeiro: TBitBtn;
    BtAnterior: TBitBtn;
    BtProximo: TBitBtn;
    BtUltimo: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    DS_clientes: TDataSource;
    DS_vendedores: TDataSource;
    Label4: TLabel;
    BtInserir: TBitBtn;
    BtAlterar: TBitBtn;
    BtGravar: TBitBtn;
    BtCancelar: TBitBtn;
    BtExcluir: TBitBtn;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit4: TDBEdit;
    BtProduto: TBitBtn;
    BtNovo: TBitBtn;
    Btfinalizar: TBitBtn;
    BtDesistencia: TBitBtn;
    BtEditar: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBText2: TDBText;
    DBText3: TDBText;
    BtSair: TBitBtn;
    procedure BtSairClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure BtAlterarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtPrimeiroClick(Sender: TObject);
    procedure BtAnteriorClick(Sender: TObject);
    procedure BtProximoClick(Sender: TObject);
    procedure BtUltimoClick(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtInserirClick(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure BtProdutoClick(Sender: TObject);
    procedure BtfinalizarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtDesistenciaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendas: TFrmVendas;

implementation

{$R *.dfm}

uses UDM, DelphiConexaocombanco, UFrmClientes, UFrmFornecedores, UFrmProdutos, UFrmVendedores, UFrmPesquisa_Produtos;

procedure TFrmVendas.BtSairClick(Sender: TObject);
begin
  close;

end;

procedure TFrmVendas.BtNovoClick(Sender: TObject);
var
  prox,prox1:integer;
  produto_selecionado: string;

begin
    DM.Query_itens.Active:=true;
    prox1:= (DM.Query_itens.FieldByName('nritem').AsInteger) - (DM.Query_itens.FieldByName('nritem').AsInteger) + 1;
     if DM.Query_itens.FieldByName('nrvenda').AsInteger = DM.query_vendas.FieldByName('nrvenda').AsInteger then
      begin
        DM.Query_itens.last;
        prox1:=DM.Query_itens.FieldByName('nritem').AsInteger + 1;
      end;

    DM.Query_itens.Append;
    DM.Query_itens.FieldByName('nritem').AsInteger:=prox1;
    prox:=DM.Query_vendas.FieldByName('nrvenda').AsInteger;
    DM.Query_itens.FieldByName('nrvenda').AsInteger:=prox;
    DM.Query_itens.Append;

    Bteditar.Enabled := false;

end;

procedure TFrmVendas.BtAlterarClick(Sender: TObject);
begin
    DM.Query_vendas.Edit;
    BtInserir.Enabled := false;
    BtExcluir.Enabled := false;
    BtSair.Enabled :=  false;

end;

procedure TFrmVendas.BtGravarClick(Sender: TObject);
begin
    DM.Query_vendas.post;
    BtSair.Enabled := true;
    BtInserir.Enabled := true;
    BtExcluir.Enabled := true;
    BtAlterar.Enabled := true;;

end;

procedure TFrmVendas.BtCancelarClick(Sender: TObject);
begin
    DM.Query_vendas.cancel;
    BtInserir.Enabled := true;
    BtAlterar.Enabled := true;
    BtGravar.Enabled := true;
    BtExcluir.Enabled := true;
    BtSair.Enabled := true;
end;

procedure TFrmVendas.BtDesistenciaClick(Sender: TObject);
begin
  DM.query_itens.Cancel;
    BtNovo.Enabled := true;
    BtProduto.Enabled := true;
    BtSair.Enabled := true;
    BtFinalizar.Enabled := true;
    BtEditar.Enabled := true;

end;

procedure TFrmVendas.BtEditarClick(Sender: TObject);
begin
    DM.Query_itens.edit;
    BtNovo.Enabled := false;
    BtProduto.Enabled := false;
    BtSair.Enabled := false;

end;

procedure TFrmVendas.BtExcluirClick(Sender: TObject);
begin
    if messageBox(0,'Deseja realmente excluir?', 'excluindoo.....', mb_Yesno)=idYes
    then
    begin
      DM.Query_vendas.delete;

    end;


end;

procedure TFrmVendas.BtfinalizarClick(Sender: TObject);
begin
    DM.query_itens.post;
    BtNovo.Enabled := true;
    BtProduto.Enabled := true;
    BtEditar.Enabled := true;
    BtDesistencia.Enabled := true;
    BtSair.Enabled := true;


end;

procedure TFrmVendas.BtProdutoClick(Sender: TObject);
var prox: Integer;
var produto_selecionado: string;
var FrmPesquisa_produtos: TFrmPesquisa_Produtos;
begin
    FrmPesquisa_produtos := TFrmPesquisa_Produtos.Create(Self);
     try
        if FrmPesquisa_produtos.ShowModal = mrOk then
        begin
          DM.query_itens.Insert;
          produto_selecionado := DM.Query_produtos.FieldByName('dcproduto').AsString;
          DM.query_itens.FieldByName('produto').AsString := produto_selecionado;
          DM.Query_itens.Append;
          DM.query_itens.post;
        end;
      finally
        FrmPesquisa_produtos.Free;
      end;





end;
//if DBEdit1.Text <> '' then
//begin
  //venda := DBEdit1.Text
  //DM.Query_
//end;
{var prox:integer;
begin
DM.Query_vendas.Active:=true;
DM.Query_vendas.Last;
prox:=DM.Query_vendas.FieldByName('nrvenda').AsInteger + 1;
DM.Query_vendas.Append;
DM.Query_vendas.FieldByName('nrvenda').AsInteger:=prox;
Dbgrid1.setFocus;
end;}



procedure TFrmVendas.BtAnteriorClick(Sender: TObject);
begin
    DM.Query_vendas.prior;

end;

procedure TFrmVendas.BtInserirClick(Sender: TObject);
begin
var prox:integer;
begin
    DM.Query_vendas.close;
    DM.Query_vendas.SQL.Clear;
    DM.Query_vendas.SQL.Add('SELECT * FROM vendas ORDER BY nrvenda asc');
    DM.Query_vendas.open;
    DM.Query_vendas.Active:=true;
    DM.Query_vendas.Last;
    prox:=DM.Query_vendas.FieldByName('nrvenda').AsInteger + 1;
    DM.Query_vendas.Append;
    DM.Query_vendas.FieldByName('nrvenda').AsInteger:=prox;
    DBLookupComboBox1.SetFocus;
    BtAlterar.Enabled := false;
    BtExcluir.Enabled := false;
    BtSair.Enabled := false;

end;
end;

procedure TFrmVendas.BtPrimeiroClick(Sender: TObject);
begin
    DM.Query_vendas.first;

end;

procedure TFrmVendas.BtProximoClick(Sender: TObject);
begin
    DM.Query_vendas.next;

end;

procedure TFrmVendas.BtUltimoClick(Sender: TObject);
begin
    DM.Query_vendas.last;
end;


procedure TFrmVendas.DBEdit4Change(Sender: TObject);
begin
    DBEdit4.Text := DateToStr(Today)

end;

procedure TFrmVendas.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if Key = VK_RETURN then
//begin
//DM.Query_clentes.close;
//DM.Query_clientes.SQL.Clear;
//DM.Query_clientes.SQL.ADD('SELECT * FROM clientes');

//  case ComboBox1.ItemIndex of
//    0:
//      if edit1.Text <> '' then
//        begin
//          DM.Query_clientes.SQL.ADD('WHERE dccliente LIKE :Pdccliente');
//          DM.Query_clientes.ParamByName('Pdccliente').AsString := '%' + edit1.Text + '%';
//        end;
//    1:
//      if edit1.Text <> '' then
//      begin
//        DM.Query_clientes.SQL.ADD('WHERE cdcliente LIKE :Pcdcliente');
//        DM.Query_clientes.ParamByName('Pcdcliente').Value:=StrToInt(edit1.Text);
//      end;
//  end;
//end;
//if Key = VK_RETURN then
//begin
//  DM.Query_clientes.close;
//  DM.Query_clientes.SQL.Clear;
//  DM.Query_clientes.SQL.ADD('SELECT * FROM clientes');
//  if Edit4.Text <> '' then
//  begin
//    DM.Query_clientes.SQL.ADD('WHERE cdcliente LIKE :Pcdcliente');
//    DM.Query_clientes.ParamByName('Pcdcliente').Value:=StrToIntDef(edit4.Text,0);
//
//  end;
//  DM.Query_clientes.Open;
//end;
end;


end.


