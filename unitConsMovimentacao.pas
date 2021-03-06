unit unitConsMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormConsMovimentacao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    txtDataInicial: TMaskEdit;
    txtDataFinal: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    btnConsultar: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    lblTotal: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsMovimentacao: TFormConsMovimentacao;

implementation

{$R *.dfm}

uses unitDM;

procedure TFormConsMovimentacao.btnConsultarClick(Sender: TObject);
begin
  DM.sqlMovimentacoes.Close;
  DM.sqlMovimentacoes.SQL.Clear;
  DM.sqlMovimentacoes.SQL.Text := 'select * from movimentacoes where Date(dataHora) between :pDataInicial AND :pDataFinal';
  DM.sqlMovimentacoes.ParamByName('pDataInicial').Value := FormatDateTime('yyyy-mm-dd', strtodate(txtDataInicial.Text));
  DM.sqlMovimentacoes.ParamByName('pDataFinal').Value := FormatDateTime('yyyy-mm-dd', strtodate(txtDataFinal.Text));
  DM.sqlMovimentacoes.Open;

  lblTotal.Caption := IntToStr(DM.sqlMovimentacoes.RecordCount);

end;

procedure TFormConsMovimentacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(27) then
  FormConsMovimentacao.Close;
end;

procedure TFormConsMovimentacao.FormShow(Sender: TObject);
begin
  DM.sqlMovimentacoes.Refresh;
  DM.sqlMovProdutos.Refresh;
  lblTotal.Caption := IntToStr(DM.sqlMovimentacoes.RecordCount);
end;

end.
