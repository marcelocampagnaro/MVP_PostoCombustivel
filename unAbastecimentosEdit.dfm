inherited frmAbastecimentosEdita: TfrmAbastecimentosEdita
  Caption = 'Abastecimentos'
  ClientHeight = 272
  ClientWidth = 217
  ExplicitWidth = 223
  ExplicitHeight = 301
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 45
    Width = 23
    Height = 13
    Caption = 'Data'
    FocusControl = DBEData
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 85
    Width = 100
    Height = 13
    Caption = 'Quantidade de Litros'
    FocusControl = DBEQtdeLitos
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Bomba'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 128
    Width = 24
    Height = 13
    Caption = 'Valor'
    FocusControl = DBEValor
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 171
    Width = 88
    Height = 13
    Caption = 'Valor com Imposto'
    FocusControl = DBEImposto
  end
  inherited Panel1: TPanel
    Top = 221
    Width = 217
    ExplicitTop = 221
    ExplicitWidth = 217
    inherited btSalvar: TBitBtn
      Left = 4
      ExplicitLeft = 4
    end
    inherited btCancelar: TBitBtn
      Left = 107
      ExplicitLeft = 107
    end
  end
  object DBEData: TDBEdit [6]
    Left = 8
    Top = 58
    Width = 134
    Height = 21
    DataField = 'DATA'
    DataSource = dsEdicao
    TabOrder = 2
  end
  object DBEQtdeLitos: TDBEdit [7]
    Left = 8
    Top = 101
    Width = 134
    Height = 21
    DataField = 'QUANTIDADE_LITROS'
    DataSource = dsEdicao
    TabOrder = 3
    OnExit = DBEQtdeLitosExit
  end
  object DBEValor: TDBEdit [8]
    Left = 8
    Top = 147
    Width = 134
    Height = 21
    DataField = 'VALOR'
    DataSource = dsEdicao
    Enabled = False
    TabOrder = 4
  end
  object DBEImposto: TDBEdit [9]
    Left = 8
    Top = 187
    Width = 134
    Height = 21
    DataField = 'VALOR_IMPOSTO'
    DataSource = dsEdicao
    Enabled = False
    TabOrder = 5
  end
  object cbBomba: TDBLookupComboBox [10]
    Left = 8
    Top = 21
    Width = 201
    Height = 21
    DataField = 'CODIGO_BOMBA'
    DataSource = dsEdicao
    KeyField = 'CODIGO'
    ListField = 'DESCRICAO'
    ListSource = dsBomba
    TabOrder = 1
    OnClick = cbBombaClick
  end
  inherited dsEdicao: TDataSource
    Left = 152
    Top = 1
  end
  inherited qryEdit: TFDQuery
    SQL.Strings = (
      'SELECT'
      '  A.CODIGO,'
      '  A.DATA,'
      '  A.QUANTIDADE_LITROS,'
      '  A.CODIGO_BOMBA,'
      '  A.VALOR,'
      '  A.VALOR_IMPOSTO,'
      '  T.VALOR_IMPOSTO AS IMPOSTO_PERCENT,'
      '  A.APAGADO'
      'FROM'
      '  ABASTECIMENTOS A'
      'INNER JOIN'
      '  BOMBAS B ON B.CODIGO = A.CODIGO_BOMBA'
      'INNER JOIN'
      '  TANQUES T ON T.CODIGO = B.CODIGO_TANQUE'
      'WHERE'
      '  A.APAGADO = '#39'F'#39
      'AND'
      '  A.CODIGO = :CODIGO')
    Left = 104
    Top = 8
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
    object qryEditDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object qryEditQUANTIDADE_LITROS: TIntegerField
      DisplayLabel = 'Quantidade de Litros'
      FieldName = 'QUANTIDADE_LITROS'
      Origin = 'QUANTIDADE_LITROS'
      Required = True
    end
    object qryEditCODIGO_BOMBA: TIntegerField
      DisplayLabel = 'Bomba'
      FieldName = 'CODIGO_BOMBA'
      Origin = 'CODIGO_BOMBA'
      Required = True
    end
    object qryEditVALOR: TSingleField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Visible = False
    end
    object qryEditVALOR_IMPOSTO: TSingleField
      DisplayLabel = 'Valor Imposto'
      FieldName = 'VALOR_IMPOSTO'
      Origin = 'VALOR_IMPOSTO'
      Visible = False
    end
    object qryEditAPAGADO: TStringField
      FieldName = 'APAGADO'
      Origin = 'APAGADO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qryEditIMPOSTO_PERCENT: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'IMPOSTO_PERCENT'
      Origin = 'VALOR_IMPOSTO'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
  end
  object dsBomba: TDataSource
    DataSet = qryBomba
    Left = 160
    Top = 64
  end
  object qryBomba: TFDQuery
    Connection = dmPrincipal.fdConnection
    SQL.Strings = (
      'SELECT'
      '  B.CODIGO,'
      '  B.DESCRICAO,'
      '  T.VALOR_COMBUSTIVEL,'
      '  T.VALOR_IMPOSTO'
      'FROM'
      '  BOMBAS B'
      'INNER JOIN'
      '  TANQUES T ON T.CODIGO = B.CODIGO_TANQUE'
      'WHERE'
      '  B.APAGADO = '#39'F'#39)
    Left = 104
    Top = 64
    object qryBombaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBombaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 255
    end
    object qryBombaVALOR_COMBUSTIVEL: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COMBUSTIVEL'
      Origin = 'VALOR_COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryBombaVALOR_IMPOSTO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_IMPOSTO'
      Origin = 'VALOR_IMPOSTO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
