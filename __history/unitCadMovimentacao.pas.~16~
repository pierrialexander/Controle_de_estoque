unit unitCadMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFormCadMovimentacao = class(TForm)
    Label1: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    DBNavigator2: TDBNavigator;
    Label7: TLabel;
    Label8: TLabel;
    DBGrid2: TDBGrid;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    txtTotalProdutos: TLabel;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadMovimentacao: TFormCadMovimentacao;

implementation

{$R *.dfm}

uses unitDM;

procedure TFormCadMovimentacao.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbInsert then
    begin
      DM.tbMovimentacoes.FieldByName('dataHora').Value := Now;
    end;

end;

procedure TFormCadMovimentacao.FormShow(Sender: TObject);
begin
  DM.calcularTotais;
end;

end.
