inherited frmTanques: TfrmTanques
  Caption = 'Cadastro de Tanques'
  ClientWidth = 943
  ExplicitWidth = 949
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 943
    ExplicitWidth = 943
    inherited DBGrid1: TDBGrid
      Width = 941
    end
    inherited rlrReport: TRLReport
      inherited rlbTituloColuna: TRLBand
        object RLLabel2: TRLLabel
          Left = 5
          Top = 18
          Width = 38
          Height = 17
          Caption = 'Posto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 139
          Top = 17
          Width = 128
          Height = 17
          Caption = 'Tipo de Combust'#237'vel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 499
          Top = 18
          Width = 134
          Height = 17
          Caption = 'Valor do Combust'#237'vel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 649
          Top = 18
          Width = 70
          Height = 17
          Caption = 'Imposto %'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 347
          Top = 17
          Width = 50
          Height = 17
          Caption = 'Tanque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
      inherited rlbValores: TRLBand
        Height = 26
        ExplicitHeight = 26
        object RLDBText1: TRLDBText
          Left = 3
          Top = 6
          Width = 38
          Height = 17
          DataField = 'POSTO'
          DataSource = dsLista
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 139
          Top = 6
          Width = 128
          Height = 17
          DataField = 'TIPO_COMBUSTIVEL'
          DataSource = dsLista
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 347
          Top = 6
          Width = 50
          Height = 17
          DataField = 'TANQUE'
          DataSource = dsLista
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 499
          Top = 6
          Width = 134
          Height = 17
          DataField = 'VALOR_COMBUSTIVEL'
          DataSource = dsLista
          DisplayMask = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 649
          Top = 6
          Width = 70
          Height = 17
          DataField = 'VALOR_IMPOSTO'
          DataSource = dsLista
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      inherited rlbRodape: TRLBand
        Top = 171
        ExplicitTop = 171
      end
    end
  end
  inherited Panel5: TPanel
    Width = 943
    ExplicitWidth = 943
  end
  inherited pnlMensagem: TPanel
    Width = 943
    ExplicitWidth = 943
  end
  inherited pnlFiltro: TPanel
    Width = 943
    ExplicitWidth = 943
  end
  inherited qryDados: TFDQuery
    SQL.Strings = (
      'SELECT'
      '  T.CODIGO,'
      '  P.NOME_FANTASIA AS POSTO,'
      '  TP.DESCRICAO AS TIPO_COMBUSTIVEL,'
      '  T.DESCRICAO AS TANQUE,'
      '  T.VALOR_COMBUSTIVEL,'
      '  T.VALOR_IMPOSTO,'
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
      DisplayLabel = 'Posto'
      DisplayWidth = 50
      FieldName = 'POSTO'
      Origin = 'NOME_FANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object qryDadosTIPO_COMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo de Combust'#237'vel'
      DisplayWidth = 30
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object qryDadosTANQUE: TStringField
      DisplayLabel = 'Tanque'
      DisplayWidth = 40
      FieldName = 'TANQUE'
      Origin = 'DESCRICAO'
      Required = True
      Size = 255
    end
    object qryDadosVALOR_COMBUSTIVEL: TSingleField
      DisplayLabel = 'Valor do Combust'#237'vel'
      FieldName = 'VALOR_COMBUSTIVEL'
      Origin = 'VALOR_COMBUSTIVEL'
      Required = True
      DisplayFormat = '###,###,##0.00'
    end
    object qryDadosVALOR_IMPOSTO: TSingleField
      DisplayLabel = 'Imposto %'
      FieldName = 'VALOR_IMPOSTO'
      Origin = 'VALOR_IMPOSTO'
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
