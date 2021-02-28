unit uFactoryConta;

interface

uses
  uEnumContas, uConta, uContaCorrente, uCartaoDeCredito, uPoupanca;

type
  TFactoryConta = class
  public
    function ConstruirConta(TipoConta : tTipoConta): TConta;
  end;

implementation

{ TFactoryConta }

function TFactoryConta.ConstruirConta(TipoConta: tTipoConta): TConta;
begin
  case TipoConta of
    tcCorrente        : Result := TContaCorrente.Create;
    tcPoupanca        : Result := TPoupanca.Create;
    tcCartaoDeCredito : Result := TCartaoDeCredito.Create;
  else
      Result := TConta.Create;
  end;
end;

end.
