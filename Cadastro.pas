unit Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls,
  FireDAC.Comp.UI, FireDAC.Comp.Client, Vcl.Imaging.jpeg, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TFrmCadastro = class(TForm)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dsPessoa: TDataSource;
    dsDoacao: TDataSource;
    FDQuery1: TFDQuery;
    dsUsuario: TDataSource;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    dsEndereco: TDataSource;
    dsCidade: TDataSource;
    TabSheet4: TTabSheet;
    DBCheckBox2: TDBCheckBox;
    tbUsuario: TFDTable;
    tbDoacao: TFDTable;
    tbPessoa: TFDTable;
    tbCidade: TFDTable;
    tbEndereco: TFDTable;
    tbEstado: TFDTable;
    dsEstado: TDataSource;
    tbEstadoidestado: TFDAutoIncField;
    tbEstadoidcidade: TIntegerField;
    tbEstadosigla: TStringField;
    tbEnderecoidendereco: TFDAutoIncField;
    tbEnderecobairro: TStringField;
    tbEnderecorua: TStringField;
    tbEndereconcasa: TStringField;
    tbEnderecocomplemento: TStringField;
    Label24: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    TabSheet5: TTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label22: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBNavigator1: TDBNavigator;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    Label20: TLabel;
    DBNavigator6: TDBNavigator;
    DBNavigator5: TDBNavigator;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    Label17: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBNavigator4: TDBNavigator;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label23: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit16: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBNavigator3: TDBNavigator;
    DBCheckBox1: TDBCheckBox;
    idpac: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    DBNavigator2: TDBNavigator;
    SpeedButton1: TSpeedButton;
    Image6: TImage;
    Image5: TImage;
    DBEdit1: TDBEdit;
    tbPessoacpf: TStringField;
    tbPessoanome: TStringField;
    tbPessoasexo: TStringField;
    tbPessoatelefone: TStringField;
    tbPessoatpsanguineo: TStringField;
    tbPessoafatorrh: TStringField;
    tbPessoaaltura: TFloatField;
    tbPessoaiddoacao: TIntegerField;
    tbPessoaidestado: TIntegerField;
    tbPessoaidusuario: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastro: TFrmCadastro;

implementation

{$R *.dfm}

uses MedulaIndex, PreCadastro, Doador;



procedure TFrmCadastro.Button1Click(Sender: TObject);
begin
  FrmDoador.Close;
  FrmPreCadastro.Close;
  FrmCadastro.Close;
end;

procedure TFrmCadastro.FormCreate(Sender: TObject);
begin
tbUsuario.Active:= true;
tbDoacao.Active:= true;
tbPessoa.Active:= true;
tbCidade.Active:= true;
tbEndereco.Active:= true;
tbEstado.Active:= true;
DeleteMenu(GetSystemMenu(Handle,False),SC_MOVE,MF_BYCOMMAND);
DeleteMenu(GetSystemMenu(Handle,False),SC_MAXIMIZE,MF_BYCOMMAND);
end;

procedure TFrmCadastro.SpeedButton1Click(Sender: TObject);
begin
  FrmDoador.Close;
  FrmPreCadastro.Close;
  FrmCadastro.Close;
end;

end.
