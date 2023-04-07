inherited frmCadastroPosto: TfrmCadastroPosto
  Caption = 'Cadastro de Postos de Combust'#237'veis'
  ClientHeight = 595
  ClientWidth = 857
  ExplicitWidth = 863
  ExplicitHeight = 624
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 857
    Height = 466
    ExplicitWidth = 857
    ExplicitHeight = 466
    inherited DBGrid1: TDBGrid
      Width = 855
      Height = 464
      DrawingStyle = gdsGradient
    end
  end
  inherited Panel5: TPanel
    Width = 857
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 857
    inherited btNovo: TBitBtn
      Font.Name = '@Malgun Gothic'
    end
    inherited btApagar: TBitBtn
      Font.Name = '@Malgun Gothic'
      ExplicitTop = 6
    end
    inherited btEditar: TBitBtn
      Font.Name = '@Malgun Gothic'
    end
    inherited btImprimir: TBitBtn
      Width = 128
      Font.Name = '@Malgun Gothic'
      ExplicitWidth = 128
    end
    inherited btFiltar: TBitBtn
      Font.Name = '@Malgun Gothic'
    end
  end
  inherited pnlMensagem: TPanel
    Top = 571
    Width = 857
    ExplicitTop = 571
    ExplicitWidth = 857
  end
  inherited pnlFiltro: TPanel
    Width = 857
    ExplicitWidth = 857
  end
  inherited qryDados: TFDQuery
    SQL.Strings = (
      'SELECT'
      '  P.CODIGO,'
      '  P.RAZAO_SOCIAL,'
      '  P.NOME_FANTASIA,'
      '  P.ENDERECO,'
      '  P.NUMERO,'
      '  P.CIDADE,'
      '  P.UF,'
      '  P.APAGADO'
      'FROM'
      '  POSTOS P'
      'WHERE'
      '  P.APAGADO = '#39'F'#39)
    object qryDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qryDadosRAZAO_SOCIAL: TStringField
      DisplayLabel = 'RAZ'#195'O SOCIAL'
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 30
    end
    object qryDadosNOME_FANTASIA: TStringField
      DisplayLabel = 'NOME FANTASIA'
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 30
    end
    object qryDadosENDERECO: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 30
    end
    object qryDadosNUMERO: TIntegerField
      DisplayLabel = 'N'#218'MERO'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryDadosCIDADE: TStringField
      DisplayWidth = 30
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 255
    end
    object qryDadosUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
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
