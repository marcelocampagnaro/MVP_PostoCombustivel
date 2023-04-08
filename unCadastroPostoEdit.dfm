inherited frmCadastroPostoEdita: TfrmCadastroPostoEdita
  Caption = 'Postos'
  ClientHeight = 320
  ClientWidth = 509
  ExplicitWidth = 515
  ExplicitHeight = 349
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 60
    Height = 13
    Caption = 'Raz'#227'o Social'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 48
    Width = 71
    Height = 13
    Caption = 'Nome Fantasia'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 88
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 128
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 9
    Top = 169
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 208
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit6
  end
  inherited Panel1: TPanel
    Top = 269
    Width = 509
    ExplicitTop = 269
    ExplicitWidth = 509
    inherited btSalvar: TBitBtn
      Left = 296
      Align = alCustom
      ExplicitLeft = 296
    end
    inherited btCancelar: TBitBtn
      Left = 393
      ExplicitLeft = 393
    end
  end
  object DBEdit1: TDBEdit [7]
    Left = 8
    Top = 21
    Width = 489
    Height = 21
    DataField = 'RAZAO_SOCIAL'
    DataSource = dsEdicao
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [8]
    Left = 8
    Top = 61
    Width = 489
    Height = 21
    DataField = 'NOME_FANTASIA'
    DataSource = dsEdicao
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [9]
    Left = 8
    Top = 101
    Width = 489
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsEdicao
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [10]
    Left = 8
    Top = 144
    Width = 134
    Height = 21
    DataField = 'NUMERO'
    DataSource = dsEdicao
    TabOrder = 4
  end
  object DBEdit5: TDBEdit [11]
    Left = 8
    Top = 181
    Width = 489
    Height = 21
    DataField = 'CIDADE'
    DataSource = dsEdicao
    TabOrder = 5
  end
  object DBEdit6: TDBEdit [12]
    Left = 8
    Top = 224
    Width = 30
    Height = 21
    DataField = 'UF'
    DataSource = dsEdicao
    TabOrder = 6
  end
  inherited qryEdit: TFDQuery
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
      '  P.APAGADO = '#39'F'#39
      'AND'
      '  P.CODIGO = :CODIGO')
    Left = 360
    Top = 88
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object qryEditCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qryEditRAZAO_SOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 255
    end
    object qryEditNOME_FANTASIA: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Required = True
      Size = 255
    end
    object qryEditENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object qryEditNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryEditCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 255
    end
    object qryEditUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
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
