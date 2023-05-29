unit UFrmClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  UFrmPesquisa_produtos, Unit2;

type
  TFrmClientes = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
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
    BtGravar: TBitBtn;
    BtCancelar: TBitBtn;
    BtSair: TBitBtn;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Label8: TLabel;
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
  FrmClientes: TFrmClientes;

implementation

{$R *.dfm}

uses UDM, DelphiConexaocombanco, UFrmFornecedores, UFrmProdutos, UFrmVendedores;

procedure TFrmClientes.BitBtn1Click(Sender: TObject);
begin
  DM.Query_clientes.close;
  DM.Query_clientes.SQL.clear;
  DM.Query_clientes.SQL.ADD( 'Select * From clientes');
  if Edit1.Text <> '' then
  begin
    DM.Query_clientes.SQL.Add('WHERE cidade LIKE :Pcidade');
    Dm.Query_clientes.ParamByName('Pcidade').AsString:= '%' + Edit1.Text + '%';
  end;

  DM.Query_clientes.Open;

end;

procedure TFrmClientes.BtAlterarClick(Sender: TObject);
begin
  DM.Query_clientes.Edit;
  BtInserir.Enabled := false;
  BtExcluir.Enabled := false;
  BtSair.Enabled := false;
end;

procedure TFrmClientes.BtAnteriorClick(Sender: TObject);
begin
  DM.Query_clientes.Prior;
end;

procedure TFrmClientes.BtCancelarClick(Sender: TObject);
begin
  DM.Query_clientes.Cancel;
  BtInserir.Enabled := true;
  BtAlterar.Enabled := true;
  BtGravar.Enabled := true;
  BtExcluir.Enabled := true;
  BtSair.Enabled := true;
end;

procedure TFrmClientes.BtExcluirClick(Sender: TObject);

begin
  if MessageBox  (0, 'Deseja Excluir?','Excluindo...', mb_YesNo)=idYes
  then
  begin
    DM.Query_clientes.Delete;
  end;

end;

procedure TFrmClientes.BtGravarClick(Sender: TObject);
begin
  DM.Query_clientes.Post;
  BtSair.Enabled := true;
  BtInserir.Enabled := true;
  BtExcluir.Enabled := true;
  BtAlterar.Enabled := true;
end;

procedure TFrmClientes.BtInserirClick(Sender: TObject);
 var prox:integer;
begin
  DM.Query_clientes.close;
  DM.Query_clientes.SQL.Clear;
  DM.Query_clientes.SQL.Add('SELECT * FROM clientes ORDER BY cdcliente asc');
  DM.Query_clientes.open;
  DM.Query_clientes.Active:=true;
  DM.Query_clientes.Last;
  prox:=DM.Query_clientescdcliente.AsInteger + 1;
  DM.Query_clientes.Append;
  DM.Query_clientescdcliente.AsInteger:=prox;
  DBedit2.setFocus;
  BtAlterar.Enabled := false;
  BtExcluir.Enabled := false;
  BtSair.Enabled := false;

end;

procedure TFrmClientes.BtPrimeiroClick(Sender: TObject);
begin
  DM.Query_clientes.First;

end;

procedure TFrmClientes.BtProximoClick(Sender: TObject);
begin
  DM.Query_clientes.Next;

end;

procedure TFrmClientes.BtSairClick(Sender: TObject);
begin
  Close;

end;

procedure TFrmClientes.BtUltimoClick(Sender: TObject);
begin
  DM.Query_clientes.Last;

end;
end.
