unit uCartaoDeCredito;

interface

uses
  uConta, uExceptions;

type
  TCartaoDeCredito = class(TConta)
  protected
    procedure Sacar(AValor : Double); override;
  end;

implementation

{ TCartaoDeCredito }

procedure TCartaoDeCredito.Sacar(AValor: Double);
begin
  raise EDepositoNaoPermitido.Create;
end;


end.
