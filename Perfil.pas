unit Perfil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.Imaging.jpeg;

type
  TFrmPerfil = class(TForm)
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    Image1: TImage;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);

    procedure Label28Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPerfil: TFrmPerfil;

implementation

{$R *.dfm}

uses Login, AlterarSenha, AlterarTelefone;

procedure TFrmPerfil.FormCreate(Sender: TObject);
begin
DeleteMenu(GetSystemMenu(Handle,False),SC_MOVE,MF_BYCOMMAND);
DeleteMenu(GetSystemMenu(Handle,False),SC_MAXIMIZE,MF_BYCOMMAND);

end;

procedure TFrmPerfil.Label28Click(Sender: TObject);
begin
FrmAlterar.Show;
end;

procedure TFrmPerfil.Label2Click(Sender: TObject);
begin
FrmAlterarTelefone.Show;
end;

procedure TFrmPerfil.Label3Click(Sender: TObject);
begin
FrmPerfil.Close;
FrmLogin.Show;
end;

end.
