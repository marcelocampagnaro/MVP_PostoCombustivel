inherited frmAbastecimentos: TfrmAbastecimentos
  Caption = 'Abastecimentos'
  ClientWidth = 1245
  ExplicitWidth = 1251
  ExplicitHeight = 615
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1245
    ExplicitWidth = 1245
    inherited DBGrid1: TDBGrid
      Width = 1243
    end
    inherited rlrReport: TRLReport
      inherited rlbTituloColuna: TRLBand
        object RLLabel3: TRLLabel
          Left = 3
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
        object RLLabel2: TRLLabel
          Left = 131
          Top = 18
          Width = 47
          Height = 17
          Caption = 'Bomba'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 243
          Top = 18
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
        object RLLabel5: TRLLabel
          Left = 355
          Top = 17
          Width = 32
          Height = 17
          Caption = 'Data'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 451
          Top = 17
          Width = 71
          Height = 17
          Caption = 'Qtde Litros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 541
          Top = 17
          Width = 36
          Height = 17
          Caption = 'Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 595
          Top = 17
          Width = 120
          Height = 17
          Caption = 'Valor com Imposto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
        end
      end
      inherited rlbValores: TRLBand
        AlignWithMargins = True
        Height = 24
        ExplicitHeight = 24
        object RLDBText1: TRLDBText
          Left = 3
          Top = 6
          Width = 38
          Height = 16
          DataField = 'POSTO'
          DataSource = dsLista
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 131
          Top = 2
          Width = 45
          Height = 16
          DataField = 'BOMBA'
          DataSource = dsLista
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 247
          Top = 3
          Width = 46
          Height = 16
          DataField = 'TANQUE'
          DataSource = dsLista
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 355
          Top = 3
          Width = 31
          Height = 16
          DataField = 'DATA'
          DataSource = dsLista
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 451
          Top = 3
          Width = 68
          Height = 16
          DataField = 'QUANTIDADE_LITROS'
          DataSource = dsLista
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 543
          Top = 2
          Width = 34
          Height = 16
          DataField = 'VALOR'
          DataSource = dsLista
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 595
          Top = 2
          Width = 113
          Height = 16
          DataField = 'VALOR_IMPOSTO'
          DataSource = dsLista
          Text = ''
        end
      end
      inherited rlbRodape: TRLBand
        Top = 209
        ExplicitTop = 209
      end
      object rlbTotais: TRLBand
        Left = 38
        Top = 169
        Width = 718
        Height = 40
        BandType = btFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBResult1: TRLDBResult
          Left = 97
          Top = 18
          Width = 107
          Height = 16
          DataField = 'QUANTIDADE_LITROS'
          DataSource = dsLista
          Info = riSum
          Text = ''
        end
        object RLLabel9: TRLLabel
          Left = 5
          Top = 17
          Width = 94
          Height = 17
          Caption = 'Total de Litros:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 247
          Top = 17
          Width = 73
          Height = 17
          Caption = 'Valor Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 414
          Top = 17
          Width = 163
          Height = 17
          Caption = 'Valor Total com Impostos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 326
          Top = 18
          Width = 73
          Height = 16
          ComputeNulls = False
          DataField = 'VALOR'
          DataSource = dsLista
          DisplayMask = '###,###,##0.00'
          Info = riSum
          Text = ''
        end
        object RLDBResult3: TRLDBResult
          Left = 575
          Top = 18
          Width = 152
          Height = 16
          DataField = 'VALOR_IMPOSTO'
          DataSource = dsLista
          DisplayMask = '###,###,##0.00'
          Info = riSum
          Text = ''
        end
      end
    end
  end
  inherited Panel5: TPanel
    Width = 1245
    ExplicitWidth = 1245
  end
  inherited pnlMensagem: TPanel
    Width = 1245
    ExplicitWidth = 1245
  end
  inherited pnlFiltro: TPanel
    Width = 1245
    ExplicitWidth = 1245
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
      DisplayLabel = 'Posto'
      FieldName = 'POSTO'
      Origin = 'POSTO'
      Required = True
      Size = 50
    end
    object qryDadosBOMBA: TStringField
      DisplayLabel = 'Bomba'
      FieldName = 'BOMBA'
      Origin = 'BOMBA'
      Size = 50
    end
    object qryDadosTANQUE: TStringField
      DisplayLabel = 'Tanque'
      DisplayWidth = 50
      FieldName = 'TANQUE'
      Origin = 'TANQUE'
      Required = True
      Size = 255
    end
    object qryDadosDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryDadosQUANTIDADE_LITROS: TIntegerField
      DisplayLabel = 'Qtde Litros'
      FieldName = 'QUANTIDADE_LITROS'
      Origin = 'QUANTIDADE_LITROS'
    end
    object qryDadosVALOR: TSingleField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qryDadosVALOR_IMPOSTO: TSingleField
      DisplayLabel = 'Valor com Imposto'
      FieldName = 'VALOR_IMPOSTO'
      Origin = 'VALOR IMPOSTO'
      DisplayFormat = '###,###,##0.00'
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
