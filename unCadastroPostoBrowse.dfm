inherited frmCadastroPosto: TfrmCadastroPosto
  Caption = 'Cadastro de Postos de Combust'#237'veis'
  ClientHeight = 595
  ClientWidth = 867
  ExplicitWidth = 873
  ExplicitHeight = 624
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 867
    Height = 466
    ExplicitWidth = 867
    ExplicitHeight = 466
    inherited DBGrid1: TDBGrid
      Width = 865
      Height = 464
      DrawingStyle = gdsGradient
    end
    inherited rlrReport: TRLReport
      inherited rlbTituloColuna: TRLBand
        AlignToBottom = True
        object RLLabel2: TRLLabel
          Left = 3
          Top = 18
          Width = 80
          Height = 17
          Caption = 'Raz'#227'o Social'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 361
          Top = 18
          Width = 61
          Height = 17
          Caption = 'Endere'#231'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 207
          Top = 18
          Width = 94
          Height = 17
          Caption = 'Nome Fantasia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 512
          Top = 18
          Width = 23
          Height = 17
          Caption = 'NR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 568
          Top = 18
          Width = 46
          Height = 17
          Caption = 'Cidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 684
          Top = 18
          Width = 20
          Height = 17
          Caption = 'UF'
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
          Width = 98
          Height = 17
          DataField = 'RAZAO_SOCIAL'
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
          Left = 207
          Top = 6
          Width = 110
          Height = 17
          DataField = 'NOME_FANTASIA'
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
          Left = 361
          Top = 6
          Width = 71
          Height = 17
          DataField = 'ENDERECO'
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
          Left = 512
          Top = 6
          Width = 61
          Height = 17
          DataField = 'NUMERO'
          DataSource = dsLista
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 568
          Top = 6
          Width = 51
          Height = 17
          DataField = 'CIDADE'
          DataSource = dsLista
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 681
          Top = 6
          Width = 20
          Height = 17
          DataField = 'UF'
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
    Width = 867
    ExplicitWidth = 867
    inherited btNovo: TBitBtn
      Font.Name = '@Malgun Gothic'
    end
    inherited btApagar: TBitBtn
      Font.Name = '@Malgun Gothic'
    end
    inherited btEditar: TBitBtn
      Font.Name = '@Malgun Gothic'
    end
    inherited btImprimir: TBitBtn
      Width = 128
      Font.Name = '@Malgun Gothic'
      ExplicitLeft = 417
      ExplicitTop = 1
      ExplicitWidth = 128
    end
    inherited btFiltar: TBitBtn
      Font.Name = '@Malgun Gothic'
    end
  end
  inherited pnlMensagem: TPanel
    Top = 571
    Width = 867
    ExplicitTop = 571
    ExplicitWidth = 867
  end
  inherited pnlFiltro: TPanel
    Width = 867
    ExplicitWidth = 867
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
    Left = 576
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
