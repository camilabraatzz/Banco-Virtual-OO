unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  uConta, uFactoryConta, uEnumContas, uCliente;

type
  TFrmPrincipal = class(TForm)
    pgControl: TPageControl;
    pg1: TTabSheet;
    edtNome: TLabeledEdit;
    cmbTipoConta: TComboBox;
    Label3: TLabel;
    pg2: TTabSheet;
    Label1: TLabel;
    lblSaldo: TLabel;
    btnCriarConta: TButton;
    lblNome: TLabel;
    lblTipoConta: TLabel;
    edtValor: TEdit;
    Label4: TLabel;
    Label2: TLabel;
    btnDeposito: TButton;
    btnSaque: TButton;
    btnSaldo: TButton;
    procedure btnCriarContaClick(Sender: TObject);
    procedure btnDepositoClick(Sender: TObject);
    procedure btnSaldoClick(Sender: TObject);
    procedure btnSaqueClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    oConta : TConta;
    oCliente : TCliente;
    oFactoryConta : TFactoryConta;
    function CriarObjetoConta : TConta;
    procedure CriarConta;
    function GetValor: Double;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.btnCriarContaClick(Sender: TObject);
begin
  CriarConta;
  pgControl.TabIndex := pg2.TabIndex;
end;

procedure TFrmPrincipal.btnDepositoClick(Sender: TObject);
begin
  oCliente.Conta.Depositar(GetValor);
end;

procedure TFrmPrincipal.btnSaldoClick(Sender: TObject);
begin
  lblSaldo.Caption := oCliente.Conta.Saldo.ToString;
end;

procedure TFrmPrincipal.btnSaqueClick(Sender: TObject);
begin
  oCliente.Conta.Sacar(GetValor);
end;

procedure TFrmPrincipal.CriarConta;
begin
  oConta               := TConta.Create;
  oCliente             := TCliente.Create(edtNome.Text);
  oCliente.Conta       := CriarObjetoConta;
  lblNome.Caption      := 'Nome: ' + oCliente.Nome;
  lblTipoConta.Caption := 'Tipo de conta : ' + oConta.TipoDaConta;
end;

function TFrmPrincipal.CriarObjetoConta: TConta;
begin
  oFactoryConta    := TFactoryConta.Create;
  Result           := oFactoryConta.ConstruirConta(tTipoConta(cmbTipoConta.ItemIndex));
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  if Assigned(oConta) then
    FreeAndNil(oConta);
  if Assigned(oCliente) then
    FreeAndNil(oCliente);
  if Assigned(oFactoryConta) then
    FreeAndNil(oFactoryConta);
end;

function TFrmPrincipal.GetValor: Double;
begin
  Result := StrToFloatDef(edtValor.Text, 0);
end;

end.
