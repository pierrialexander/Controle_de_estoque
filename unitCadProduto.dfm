object FormCadProdutos: TFormCadProdutos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 420
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 257
    Height = 29
    Caption = 'Cadastro de Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblProduto: TLabel
    Left = 32
    Top = 93
    Width = 111
    Height = 16
    Caption = 'Nome do Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 162
    Width = 68
    Height = 16
    Caption = 'Fabricante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 216
    Top = 162
    Width = 55
    Height = 16
    Caption = 'Validade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 234
    Width = 52
    Height = 16
    Caption = 'Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 344
    Top = 29
    Width = 304
    Height = 32
    DataSource = DM.dsProdutos
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 115
    Width = 321
    Height = 21
    DataField = 'nome'
    DataSource = DM.dsProdutos
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 184
    Width = 169
    Height = 21
    DataField = 'fabricante'
    DataSource = DM.dsProdutos
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 216
    Top = 184
    Width = 135
    Height = 21
    DataField = 'validade'
    DataSource = DM.dsProdutos
    MaxLength = 10
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 32
    Top = 256
    Width = 169
    Height = 21
    DataField = 'estoqueAtual'
    DataSource = DM.dsProdutos
    ReadOnly = True
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 384
    Top = 115
    Width = 281
    Height = 270
    DataSource = DM.dsProdutos
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome do Produto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
end
