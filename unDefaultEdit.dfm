object frmDefaultEdit: TfrmDefaultEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmDefaultEdit'
  ClientHeight = 309
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 258
    Width = 645
    Height = 51
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      645
      51)
    object btSalvar: TBitBtn
      Left = 432
      Top = 8
      Width = 81
      Height = 33
      Anchors = [akTop, akRight]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btSalvarClick
    end
    object btCancelar: TBitBtn
      Left = 535
      Top = 8
      Width = 82
      Height = 33
      Anchors = [akTop, akRight]
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object dsEdicao: TDataSource
    DataSet = qryEdit
    Left = 448
    Top = 89
  end
  object qryEdit: TFDQuery
    Connection = dmPrincipal.fdConnection
    Left = 344
    Top = 96
  end
end
