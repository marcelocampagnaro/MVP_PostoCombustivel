inherited frmBomba: TfrmBomba
  Caption = 'Cadastro de Bombas'
  ClientWidth = 954
  ExplicitWidth = 960
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 954
    ExplicitWidth = 954
    inherited DBGrid1: TDBGrid
      Width = 952
    end
  end
  inherited Panel5: TPanel
    Width = 954
    ExplicitWidth = 954
    inherited btEditar: TBitBtn
      ExplicitLeft = 105
      ExplicitTop = 1
    end
    inherited btFiltar: TBitBtn
      ExplicitLeft = 313
      ExplicitTop = 1
    end
  end
  inherited pnlMensagem: TPanel
    Width = 954
    ExplicitWidth = 954
  end
  inherited qryDados: TFDQuery
    SQL.Strings = (
      'SELECT'
      '  B.CODIGO,'
      '  B.DESCRICAO,'
      '  T.DESCRICAO AS TANQUE,'
      '  P.NOME_FANTASIA AS POSTO,'
      '  B.APAGADO'
      'FROM'
      '  BOMBAS B'
      'INNER JOIN'
      '  TANQUES T ON T.CODIGO = B.CODIGO_TANQUE'
      'INNER JOIN'
      '  POSTOS P ON P.CODIGO = T.CODIGO_POSTO'
      'WHERE'
      '  B.APAGADO = '#39'F'#39
      'ORDER BY'
      '  P.NOME_FANTASIA,'
      '  T.DESCRICAO,'
      '  B.DESCRICAO')
    object qryDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qryDadosDESCRICAO: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 255
    end
    object qryDadosTANQUE: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 50
      FieldName = 'TANQUE'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object qryDadosPOSTO: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 50
      FieldName = 'POSTO'
      Origin = 'NOME_FANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object qryDadosAPAGADO: TStringField
      FieldName = 'APAGADO'
      Origin = 'APAGADO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
end
