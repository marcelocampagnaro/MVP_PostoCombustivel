inherited frmTanques: TfrmTanques
  Caption = 'Cadastro de Tanques'
  ClientWidth = 972
  ExplicitWidth = 978
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 972
    ExplicitWidth = 972
    inherited DBGrid1: TDBGrid
      Width = 970
    end
  end
  inherited Panel5: TPanel
    Width = 972
    ExplicitWidth = 972
    inherited btNovo: TBitBtn
      ExplicitLeft = 1
      ExplicitTop = 1
    end
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
    Width = 972
    ExplicitWidth = 972
  end
  inherited qryDados: TFDQuery
    SQL.Strings = (
      'SELECT'
      '  T.CODIGO,'
      '  P.NOME_FANTASIA AS POSTO,'
      '  TP.DESCRICAO AS TIPO_COMBUSTIVEL,'
      '  T.DESCRICAO AS TANQUE,'
      '  T.VALOR_COMBUSTIVEL,'
      '  T.APAGADO'
      'FROM'
      '  TANQUES T'
      'INNER JOIN'
      '  TIPOS_COMBUSTIVEIS TP ON TP.CODIGO = T.CODIGO_TIPO_COMBUSTIVEL'
      'INNER JOIN'
      '  POSTOS P ON P.CODIGO = T.CODIGO_POSTO'
      'WHERE'
      '  T.APAGADO = '#39'F'#39
      'ORDER BY'
      '  P.NOME_FANTASIA,'
      '  TP.DESCRICAO')
    object qryDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
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
    object qryDadosTIPO_COMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 30
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object qryDadosTANQUE: TStringField
      DisplayWidth = 50
      FieldName = 'TANQUE'
      Origin = 'DESCRICAO'
      Required = True
      Size = 255
    end
    object qryDadosVALOR_COMBUSTIVEL: TSingleField
      FieldName = 'VALOR_COMBUSTIVEL'
      Origin = 'VALOR_COMBUSTIVEL'
      Required = True
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
