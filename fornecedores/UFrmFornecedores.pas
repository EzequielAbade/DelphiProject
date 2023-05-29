unit UFrmFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  UFrmPesquisa_produtos, Unit2;

type
  TFrmFornecedores = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
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
    Pesquisa_Fornecedores: TBitBtn;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Edit1: TEdit;
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
    procedure Pesquisa_FornecedoresClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFornecedores: TFrmFornecedores;

implementation

{$R *.dfm}

uses UDM, DelphiConexaocombanco, UFrmClientes, UFrmProdutos, UFrmVendedores;

procedure TFrmFornecedores.Pesquisa_FornecedoresClick(Sender: TObject);
begin
 DM.Query_fornecedores.close;
 DM.Query_fornecedores.SQl.clear;
 DM.Query_fornecedores.SQl.add('SELECT * FROM fornecedores');
  case radiogroup1.ItemIndex of
    0: begin
      if edit1.Text <> '' then
      begin
        DM.Query_fornecedores.SQl.add( 'WHERE cdfornecedor = :Pcdfornecedor');
        DM.Query_fornecedores.ParamByName('Pcdfornecedor').Value:=StrToInt(Edit1.text);
      end;
      if radiogroup2.ItemIndex = 1 then
        DM.Query_fornecedores.SQl.add('ORDER BY CDFORNECEDOR');
      if radiogroup2.ItemIndex = 2 then
        DM.Query_fornecedores.SQl.Add('ORDER BY CDFORNECEDOR DESC');

    end;

    1: begin
      if edit1.Text <>'' then
      begin
        DM.Query_fornecedores.SQL.Add('WHERE DCFORNECEDOR LIKE :Pdcfornecedor');
        Dm.Query_fornecedores.ParamByName('Pdcfornecedor').AsString:= '%' + Edit1.Text + '%';

      end;
      if radiogroup2.ItemIndex = 1 then
        DM.Query_fornecedores.SQL.Add('ORDER BY DCFORNECEDOR');
      if radiogroup2.ItemIndex = 2 then
        DM.Query_fornecedores.SQL.Add('ORDER BY DCFORNECEDOR DESC');

    end;
  end;
  DM.Query_fornecedores.Open();
end;

procedure TFrmFornecedores.BtAlterarClick(Sender: TObject);
begin
    DM.Query_fornecedores.Edit;
    BtInserir.Enabled := false;
    BtExcluir.Enabled := false;
    BtSair.Enabled := false;

end;

procedure TFrmFornecedores.BtAnteriorClick(Sender: TObject);
begin
  Dm.Query_fornecedores.prior;

end;

procedure TFrmFornecedores.BtCancelarClick(Sender: TObject);
begin
    DM.Query_fornecedores.cancel;
    BtInserir.Enabled := true;
    BtAlterar.Enabled := true;
    BtGravar.Enabled := true;
    BtExcluir.Enabled := true;
    BtSair.Enabled := true;

end;

procedure TFrmFornecedores.BtExcluirClick(Sender: TObject);
begin
  if MessageBox(0, 'Deseja realmente exlcuir?', 'Excluindo...', mb_YesNo) = idYes then
  begin
    DM.Query_fornecedores.Delete;
  end;

end;

procedure TFrmFornecedores.BtGravarClick(Sender: TObject);
begin
    if Dm.Query_fornecedores.state in [dsedit,dsinsert] then
     begin
      Dm.Query_fornecedores.post;
    end;

    BtSair.Enabled := true;
    BtInserir.Enabled := true;
    BtExcluir.Enabled := true;
    BtAlterar.Enabled := true;

end;

procedure TFrmFornecedores.BtInserirClick(Sender: TObject);
var prox:integer;
begin
  DM.Query_fornecedores.close;
  DM.Query_fornecedores.SQL.Clear;
  DM.Query_fornecedores.SQL.Add('SELECT * FROM fornecedores ORDER BY cdfornecedor asc');
  DM.Query_fornecedores.open;
  DM.Query_fornecedores.Active:=true;
  DM.Query_fornecedores.Last;
  prox:=DM.Query_fornecedorescdfornecedor.AsInteger + 1;
  DM.Query_fornecedores.Append;
  DM.Query_fornecedorescdfornecedor.AsInteger:=prox;
  DBedit2.setFocus;
  BtAlterar.Enabled := false;
  BtExcluir.Enabled := false;
  BtSair.Enabled := false;
end;




procedure TFrmFornecedores.BtPrimeiroClick(Sender: TObject);
begin
  Dm.Query_fornecedores.first;
end;

procedure TFrmFornecedores.BtProximoClick(Sender: TObject);
begin
  Dm.Query_fornecedores.next;
end;

procedure TFrmFornecedores.BtSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmFornecedores.BtUltimoClick(Sender: TObject);
begin
  Dm.Query_fornecedores.last;
end;

end.
