inherited frmBomba: TfrmBomba
  Caption = 'Cadastro de Bombas'
  ClientWidth = 954
  ExplicitWidth = 960
  ExplicitHeight = 615
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 954
    ExplicitWidth = 954
    inherited DBGrid1: TDBGrid
      Width = 952
    end
    inherited rlrReport: TRLReport
      Top = 40
      ExplicitTop = 40
      inherited rlbTituloColuna: TRLBand
        AlignToBottom = True
        object RLLabel3: TRLLabel
          Left = 3
          Top = 17
          Width = 62
          Height = 17
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 267
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
        end
        object RLLabel4: TRLLabel
          Left = 523
          Top = 17
          Width = 38
          Height = 17
          Caption = 'Posto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
        end
      end
      inherited rlbValores: TRLBand
        Height = 26
        ExplicitHeight = 26
        object RLDBText1: TRLDBText
          Left = 3
          Top = 6
          Width = 75
          Height = 17
          DataField = 'DESCRICAO'
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
          Left = 267
          Top = 6
          Width = 57
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
        object RLDBText3: TRLDBText
          Left = 523
          Top = 6
          Width = 46
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
      end
      inherited rlbRodape: TRLBand
        Top = 171
        ExplicitTop = 171
      end
    end
  end
  inherited Panel5: TPanel
    Width = 954
    ExplicitWidth = 954
    inherited btImprimir: TBitBtn
      ExplicitLeft = 417
      ExplicitTop = 1
    end
  end
  inherited pnlMensagem: TPanel
    Width = 954
    ExplicitWidth = 954
  end
  inherited pnlFiltro: TPanel
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
