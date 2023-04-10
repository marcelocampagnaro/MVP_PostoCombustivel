inherited frmTanquesEdita: TfrmTanquesEdita
  Caption = 'Tanques'
  ClientHeight = 313
  ClientWidth = 570
  ExplicitWidth = 576
  ExplicitHeight = 342
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 8
    Top = 8
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [1]
    Left = 8
    Top = 148
    Width = 100
    Height = 13
    Caption = 'Valor do Combust'#237'vel'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [2]
    Left = 8
    Top = 51
    Width = 96
    Height = 13
    Caption = 'Tipo do Combust'#237'vel'
    FocusControl = DBEdit3
  end
  object Label6: TLabel [3]
    Left = 8
    Top = 98
    Width = 27
    Height = 13
    Caption = 'Posto'
    FocusControl = DBEdit3
  end
  object Label1: TLabel [4]
    Left = 8
    Top = 191
    Width = 81
    Height = 13
    Caption = 'Valor do Imposto'
    FocusControl = DBEdit1
  end
  inherited Panel1: TPanel
    Top = 262
    Width = 570
    ExplicitTop = 262
    ExplicitWidth = 570
    inherited btSalvar: TBitBtn
      Left = 357
      ExplicitLeft = 357
    end
    inherited btCancelar: TBitBtn
      Left = 460
      ExplicitLeft = 460
    end
  end
  object DBEdit3: TDBEdit [6]
    Left = 8
    Top = 22
    Width = 553
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dsEdicao
    TabOrder = 1
  end
  object DBEdit4: TDBEdit [7]
    Left = 8
    Top = 164
    Width = 134
    Height = 21
    DataField = 'VALOR_COMBUSTIVEL'
    DataSource = dsEdicao
    TabOrder = 4
  end
  object cbTipoCombustivel: TDBLookupComboBox [8]
    Left = 8
    Top = 70
    Width = 249
    Height = 21
    DataField = 'CODIGO_TIPO_COMBUSTIVEL'
    DataSource = dsEdicao
    KeyField = 'CODIGO'
    ListField = 'DESCRICAO'
    ListSource = dsTipoCombustivel
    TabOrder = 2
  end
  object cbPosto: TDBLookupComboBox [9]
    Left = 8
    Top = 117
    Width = 249
    Height = 21
    DataField = 'CODIGO_POSTO'
    DataSource = dsEdicao
    KeyField = 'CODIGO'
    ListField = 'NOME_FANTASIA'
    ListSource = dsPosto
    TabOrder = 3
  end
  object DBEdit1: TDBEdit [10]
    Left = 8
    Top = 207
    Width = 134
    Height = 21
    DataField = 'VALOR_IMPOSTO'
    DataSource = dsEdicao
    TabOrder = 5
  end
  inherited dsEdicao: TDataSource
    Left = 392
    Top = 57
  end
  inherited qryEdit: TFDQuery
    SQL.Strings = (
      'SELECT'
      '  T.CODIGO,'
      '  T.CODIGO_TIPO_COMBUSTIVEL,'
      '  T.CODIGO_POSTO,'
      '  T.DESCRICAO,'
      '  T.VALOR_COMBUSTIVEL,'
      '  T.VALOR_IMPOSTO,'
      '  T.APAGADO'
      'FROM'
      '  TANQUES T'
      'WHERE'
      '  T.APAGADO = '#39'F'#39
      'AND'
      '  T.CODIGO = :CODIGO')
    Left = 288
    Top = 56
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryEditCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qryEditCODIGO_TIPO_COMBUSTIVEL: TIntegerField
      DisplayLabel = 'Tipo do Combust'#237'vel'
      FieldName = 'CODIGO_TIPO_COMBUSTIVEL'
      Origin = 'CODIGO_TIPO_COMBUSTIVEL'
      Required = True
    end
    object qryEditCODIGO_POSTO: TIntegerField
      DisplayLabel = 'Posto'
      FieldName = 'CODIGO_POSTO'
      Origin = 'CODIGO_POSTO'
      Required = True
    end
    object qryEditDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 255
    end
    object qryEditVALOR_COMBUSTIVEL: TSingleField
      DisplayLabel = 'Valor do Combust'#237'vel'
      FieldName = 'VALOR_COMBUSTIVEL'
      Origin = 'VALOR_COMBUSTIVEL'
      Required = True
      DisplayFormat = '###,###,##0.00'
    end
    object qryEditAPAGADO: TStringField
      FieldName = 'APAGADO'
      Origin = 'APAGADO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qryEditVALOR_IMPOSTO: TSingleField
      DisplayLabel = 'Valor do Imposto'
      FieldName = 'VALOR_IMPOSTO'
      Origin = 'VALOR_IMPOSTO'
      Required = True
    end
  end
  object qryTipoCombustivel: TFDQuery
    Filtered = True
    Connection = dmPrincipal.fdConnection
    SQL.Strings = (
      'SELECT'
      '  TP.CODIGO,'
      '  TP.DESCRICAO'
      'FROM'
      '  TIPOS_COMBUSTIVEIS TP'
      'WHERE'
      '  TP.APAGADO = '#39'F'#39)
    Left = 288
    Top = 168
    object qryTipoCombustivelCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTipoCombustivelDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 255
    end
  end
  object dsTipoCombustivel: TDataSource
    DataSet = qryTipoCombustivel
    Left = 392
    Top = 168
  end
  object qryPosto: TFDQuery
    Connection = dmPrincipal.fdConnection
    SQL.Strings = (
      'SELECT'
      '  P.CODIGO,'
      '  P.NOME_FANTASIA'
      'FROM'
      '  POSTOS P'
      'WHERE'
      '  P.APAGADO = '#39'F'#39)
    Left = 288
    Top = 112
    object qryPostoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPostoNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Required = True
      Size = 255
    end
  end
  object dsPosto: TDataSource
    DataSet = qryPosto
    Left = 392
    Top = 112
  end
end
