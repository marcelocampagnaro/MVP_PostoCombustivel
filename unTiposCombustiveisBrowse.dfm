inherited frmTiposCombustiveis: TfrmTiposCombustiveis
  Caption = 'Cadastro de Tipos de Combust'#237'veis'
  ClientHeight = 502
  ClientWidth = 549
  ExplicitWidth = 555
  ExplicitHeight = 531
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 549
    Height = 421
    ExplicitWidth = 549
    ExplicitHeight = 421
    inherited DBGrid1: TDBGrid
      Width = 547
      Height = 419
    end
  end
  inherited Panel5: TPanel
    Width = 549
    ExplicitWidth = 549
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
    Top = 478
    Width = 549
    ExplicitTop = 478
    ExplicitWidth = 549
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
