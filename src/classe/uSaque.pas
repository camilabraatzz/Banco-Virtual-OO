unit uSaque;

interface

uses
  uCorrentista, uExceptions;

type
  TContaCorrente = class(TCorrentista)
  protected
    function Depositar : Double; override;
    function Sacar : Double; override;
  end;

implementation

const
  _LIMITEADC = 500;
  _LIMITESAQUE = 1000;
  _LIMITEDEPOSITO = 1000;

{ TContaCorrente }

function TContaCorrente.Depositar: Double;
begin
//  if Deposito <= _LIMITEDEPOSITO then
//    Result := Saldo + Deposito
//  else
//    raise ELimiteMilDeposito.Create;
end;

function TContaCorrente.Sacar: Double;
begin
//  if Saldo > 0 then
//    Result := Saldo - Saque;
//  if Saldo <= 0 then
//    Result := Saldo - _LIMITEADC;
end;

end.
