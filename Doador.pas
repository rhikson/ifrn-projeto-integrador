unit Doador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TFrmDoador = class(TForm)
    Estado: TComboBox;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    t: TImage;
    Image13: TImage;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Image12: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDoador: TFrmDoador;

implementation

{$R *.dfm}

uses Questionario, PreCadastro;


procedure TFrmDoador.FormCreate(Sender: TObject);
begin
DeleteMenu(GetSystemMenu(Handle,False),SC_MOVE,MF_BYCOMMAND);
DeleteMenu(GetSystemMenu(Handle,False),SC_MAXIMIZE,MF_BYCOMMAND);

end;

procedure TFrmDoador.SpeedButton1Click(Sender: TObject);
begin
  FrmQuestionario.Show;
end;
procedure TFrmDoador.SpeedButton2Click(Sender: TObject);
begin
  FrmDoador.Close;
  FrmPreCadastro.Show;
end;

procedure TFrmDoador.SpeedButton3Click(Sender: TObject);
var
rn,rj : String;
begin
  if (Estado.ItemIndex = 0) then
    begin
      image2.Visible:=true;
      Application.MessageBox('Av. Almirante Alexandrino de Alencar, 1800 - Tirol - '+
      'Natal CEP: 59.015-350'+'Telefone: (84) 3232-6702 / 3232-6767'+'Fax: (84) 3232-6703', 'HEMONORTE', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image2.Visible:=false;
    end;
  if (Estado.ItemIndex = 1) then
    begin
      image3.Visible:=true;
      Application.MessageBox('Rua Frei Caneca, 8 - Centro - '+ 'CEP: 20.211-030'+'Telefone: (21) 2332-8611 (Ramal 2255) / 0800-2820708 (segunda a sexta-feira, das 7h às 18h)', 
      'HEMORIO', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image3.Visible:=false;
    end;
  if (Estado.ItemIndex = 2) then
    begin
      image4.Visible:=true;
      Application.MessageBox('Av. José Bastos, 3.390 ¿ Rodolfo Teófilo - '+ 
      'FORTALEZA - CEP: 60.440-261 '+'Telefone: (85) 3101-2296','HEMOCE', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image4.Visible:=false;
    end;
  if (Estado.ItemIndex = 3) then
    begin
      image5.Visible:=true;
      Application.MessageBox('Av. D. Pedro II, 1119 - Torre - João Pessoa - '+'CEP: 58.013-420'+
      'Telefone: (83) 3218-7610', 'HEMOÍBA', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image5.Visible:=false;
    end;
    if (Estado.ItemIndex = 4) then
    begin
      image6.Visible:=true;
      Application.MessageBox('Rua Joaquim Nabuco, 171 - Graças - Recife -'+
      'CEP: 52.011-900'+'Telefone: (81) 3182-4648/ 3416-4723', 'HEMOPE', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image6.Visible:=false;
    end;
    if (Estado.ItemIndex = 5) then
    begin
      image7.Visible:=true;
      Application.MessageBox('Av. Jorge de Lima, nº 58 - Trapiche da Barra - Maceió -'+'CEP: 57.010-382'+
      'Telefone: (82) 3315-2106 / 3315-2102', 'HEMOAL', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image7.Visible:=false;
    end;
    if (Estado.ItemIndex = 6) then
    begin
      image8.Visible:=true;
      Application.MessageBox('Av. Trancredo Neves, s/nº - Centro Adm. Gov. Augusto Franco - Aracaju'+
      'CEP: 49.080-470'+'Telefone: (79) 3259-3191', 'HEMOSE', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image8.Visible:=false;
    end;
    if (Estado.ItemIndex = 7) then
    begin
      image9.Visible:=true;
      Application.MessageBox('Rua 5 de Janeiro, s/nº - Jordoa - São Luís'+'CEP: 65.040-450'+
      'Telefone: (98) 3216-1100 / 0800-280-6565', 'HEMOMAR', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image9.Visible:=false;
    end;
    if (Estado.ItemIndex = 8) then
    begin
      image10.Visible:=true;
      Application.MessageBox('Rua 1º de maio, 235 - Centro - Teresina'+'CEP: 64.001-430'+
      'Telefone: (86) 3221-4927 / 3221- 4989', 'HEMOPI', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image10.Visible:=false;
    end;
    if (Estado.ItemIndex = 9) then
    begin
      image11.Visible:=true;
      Application.MessageBox('Av. Vasco da Gama, s/nº Rio Vermelho - Salvador'+'CEP: 40.240-090'+
      'Telefone: (71) 3116-5600 / 3116-5661', 'HEMOBA', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image11.Visible:=false;
    end;

    if (Estado.ItemIndex = 10) then
    begin
      image12.Visible:=true;
      Application.MessageBox('Av. Brigadeiro Eduardo Gomes, 3418 - Campos Paricarana - Boa Vista (RR)'+'CEP:69304-650'+
      'Telefone: (95) 3623-1990/1316','HEMOERAIMA', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image12.Visible:=false;
    end;
    if (Estado.ItemIndex = 11) then
    begin
      image14.Visible:=true;
      Application.MessageBox('Av. Raimundo Álvares da Costa, s/nº - Centro - Macapá'+'CEP: 68.908-170'+
      'Telefone: (96) 3212-6139 / 3223-6289','HEMOAP', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image14.Visible:=false;
    end;
    if (Estado.ItemIndex = 12) then
    begin
      image15.Visible:=true;
      Application.MessageBox('Av. Constantino Nery , 4397 - Chapada - Manaus'+'CEP: 69.055-002'+
      'Telefone: (92) 3655-0100','HEMOAM', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image15.Visible:=false;
    end;
    if (Estado.ItemIndex = 13) then
    begin
      image16.Visible:=true;
      Application.MessageBox('Trav. Padre Eutiquio, nº 2109 - Batista Campos - Belém'+'CEP: 66.033-000'+
      'Telefone: (91) 3242-9100 / 6905','HEMOPA', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image16.Visible:=false;
    end;
    if (Estado.ItemIndex = 14) then
    begin
      image17.Visible:=true;
      Application.MessageBox('Quadra 301 Norte - Conj. 02 Lt.1 - Palmas'+'CEP: 77.030-010'+
      'Telefone: (63) 3218-3285','HEMOTO', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image17.Visible:=false;
    end;
    if (Estado.ItemIndex = 15) then
    begin
      image18.Visible:=true;
      Application.MessageBox('Av. Getúlio Vargas, nº 2787 - Vila Ivonete - Rio Branco'+'CEP: 69.914-500'+
      'Telefone: (68) 3228-1494','HEMOACRE', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image18.Visible:=false;
    end;
    if (Estado.ItemIndex = 16) then
    begin
      image19.Visible:=true;
      Application.MessageBox('Av. Circular II, s/nº - Setor Industrial - Porto Velho'+'CEP: 78.900-970'+
      'Telefone: (69) 3216-5489 / 9957-3000','HEMORON', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image19.Visible:=false;
    end;
    if (Estado.ItemIndex = 17) then
    begin
      image20.Visible:=true;
      Application.MessageBox('Rua 13 de junho, nº 1055 - Centro - Cuiabá'+'CEP: 78.005-100'+
      'Telefone: (65) 3321-4578','HEMOMAT', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image20.Visible:=false;
    end;
    if (Estado.ItemIndex = 18) then
    begin
      image21.Visible:=true;
      Application.MessageBox('Av. Fernando Correia da Costa, nº 1304 - Centro - Campo Grande'+'CEP: 79.004-310'+
      'Telefone: (67) 3312-1500 / 3312-1502','HEMOSUL', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image21.Visible:=false;
    end;
    if (Estado.ItemIndex = 19) then
    begin
      image22.Visible:=true;
      Application.MessageBox('Av. Anhanguera, 5195 - Setor Coimbra - Goiânia'+'CEP: 74.535-010'+
      'Telefone: (62) 3201-4570 / 3201-4574','HEMOG', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image22.Visible:=false;
    end;
    if (Estado.ItemIndex = 20) then
    begin
      image23.Visible:=true;
      Application.MessageBox('Alameda Ezequiel Dias, 321 - Centro - Belo Horizonte'+'CEP: 30.130-110'+
      'Telefone: (31) 3248-4515 / 3248-4516','HEMOMINAS', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image23.Visible:=false;
    end;
    if (Estado.ItemIndex = 21) then
    begin
      image24.Visible:=true;
      Application.MessageBox('Av. Marechal Campos,1468 - Maruípe - Vitória'+'CEP: 29.040-090'+
      'Telefone: (27) 3137-2458 / 3137-2463 / 2438','HEMOES', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image24.Visible:=false;
    end;
    if (Estado.ItemIndex = 22) then
    begin
      image25.Visible:=true;
      Application.MessageBox('Rua Marquês de Itu, 579 - Vila Buarque - São Paulo'+'CEP: 01221-001'+
      'Telefone: (11) 2176-7000 / 0800-167-055','HEMOSP', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image25.Visible:=false;
    end;
    if (Estado.ItemIndex = 23) then
    begin
      image26.Visible:=true;
      Application.MessageBox('Travessa João Prosdócimo, 145 - Alto da Quinze - Curitiba'+'CEP: 80060-220'+
      'Telefone: (41) 3281-4000 / 4051','HEMEPAR', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image26.Visible:=false;
    end;
    if (Estado.ItemIndex = 24) then
    begin
      image27.Visible:=true;
      Application.MessageBox('Av. Othon Gama D¿eça, 756 Praça D. Pedro I - Centro - Florianópolis'+'CEP: 88015-240'+
      'Telefone: (48) 3251-9711 / 3251-9712 / 3251-9713','HEMOSC', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image27.Visible:=false;
    end;
    if (Estado.ItemIndex = 25) then
    begin
      image28.Visible:=true;
      Application.MessageBox('Av. Bento Gonçalves nº 3.722 - Partenon - Porto Alegre'+'CEP: 90650-001'+
      'Telefone: (51) 3319-5544 / 3319-4016','HEMORGS', MB_OK + MB_ICONINFORMATION);
    end else
    begin
      image28.Visible:=false;
    end;
 end;
end.
