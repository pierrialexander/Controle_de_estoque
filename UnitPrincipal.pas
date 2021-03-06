unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFormPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    CadastrodeProdutos1: TMenuItem;
    Movimentaes1: TMenuItem;
    GerenciarMovimentaes1: TMenuItem;
    ConsultarMovimentaes1: TMenuItem;
    Label1: TLabel;
    Sobre1: TMenuItem;
    Image1: TImage;
    procedure Sair1Click(Sender: TObject);
    procedure CadastrodeProdutos1Click(Sender: TObject);
    procedure GerenciarMovimentaes1Click(Sender: TObject);
    procedure ConsultarMovimentaes1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses unitCadProduto, unitCadMovimentacao, unitConsMovimentacao, unitSobre;

procedure TFormPrincipal.CadastrodeProdutos1Click(Sender: TObject);
begin
  FormCadProdutos.ShowModal;
end;

procedure TFormPrincipal.ConsultarMovimentaes1Click(Sender: TObject);
begin
  FormConsMovimentacao.ShowModal;
end;

procedure TFormPrincipal.GerenciarMovimentaes1Click(Sender: TObject);
begin
  FormCadMovimentacao.ShowModal;
end;

procedure TFormPrincipal.Sair1Click(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TFormPrincipal.Sobre1Click(Sender: TObject);
begin
  FormSobre.ShowModal;
end;

procedure TFormPrincipal.SpeedButton1Click(Sender: TObject);
begin
  FormCadProdutos.ShowModal;
end;

end.
