unit uDeposito;

interface

uses
  uCorrentista, uExceptions;

type
  TPoupanca = class(TCorrentista)
  protected
    function Depositar : Double; override;
  end;

implementation

const
  _LIMITEDEPOSITO = 1000;

{ TPoupanca }

{ TPoupanca }

function TPoupanca.Depositar: Double;
begin
//  if Deposito <= _LIMITEDEPOSITO then
//    Result := Saldo + Deposito
//  else
//    raise ELimiteMilDeposito.Create;
end;

end.
