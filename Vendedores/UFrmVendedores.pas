unit UFrmVendedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  UFrmPesquisa_produtos, Unit2;

type
  TFrmVendedores = class(TForm)
    t: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    BtPrimeiro: TBitBtn;
    BtAnterior: TBitBtn;
    BtUltimo: TBitBtn;
    BtInserir: TBitBtn;
    BtGravar: TBitBtn;
    BtCancelar: TBitBtn;
    BtAlterar: TBitBtn;
    BtExcluir: TBitBtn;
    BtSair: TBitBtn;
    BtProximo: TBitBtn;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    procedure BtPrimeiroClick(Sender: TObject);
    procedure BtAnteriorClick(Sender: TObject);
    procedure BtProximoClick(Sender: TObject);
    procedure BtUltimoClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtInserirClick(Sender: TObject);
    procedure BtAlterarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure Pesquisa_FornecedoresClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
 var
  FrmVendedores: TFrmVendedores;

implementation

{$R *.dfm}

uses DelphiConexaocombanco, UDM, UFrmClientes, UFrmFornecedores, UFrmProdutos;

procedure TFrmVendedores.BitBtn1Click(Sender: TObject);
begin
DM.Query_vendedores.close;
DM.Query_vendedores.SQL.clear;
case RadioGroup1.ItemIndex of
0:
DM.Query_vendedores.SQL.ADD('SELECT * FROM vendedores');
1:
DM.Query_vendedores.SQL.ADD('SELECT * FROM vendedores ORDER BY cdvendedor ASC');
2:
DM.Query_vendedores.SQL.ADD('SELECT * FROM vendedores ORDER BY cdvendedor DESC');
end;
DM.Query_vendedores.Open();

end;

procedure TFrmVendedores.BtAlterarClick(Sender: TObject);
begin
  DM.Query_vendedores.Edit;
  BtInserir.Enabled := false;
  BtExcluir.Enabled := false;
  BtSair.Enabled := false;
end;

procedure TFrmVendedores.BtAnteriorClick(Sender: TObject);
begin
DM.Query_vendedores.Prior;
end;

procedure TFrmVendedores.BtCancelarClick(Sender: TObject);
begin
  DM.Query_vendedores.Cancel;
  BtInserir.Enabled := true;
  BtAlterar.Enabled := true;
  BtGravar.Enabled := true;
  BtExcluir.Enabled := true;
  BtSair.Enabled := true;
end;

procedure TFrmVendedores.BtExcluirClick(Sender: TObject);
begin
if Messagebox (0,'Deseja Excluir?', 'Excluindo..', mb_YesNo)=idYes then
DM.Query_vendedores.Delete;


end;

procedure TFrmVendedores.BtGravarClick(Sender: TObject);
begin
  DM.Query_vendedores.Post;
  BtSair.Enabled := true;
  BtInserir.Enabled := true;
  BtExcluir.Enabled := true;
  BtAlterar.Enabled := true;
end;

procedure TFrmVendedores.BtInserirClick(Sender: TObject);
var prox:integer;
begin
  DM.Query_vendedores.close;
  DM.Query_vendedores.SQL.Clear;
  DM.Query_vendedores.SQL.Add('SELECT * FROM vendedores ORDER BY cdvendedor asc');
  DM.Query_vendedores.open;
  DM.Query_vendedores.Active:=true;
  DM.Query_vendedores.Last;
  prox:=DM.Query_vendedorescdvendedor.AsInteger + 1;
  DM.Query_vendedores.Append;
  DM.Query_vendedorescdvendedor.AsInteger:=prox;
  DBedit2.setFocus;
  BtAlterar.Enabled := false;
  BtExcluir.Enabled := false;
  BtSair.Enabled := false;

end;

procedure TFrmVendedores.BtPrimeiroClick(Sender: TObject);
begin
DM.Query_vendedores.First;
end;

procedure TFrmVendedores.BtProximoClick(Sender: TObject);
begin
DM.Query_produtos.next;
end;

procedure TFrmVendedores.BtSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmVendedores.BtUltimoClick(Sender: TObject);
begin
DM.Query_vendedores.Last;
end;

procedure TFrmVendedores.Pesquisa_FornecedoresClick(Sender: TObject);
begin
//DM.Query_vendedores.close;
//DM.Query_vendedores.SQL.clear;
//DM.Query_vendedores.SQL.ADD('SELECT * FROM vendedores');
//case RadioGroup1.ItemIndex
//* 0: begin
//   DM.Query_vendedores.SQL.ADD('WHERE cdvendedores =: Pcdvendedores');
//   DM.Query_vendedores.ParamByName('Pcdvendedores').Value:=StrtoInt('Pcdvendedores');
// end;
// 1: begin
//
// end;
// then

   //
//end;


end;

end.
