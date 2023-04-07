inherited frmTiposCombustiveisEdita: TfrmTiposCombustiveisEdita
  Caption = 'Tipos de Combust'#237'veis'
  ClientHeight = 107
  ClientWidth = 432
  ExplicitWidth = 438
  ExplicitHeight = 136
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit1
  end
  inherited Panel1: TPanel
    Top = 56
    Width = 432
    ExplicitTop = 56
    ExplicitWidth = 432
    inherited btSalvar: TBitBtn
      Left = 219
      ExplicitLeft = 219
    end
    inherited btCancelar: TBitBtn
      Left = 322
      ExplicitLeft = 322
    end
  end
  object DBEdit1: TDBEdit [2]
    Left = 8
    Top = 23
    Width = 415
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dsEdicao
    TabOrder = 1
  end
  inherited dsEdicao: TDataSource
    Left = 80
    Top = 57
  end
  inherited qryEdit: TFDQuery
    SQL.Strings = (
      'SELECT'
      '  TP.CODIGO,'
      '  TP.DESCRICAO,'
      '  TP.APAGADO'
      'FROM'
      '  TIPOS_COMBUSTIVEIS TP'
      'WHERE'
      '  TP.APAGADO = '#39'F'#39
      'AND'
      '  TP.CODIGO = :CODIGO')
    Left = 40
    Top = 56
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryEditCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qryEditDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 255
    end
    object qryEditAPAGADO: TStringField
      FieldName = 'APAGADO'
      Origin = 'APAGADO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
end
