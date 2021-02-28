unit uContaCorrente;

interface

uses
  uConta, uExceptions;

type
  TContaCorrente = class(TConta)
  protected
    procedure Sacar(AValor : Double); override;
  end;

implementation


{ TContaCorrente }

procedure TContaCorrente.Sacar(AValor: Double);
begin
  if (Saldo - AValor >= -500) then
    inherited
  else
    raise ESaldoInsuficiente.Create;
end;

end.
