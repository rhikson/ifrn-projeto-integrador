unit AlterarTelefone;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Imaging.pngimage,
  Data.DB, Vcl.StdCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TFrmAlterarTelefone = class(TForm)
    Image1: TImage;
    FDQuery2: TFDQuery;
    Edit2: TEdit;
    Label1: TLabel;
    DataSource2: TDataSource;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAlterarTelefone: TFrmAlterarTelefone;

implementation

{$R *.dfm}

uses Login, Perfil;

procedure TFrmAlterarTelefone.Image2Click(Sender: TObject);
begin
 with FDQuery2 do
      begin
        sql.Clear;
        sql.Add ('update pessoa');
        sql.Add ('set telefone = ''' + Edit2.Text + '''');
        sql.Add ('where cpf = ''' + FrmLogin.Edit2.Text + '''');
        ExecSQL;
      end;
      FDQuery2.Command.Active;
      ShowMessage('Seu telefone foi alterado');
      Close;
      FrmPerfil.Close;
end;
end.
