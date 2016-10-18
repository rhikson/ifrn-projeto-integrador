unit Requisitos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TFrmRequisitos = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRequisitos: TFrmRequisitos;

implementation

{$R *.dfm}

procedure TFrmRequisitos.FormCreate(Sender: TObject);
begin
DeleteMenu(GetSystemMenu(Handle,False),SC_MOVE,MF_BYCOMMAND);
DeleteMenu(GetSystemMenu(Handle,False),SC_MAXIMIZE,MF_BYCOMMAND);
end;

procedure TFrmRequisitos.Image1Click(Sender: TObject);
begin
DeleteMenu(GetSystemMenu(Handle,False),SC_MOVE,MF_BYCOMMAND);
DeleteMenu(GetSystemMenu(Handle,False),SC_MAXIMIZE,MF_BYCOMMAND);
end;

procedure TFrmRequisitos.Image2Click(Sender: TObject);
begin
  Application.MessageBox('O cadastro pode ser feito em campanhas de doa��o ou em um Hemocentro.' +
  ' Para isso voc� precisa:' +
  ' - Ter entre 18 e 54 anos e estar em um bom estado de sa�de;' +
  ' - Colher um exame de sangue (10 ml) para o teste de compatibilidade (HLA).', 'Se cadastre', MB_OK);

end;

procedure TFrmRequisitos.Image3Click(Sender: TObject);
begin
  Application.MessageBox('A compatibilidade da medula � determinada pela gen�tica e a chance de encontrar um doador compat�vel com um paciente � em m�dia 1 em 100 mil.', 'Espere', MB_OK);
end;

procedure TFrmRequisitos.Image4Click(Sender: TObject);
begin
   Application.MessageBox('Fazer a avalia��o m�dica: Ao ser chamado, um m�dico ir� avaliar seu estado de sa�de e novos exames ser�o feitos.', 'Comfirmada a compatibilidade', MB_OK);
end;

procedure TFrmRequisitos.Image5Click(Sender: TObject);
begin
  Application.MessageBox('A patir das orienta��es m�dicas, ser� realizada uma das duas maneiras que se tem para coletar medula: Coleta pelo osso da bacia ou Coleta pela veia', 'Doe', MB_OK);
end;

end.
