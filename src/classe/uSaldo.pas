unit uSaldo;

interface

uses
  uCorrentista, uExceptions;

type
  TCartaoDeCredito = class(TCorrentista)
  protected
    function Sacar : Double; override;
  end;

implementation

const
  _LIMITESAQUE = 1000;

{ TCartaoDeCredito }
{ TCartaoDeCredito }

function TCartaoDeCredito.Sacar: Double;
begin
//  if Saque <= 1000 then
//    Result := Saldo - Saque
//  else
//    raise ELimiteMilSaque.Create;
end;

end.
