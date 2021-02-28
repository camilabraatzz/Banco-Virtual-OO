unit uCorrentista;

interface

uses
  uEnumContas, uExceptions;

type
  TCorrentista = class
  private
    FNome      : String;
    FTipoConta : tTipoConta;
    FDeposito  : Double;
    FSaque     : Double;
    FSaldo     : Double;
    function GetNome: String;
    procedure SetNome(const Value: String);
    function GetTipoConta: tTipoConta;
    procedure SetTipoConta(const Value: tTipoConta);
    function GetDeposito: Double;
    function GetSaque: Double;
    procedure SetSaldo(const Value: Double);
    procedure SetSaque(const Value: Double);
    function GetSaldo: Double;
    procedure SetDeposito(const Value: Double);

  protected
    procedure Depositar(AValor : Double); virtual;
    procedure Sacar(AValor : Double); virtual;

  public
    property Nome : String read GetNome write SetNome;
    property Deposito : Double read GetDeposito write SetDeposito;
    property Saque : Double read GetSaque write SetSaque;
    property Saldo : Double read GetSaldo write SetSaldo;
    function TipoDaConta: String;
    constructor Create;
  end;

implementation

{ TCorrentista }

constructor TCorrentista.Create;
begin
  inherited Create;
end;

function TCorrentista.Depositar: Double;
begin
  Result := 0;
end;

function TCorrentista.GetDeposito: Double;
begin
  Result := FDeposito;
end;

function TCorrentista.GetNome: String;
begin
  Result := FNome;
end;

function TCorrentista.GetSaldo: Double;
begin
  Result := FSaldo;
end;

function TCorrentista.GetSaque: Double;
begin
  Result := FSaque;
end;

function TCorrentista.GetTipoConta: tTipoConta;
begin
  Result := FTipoConta;
end;

function TCorrentista.Sacar: Double;
begin
  Result := 0;
end;

procedure TCorrentista.SetDeposito(const Value: Double);
begin
  FDeposito := Value;
end;

procedure TCorrentista.SetNome(const Value: String);
begin
  if Value = '' then
    raise ENomeObrigatorio.Create;
  FNome := Value;
end;

procedure TCorrentista.SetSaldo(const Value: Double);
begin
  FSaldo := Value;
end;

procedure TCorrentista.SetSaque(const Value: Double);
begin
  FSaque := Value;
end;

procedure TCorrentista.SetTipoConta(const Value: tTipoConta);
begin
  FTipoConta := Value;
end;

function TCorrentista.TipoDaConta: String;
begin
  case FTipoConta of
    tcCorrente:        Result := 'Corrente';
    tcPoupanca:        Result := 'Poupança';
    tcCartaoDeCredito: Result := 'Cartão de crédito';
  else
    raise EContaObrigatoria.Create;
  end;
end;

end.
