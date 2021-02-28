program BancoVirtual;

uses
  Vcl.Forms,
  uFrmPrincipal in 'view\uFrmPrincipal.pas' {FrmPrincipal},
  uEnumContas in 'classe\uEnumContas.pas',
  uContaCorrente in 'classe\uContaCorrente.pas',
  uPoupanca in 'classe\uPoupanca.pas',
  uCartaoDeCredito in 'classe\uCartaoDeCredito.pas',
  uConta in 'classe\uConta.pas',
  uFactoryConta in 'classe\uFactoryConta.pas',
  uExceptions in 'exception\uExceptions.pas',
  uCliente in 'classe\uCliente.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Auric');
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
