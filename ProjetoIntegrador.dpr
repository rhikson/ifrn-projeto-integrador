program ProjetoIntegrador;

uses
  Vcl.Forms,
  MedulaIndex in 'MedulaIndex.pas' {FrmPrincipal},
  Medula in 'Medula.pas' {FrmMedula},
  Requisitos in 'Requisitos.pas' {FrmRequisitos},
  Doador in 'Doador.pas' {FrmDoador},
  Cadastro in 'Cadastro.pas' {FrmCadastro},
  Vcl.Themes,
  Vcl.Styles,
  PreCadastro in 'PreCadastro.pas' {FrmPreCadastro},
  Agradecimentos in 'Agradecimentos.pas' {FrmAgradecimentos},
  Login in 'Login.pas' {FrmLogin},
  Perfil in 'Perfil.pas' {FrmPerfil},
  AlterarSenha in 'AlterarSenha.pas' {FrmAlterar},
  AlterarTelefone in 'AlterarTelefone.pas' {FrmAlterarTelefone},
  CelulaTronco in 'CelulaTronco.pas' {FrmCelulaTronco};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmMedula, FrmMedula);
  Application.CreateForm(TFrmRequisitos, FrmRequisitos);
  Application.CreateForm(TFrmDoador, FrmDoador);
  Application.CreateForm(TFrmCadastro, FrmCadastro);
  Application.CreateForm(TFrmPreCadastro, FrmPreCadastro);
  Application.CreateForm(TFrmAgradecimentos, FrmAgradecimentos);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmPerfil, FrmPerfil);
  Application.CreateForm(TFrmAlterar, FrmAlterar);
  Application.CreateForm(TFrmAlterarTelefone, FrmAlterarTelefone);
  Application.CreateForm(TFrmCelulaTronco, FrmCelulaTronco);
  Application.Run;
end.
