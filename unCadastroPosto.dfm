inherited frmCadastroPosto: TfrmCadastroPosto
  Caption = 'Cadastro de Postos de Combust'#237'veis'
  ClientHeight = 595
  ClientWidth = 857
  Position = poMainFormCenter
  OnShow = FormShow
  ExplicitWidth = 863
  ExplicitHeight = 624
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 857
    Height = 514
    inherited DBGrid1: TDBGrid
      Width = 855
      Height = 512
      DrawingStyle = gdsGradient
      ReadOnly = True
    end
  end
  inherited Panel5: TPanel
    Width = 857
    ExplicitWidth = 857
  end
  inherited pnlMensagem: TPanel
    Top = 571
    Width = 857
  end
  inherited qryDados: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT'
      '  P.CODIGO,'
      '  P.RAZAO_SOCIAL,'
      '  P.NOME_FANTASIA,'
      '  P.ENDERECO,'
      '  P.NUMERO,'
      '  P.CIDADE,'
      '  P.UF'
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
  end
end
