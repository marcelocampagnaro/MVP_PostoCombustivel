inherited frmBombasEdita: TfrmBombasEdita
  Caption = 'Bombas'
  ClientHeight = 155
  ClientWidth = 391
  ExplicitWidth = 397
  ExplicitHeight = 184
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
  object Label3: TLabel [1]
    Left = 8
    Top = 53
    Width = 36
    Height = 13
    Caption = 'Tanque'
  end
  inherited Panel1: TPanel
    Top = 104
    Width = 391
    ExplicitTop = 104
    ExplicitWidth = 391
    inherited btSalvar: TBitBtn
      Left = 178
      ExplicitLeft = 178
    end
    inherited btCancelar: TBitBtn
      Left = 281
      ExplicitLeft = 281
    end
  end
  object DBEdit1: TDBEdit [3]
    Left = 8
    Top = 21
    Width = 375
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dsEdicao
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox [4]
    Left = 8
    Top = 72
    Width = 145
    Height = 21
    DataField = 'CODIGO_TANQUE'
    DataSource = dsEdicao
    KeyField = 'CODIGO'
    ListField = 'DESCRICAO'
    ListSource = dsTanque
    TabOrder = 2
  end
  inherited dsEdicao: TDataSource
    Left = 272
    Top = 17
  end
  inherited qryEdit: TFDQuery
    SQL.Strings = (
      'SELECT'
      '  B.CODIGO,'
      '  B.DESCRICAO,'
      '  B.CODIGO_TANQUE,'
      '  B.APAGADO'
      'FROM'
      '  BOMBAS B'
      'WHERE'
      '  B.APAGADO = '#39'F'#39
      'AND'
      '  B.CODIGO = :CODIGO')
    Left = 200
    Top = 16
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
    object qryEditCODIGO_TANQUE: TIntegerField
      DisplayLabel = 'Tanque'
      FieldName = 'CODIGO_TANQUE'
      Origin = 'CODIGO_TANQUE'
      Required = True
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
  object dsTanque: TDataSource
    DataSet = qryTanque
    Left = 272
    Top = 64
  end
  object qryTanque: TFDQuery
    Connection = dmPrincipal.fdConnection
    SQL.Strings = (
      'SELECT'
      '  T.CODIGO,'
      '  T.DESCRICAO'
      'FROM '
      '  TANQUES T'
      'WHERE'
      '  T.APAGADO = '#39'F'#39)
    Left = 200
    Top = 64
    object qryTanqueCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTanqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 255
    end
  end
end
