unit AlterarSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TFrmAlterar = class(TForm)
    Edit1: TEdit;
    FDQuery2: TFDQuery;
    DataSource2: TDataSource;
    Label1: TLabel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAlterar: TFrmAlterar;

implementation

{$R *.dfm}

uses Login, Perfil;

procedure TFrmAlterar.Image2Click(Sender: TObject);
begin
with FDQuery2 do
      begin
        sql.Clear;
        sql.Add ('update usuario');
        sql.Add ('set senha = ''' + Edit1.Text + '''');
        sql.Add ('where loginusuario = ''' + FrmLogin.Edit1.Text + '''');
        ExecSQL;
      end;
      FDQuery2.Command.Active;
      ShowMessage('Sua senha foi alterada');
      Close;
      FrmPerfil.Close;
end;

end.
