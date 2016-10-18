unit Medula;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TFrmMedula = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMedula: TFrmMedula;

implementation

{$R *.dfm}

uses CelulaTronco;

procedure TFrmMedula.FormCreate(Sender: TObject);
begin
DeleteMenu(GetSystemMenu(Handle,False),SC_MOVE,MF_BYCOMMAND);
DeleteMenu(GetSystemMenu(Handle,False),SC_MAXIMIZE,MF_BYCOMMAND);
end;
procedure TFrmMedula.Label1Click(Sender: TObject);
begin
  FrmCelulaTronco.Show;
  Close;
end;

end.

