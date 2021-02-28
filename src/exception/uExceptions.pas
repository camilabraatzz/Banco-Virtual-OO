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
  Self.Message := 'O campo nome � obrigat�rio';
end;

{ ELimiteMil }

constructor ELimiteMilDeposito.Create;
begin
  Self.Message := 'O limite de dep�sito � de 1000 reais di�rios';
end;

{ ELimiteMilSaque }

constructor ELimiteMilSaque.Create;
begin
  Self.Message := 'O limite de saque � de 1000 reais di�rios';
end;

{ EContaObrigatoria }

constructor EContaObrigatoria.Create;
begin
  Self.Message := 'Voc� deve selecionar um tipo de conta!';
end;

{ ESaldoInsuficiente }

constructor ESaldoInsuficiente.Create;
begin
  Self.Message := 'Saldo insuficiente';
end;


{ EDepositoNaoPermitido }

constructor EDepositoNaoPermitido.Create;
begin
  Self.Message := 'N�o � permitido depositar no cart�o';
end;

{ ELimiteUltrapassado }

constructor ELimiteUltrapassado.Create;
begin
  Self.Message := 'Limite / transa��o max 1000';
end;

end.
