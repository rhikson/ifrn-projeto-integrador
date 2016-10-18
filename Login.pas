unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, Vcl.StdCtrls, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TFrmLogin = class(TForm)
    FDQuery1: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses Perfil;

procedure TFrmLogin.Button1Click(Sender: TObject);
begin
  with FDQuery1 do begin
    close;
    sql[1] := 'select loginusuario, senha';
    sql[2] := 'from usuario';
    sql[3] := 'where loginusuario = ''' + Edit1.Text + '''';
    sql[4] := 'and senha = ''' + Edit3.Text + '''';
    sql[5] := 'and ativo = 1';
    open;
  end;
      if FDQuery1.RecordCount <> 1 then begin
      ShowMessage('Problema com Usuário ou Senha');
      abort;
    end
    else begin
      ShowMessage('Conectado!');
      FrmPerfil.Show;
      with FrmPerfil.FDQuery1 do
        begin
            close;
            sql[1] := ' select p.cpf as CPF, p.nome as Nome, p.sexo, p.telefone, p.tpsanguineo, p.fatorrh, p.altura, d.dtultimadoacao, d.peso , e.sigla, u.loginusuario, u.senha from pessoa p ';
            sql[2] := ' left join doacao d on d.iddoacao = p.iddoacao ';
            sql[3] := ' left join estado e on e.idestado = p.idestado ';
            sql[4] := ' left join usuario u on u.idusuario = p.idusuario ';
            sql[5] := ' WHERE cpf = ''' + edit2.Text + '''';
            open;
        end;
        FrmPerfil.FDQuery1.Command.Active;
        FrmPerfil.Label1.Caption := 'Olá ' + edit1.Text + ', seja bem vindo(a)!  ';
        FrmPerfil.Label4.Caption:= FrmPerfil.FDQuery1.FieldByName('cpf').Value;
        FrmPerfil.Label16.Caption:= FrmPerfil.FDQuery1.FieldByName('nome').Value;
        FrmPerfil.Label17.Caption:= FrmPerfil.FDQuery1.FieldByName('sexo').Value;
        FrmPerfil.Label18.Caption:= FrmPerfil.FDQuery1.FieldByName('telefone').Value;
        FrmPerfil.Label19.Caption:= FrmPerfil.FDQuery1.FieldByName('tpsanguineo').Value;
        FrmPerfil.Label20.Caption:= FrmPerfil.FDQuery1.FieldByName('fatorrh').Value;
        FrmPerfil.Label21.Caption:= FrmPerfil.FDQuery1.FieldByName('altura').Value;
        FrmPerfil.Label22.Caption:= FrmPerfil.FDQuery1.FieldByName('dtultimadoacao').Value;
        FrmPerfil.Label23.Caption:= FrmPerfil.FDQuery1.FieldByName('peso').Value;
        FrmPerfil.Label24.Caption:= FrmPerfil.FDQuery1.FieldByName('sigla').Value;
        FrmPerfil.Label25.Caption:= FrmPerfil.FDQuery1.FieldByName('loginusuario').Value;

      end;
    FrmLogin.Close;
end;

procedure TFrmLogin.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
DeleteMenu(GetSystemMenu(Handle,False),SC_MOVE,MF_BYCOMMAND);
DeleteMenu(GetSystemMenu(Handle,False),SC_MAXIMIZE,MF_BYCOMMAND);
end;

end.
