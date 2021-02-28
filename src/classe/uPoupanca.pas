unit uPoupanca;

interface

uses
  uConta, uExceptions;

type
  TPoupanca = class(TConta)
  protected
    procedure Sacar(AValor : Double); override;
  end;

implementation

const
  _LIMITEDEPOSITO = 1000;

{ TPoupanca }

{ TPoupanca }



{ TPoupanca }

procedure TPoupanca.Sacar(AValor: Double);
begin
  if (Saldo - AValor >= 0) then
    inherited
  else
    raise ESaldoInsuficiente.Create;
end;

end.
