unit uExceptions;

interface

uses
  System.SysUtils;

type
  ENomeObrigatorio = class(Exception)
    public
    constructor Create; reintroduce;
  end;

   ELimiteMilDeposito = class(Exception)
    public
    constructor Create; reintroduce;
  end;

  ELimiteMilSaque = class(Exception)
    public
    constructor Create; reintroduce;
  end;

  EContaObrigatoria = class(Exception)
    public
    constructor Create; reintroduce;
  end;

  ESaldoInsuficiente = class(Exception)
    public
    constructor Create; reintroduce;
  end;

  EDepositoNaoPermitido = class(Exception)
    public
    constructor Create; reintroduce;
  end;

  ELimiteUltrapassado = class(Exception)
    public
    constructor Create; reintroduce;
  end;

implementation

{ ENomeObrigatorio }

constructor ENomeObrigatorio.Create;
begin
  Self.Message := 'O campo nome é obrigatório';
end;

{ ELimiteMil }

constructor ELimiteMilDeposito.Create;
begin
  Self.Message := 'O limite de depósito é de 1000 reais diários';
end;

{ ELimiteMilSaque }

constructor ELimiteMilSaque.Create;
begin
  Self.Message := 'O limite de saque é de 1000 reais diários';
end;

{ EContaObrigatoria }

constructor EContaObrigatoria.Create;
begin
  Self.Message := 'Você deve selecionar um tipo de conta!';
end;

{ ESaldoInsuficiente }

constructor ESaldoInsuficiente.Create;
begin
  Self.Message := 'Saldo insuficiente';
end;


{ EDepositoNaoPermitido }

constructor EDepositoNaoPermitido.Create;
begin
  Self.Message := 'Não é permitido depositar no cartão';
end;

{ ELimiteUltrapassado }

constructor ELimiteUltrapassado.Create;
begin
  Self.Message := 'Limite / transação max 1000';
end;

end.
