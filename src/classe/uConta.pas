unit uConta;

interface

uses
  uEnumContas, uExceptions;

type
  TConta = class abstract(TObject)
  private
    FTipoConta : tTipoConta;
    FSaldo     : Double;

    function GetTipoConta: tTipoConta;
    procedure SetTipoConta(const Value: tTipoConta);

  strict protected
    procedure TestarLimiteDiario(AValor: Double);

  public
    Saldo: Double;
    property TipoConta : tTipoConta read GetTipoConta write SetTipoConta;
    procedure Depositar(AValor : Double); virtual;
    procedure Sacar(AValor : Double); virtual;

    function TipoDaConta: String;
    constructor Create;
  end;

implementation

{ TCorrentista }

constructor TConta.Create;
begin
  inherited Create;
end;

procedure TConta.Depositar(AValor: Double);
begin
  TestarLimiteDiario(AValor);
  Saldo := Saldo + AValor;
end;

function TConta.GetTipoConta: tTipoConta;
begin
  Result := FTipoConta;
end;

procedure TConta.Sacar(AValor: Double);
begin
  TestarLimiteDiario(AValor);
  Saldo := Saldo - AValor;
end;

procedure TConta.SetTipoConta(const Value: tTipoConta);
begin
  FTipoConta := Value;
end;

procedure TConta.TestarLimiteDiario(AValor: Double);
begin
  if AValor >= 1000 then
    raise ELimiteUltrapassado.Create;
end;

function TConta.TipoDaConta: String;
begin
  case FTipoConta of
    tcCorrente        : Result := 'Corrente';
    tcPoupanca        : Result := 'Poupança';
    tcCartaoDeCredito : Result := 'Cartão de crédito';
  else
    raise EContaObrigatoria.Create;
  end;
end;

end.
