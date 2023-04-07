inherited frmAbastecimentos: TfrmAbastecimentos
  Caption = 'Abastecimentos'
  ClientWidth = 1288
  ExplicitWidth = 1294
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1288
    ExplicitWidth = 1288
    inherited DBGrid1: TDBGrid
      Width = 1286
    end
  end
  inherited Panel5: TPanel
    Width = 1288
    ExplicitWidth = 1288
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
    Width = 1288
    ExplicitWidth = 1288
  end
  inherited qryDados: TFDQuery
    SQL.Strings = (
      'SELECT'
      '  A.CODIGO,'
      '  P.NOME_FANTASIA AS POSTO,'
      '  B.DESCRICAO AS BOMBA,'
      '  T.DESCRICAO AS TANQUE,'
      '  A.DATA,'
      '  A.QUANTIDADE_LITROS,'
      '  A.VALOR,'
      '  A.VALOR_IMPOSTO,'
      '  A.APAGADO'
      'FROM'
      '  ABASTECIMENTOS A'
      'INNER JOIN'
      '  BOMBAS B ON B.CODIGO = A.CODIGO_BOMBA'
      'INNER JOIN'
      '  TANQUES T ON T.CODIGO = B.CODIGO_TANQUE'
      'INNER JOIN'
      '  POSTOS P ON P.CODIGO = T.CODIGO_POSTO'
      'WHERE'
      '  A.APAGADO = '#39'F'#39
      'ORDER BY'
      '  P.NOME_FANTASIA,'
      '  B.DESCRICAO,'
      '  T.DESCRICAO,'
      '  A.DATA')
    object qryDadosPOSTO: TStringField
      FieldName = 'POSTO'
      Origin = 'POSTO'
      Required = True
      Size = 50
    end
    object qryDadosBOMBA: TStringField
      FieldName = 'BOMBA'
      Origin = 'BOMBA'
      Size = 50
    end
    object qryDadosTANQUE: TStringField
      DisplayWidth = 50
      FieldName = 'TANQUE'
      Origin = 'TANQUE'
      Required = True
      Size = 255
    end
    object qryDadosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryDadosQUANTIDADE_LITROS: TIntegerField
      FieldName = 'QUANTIDADE_LITROS'
      Origin = 'QUANTIDADE_LITROS'
    end
    object qryDadosVALOR: TSingleField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object qryDadosVALOR_IMPOSTO: TSingleField
      FieldName = 'VALOR_IMPOSTO'
      Origin = 'VALOR IMPOSTO'
    end
    object qryDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qryDadosAPAGADO: TStringField
      FieldName = 'APAGADO'
      Origin = 'APAGADO'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
end
