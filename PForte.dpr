program PForte;

uses
  Vcl.Forms,
  unDefaultBrowse in 'unDefaultBrowse.pas' {frmDefaultBrowse},
  unDMPrincipal in 'unDMPrincipal.pas' {dmPrincipal: TDataModule},
  unPrincipal in 'unPrincipal.pas' {frmPrincipal},
  unDefaultEdit in 'unDefaultEdit.pas' {frmDefaultEdit},
  unCadastroPostoBrowse in 'unCadastroPostoBrowse.pas' {frmCadastroPosto},
  unConstantes in 'unConstantes.pas',
  unTiposCombustiveisBrowse in 'unTiposCombustiveisBrowse.pas' {frmTiposCombustiveis},
  unTanquesBrowse in 'unTanquesBrowse.pas' {frmTanques},
  unBombasBrowse in 'unBombasBrowse.pas' {frmBomba},
  unAbastecimentosBrowse in 'unAbastecimentosBrowse.pas' {frmAbastecimentos},
  unTiposCombustiveisEdit in 'unTiposCombustiveisEdit.pas' {frmTiposCombustiveisEdita},
  unCadastroPostoEdit in 'unCadastroPostoEdit.pas' {frmCadastroPostoEdita},
  unTanquesEdit in 'unTanquesEdit.pas' {frmTanquesEdita},
  unBombasEdit in 'unBombasEdit.pas' {frmBombasEdita},
  unAbastecimentosEdit in 'unAbastecimentosEdit.pas' {frmAbastecimentosEdita};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.Run;
end.
