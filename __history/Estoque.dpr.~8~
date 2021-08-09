program Estoque;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  unitCadProduto in 'unitCadProduto.pas' {FormCadProdutos},
  unitCadMovimentacao in 'unitCadMovimentacao.pas' {FormCadMovimentacao},
  unitConsMovimentacao in 'unitConsMovimentacao.pas' {FormConsMovimentacao},
  unitDM in 'unitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCadProdutos, FormCadProdutos);
  Application.CreateForm(TFormCadMovimentacao, FormCadMovimentacao);
  Application.CreateForm(TFormConsMovimentacao, FormConsMovimentacao);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
