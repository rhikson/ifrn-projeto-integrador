unit Agradecimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TFrmAgradecimentos = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgradecimentos: TFrmAgradecimentos;

implementation

{$R *.dfm}

procedure TFrmAgradecimentos.FormCreate(Sender: TObject);
begin
DeleteMenu(GetSystemMenu(Handle,False),SC_MOVE,MF_BYCOMMAND);
DeleteMenu(GetSystemMenu(Handle,False),SC_MAXIMIZE,MF_BYCOMMAND);
end;

end.
