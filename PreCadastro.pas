unit PreCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.pngimage, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TFrmPreCadastro = class(TForm)
    Image1: TImage;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    Image2: TImage;
    SpeedButton1: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPreCadastro: TFrmPreCadastro;

implementation

{$R *.dfm}

uses Cadastro, Agradecimentos;

procedure TFrmPreCadastro.Button1Click(Sender: TObject);
var
altura: double;
peso: double;
imc : double;
imcNormal : boolean;
begin
    peso := StrToFloat(Edit1.Text);
    altura := StrToFloat(Edit2.Text);
    begin
      imc:= peso/(altura*altura);
      if (imc >= 18.5) and (imc <= 24.99) then
        begin
          imcNormal := true;
        end else
        begin
          imcNormal := false;
        end;
      end;

    if (RadioGroup1.ItemIndex = 0) and (RadioGroup2.ItemIndex = 1) and (imcNormal = true) then
        begin
          FrmCadastro.Show;
        end else
        begin
          FrmAgradecimentos.Show;
        end;
        FrmPreCadastro.Close;
    end;
procedure TFrmPreCadastro.FormCreate(Sender: TObject);
begin
DeleteMenu(GetSystemMenu(Handle,False),SC_MOVE,MF_BYCOMMAND);
DeleteMenu(GetSystemMenu(Handle,False),SC_MAXIMIZE,MF_BYCOMMAND);
Edit1.Clear;
end;

procedure TFrmPreCadastro.SpeedButton1Click(Sender: TObject);
var
altura: double;
peso: double;
imc : double;
imcNormal : boolean;
begin
    peso := StrToFloat(Edit1.Text);
    altura := StrToFloat(Edit2.Text);
    begin
      imc:= peso/(altura*altura);
      if (imc >= 18.5) and (imc <= 24.99) then
        begin
          imcNormal := true;
        end else
        begin
          imcNormal := false;
        end;
      end;

    if (RadioGroup1.ItemIndex = 0) and (RadioGroup2.ItemIndex = 1) and (imcNormal = true) then
        begin
          FrmCadastro.Show;
        end else
        begin
          FrmAgradecimentos.Show;
        end;
        FrmPreCadastro.Close;
    end;
end.
