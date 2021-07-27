object DM: TDM
  OldCreateOrder = False
  Height = 417
  Width = 490
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=estoque'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 64
  end
  object tbProdutos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'estoque.produtos'
    TableName = 'estoque.produtos'
    Left = 144
    Top = 64
  end
  object dsProdutos: TDataSource
    DataSet = tbProdutos
    Left = 144
    Top = 136
  end
  object tbMovimentacoes: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'estoque.movimentacoes'
    TableName = 'estoque.movimentacoes'
    Left = 248
    Top = 64
  end
  object dsMovimentacoes: TDataSource
    DataSet = tbMovimentacoes
    Left = 248
    Top = 136
  end
  object tbMovProdutos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'estoque.movimentacoes_produtos'
    TableName = 'estoque.movimentacoes_produtos'
    Left = 352
    Top = 64
  end
  object dsMovProdutos: TDataSource
    DataSet = tbMovProdutos
    Left = 352
    Top = 136
  end
  object sqlAumentaEstoque: TFDCommand
    Connection = Conexao
    ParamData = <
      item
        Name = 'pId'
      end
      item
        Name = 'pQtd'
      end>
    Left = 144
    Top = 248
  end
  object sqlDiminuiEstoque: TFDCommand
    Connection = Conexao
    ParamData = <
      item
        Name = 'pId'
      end
      item
        Name = 'pQtd'
      end>
    Left = 144
    Top = 304
  end
  object sqlMovimentacoes: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from movimentacoes')
    Left = 248
    Top = 248
  end
  object dsSqlMovimentacoes: TDataSource
    DataSet = sqlMovimentacoes
    Left = 248
    Top = 304
  end
end