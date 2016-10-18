unit MedulaIndex;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TFrmPrincipal = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses Medula, Requisitos, Doador, Login, Perfil;



procedure TFrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  FrmMedula.Show;
end;

procedure TFrmPrincipal.SpeedButton2Click(Sender: TObject);
begin
  FrmRequisitos.Show;
end;

procedure TFrmPrincipal.SpeedButton3Click(Sender: TObject);
begin
  FrmDoador.Show;
end;

procedure TFrmPrincipal.SpeedButton4Click(Sender: TObject);
begin
  FrmLogin.Show;
end;

end.
