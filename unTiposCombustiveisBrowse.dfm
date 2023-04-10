inherited frmTiposCombustiveis: TfrmTiposCombustiveis
  Caption = 'Cadastro de Tipos de Combust'#237'veis'
  ClientHeight = 502
  ClientWidth = 900
  ExplicitWidth = 906
  ExplicitHeight = 531
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 900
    Height = 373
    ExplicitWidth = 900
    ExplicitHeight = 373
    inherited DBGrid1: TDBGrid
      Width = 898
      Height = 371
    end
    inherited rlrReport: TRLReport
      inherited rlbTituloColuna: TRLBand
        object RLLabel2: TRLLabel
          Left = 3
          Top = 21
          Width = 62
          Height = 17
          Caption = 'Descri'#231#227'o'
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
        Height = 32
        ExplicitHeight = 32
        object RLDBText1: TRLDBText
          Left = 3
          Top = 6
          Width = 62
          Height = 16
          DataField = 'DESCRICAO'
          DataSource = dsLista
          Text = ''
        end
      end
      inherited rlbRodape: TRLBand
        Top = 177
        ExplicitTop = 177
      end
    end
  end
  inherited Panel5: TPanel
    Width = 900
    ExplicitWidth = 900
    inherited btImprimir: TBitBtn
      ExplicitLeft = 417
      ExplicitTop = 1
    end
  end
  inherited pnlMensagem: TPanel
    Top = 478
    Width = 900
    ExplicitTop = 478
    ExplicitWidth = 900
  end
  inherited pnlFiltro: TPanel
    Width = 900
    ExplicitWidth = 900
  end
  inherited qryDados: TFDQuery
    SQL.Strings = (
      'SELECT'
      '  TP.CODIGO,'
      '  TP.DESCRICAO,'
      '  TP.APAGADO'
      'FROM'
      '  TIPOS_COMBUSTIVEIS TP'
      'WHERE'
      '  APAGADO = '#39'F'#39)
    object qryDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qryDadosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 84
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
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
