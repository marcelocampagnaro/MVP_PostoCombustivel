object frmDefaultBrowse: TfrmDefaultBrowse
  Left = 0
  Top = 0
  Align = alCustom
  BorderStyle = bsDialog
  Caption = 'Default Browse Form'
  ClientHeight = 586
  ClientWidth = 842
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
    Top = 105
    Width = 842
    Height = 457
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 840
      Height = 455
      Align = alClient
      DataSource = dsLista
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object rlrReport: TRLReport
      Left = 8
      Top = 38
      Width = 794
      Height = 1123
      DataSource = dsLista
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Visible = False
      object rlbCabecalho: TRLBand
        Left = 38
        Top = 38
        Width = 718
        Height = 32
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLSystemInfo1: TRLSystemInfo
          Left = 3
          Top = 13
          Width = 40
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLSystemInfo2: TRLSystemInfo
          Left = 672
          Top = 13
          Width = 43
          Height = 17
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          Info = itHour
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLLabel1: TRLLabel
          Left = 163
          Top = 10
          Width = 414
          Height = 17
          Caption = 
            'Fortes Tecnologia - Sistema de Controle de Postos de Combust'#237'vei' +
            's'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand2rlbTitulo: TRLBand
        Left = 38
        Top = 70
        Width = 718
        Height = 35
        BandType = btTitle
        object rlTituloRelatorio: TRLLabel
          Left = 0
          Top = 0
          Width = 718
          Height = 35
          Align = faClient
          Alignment = taCenter
          Caption = 'T'#237'tulo Relat'#243'rio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Malgun Gothic'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object rlbTituloColuna: TRLBand
        Left = 38
        Top = 105
        Width = 718
        Height = 40
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
      end
      object rlbValores: TRLBand
        Left = 38
        Top = 145
        Width = 718
        Height = 120
      end
      object rlbRodape: TRLBand
        Left = 38
        Top = 265
        Width = 718
        Height = 24
        BandType = btFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLSystemInfo3: TRLSystemInfo
          Left = 579
          Top = 5
          Width = 136
          Height = 17
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
          Text = 'P'#225'gina '
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 842
    Height = 57
    Align = alTop
    TabOrder = 1
    object btNovo: TBitBtn
      Left = 1
      Top = 1
      Width = 104
      Height = 55
      Align = alLeft
      Caption = 'Novo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      Glyph.Data = {
        9A000000424D9A000000000000003E0000002800000016000000170000000100
        0100000000005C0000000000000000000000020000000000000000000000FFFF
        FF00E0000C00C00004009FFFF0009FFFF0009FFFF0009FFFF0009FFFF0009FFF
        F0009FFFF0009FFFF0009FFFF0009FFFF0009FFFF0009FFFF0009FFFF0009FFF
        F0009FFFF0009FFF00009FFF04009FFF0C009FFF1C00C0003C00E0007C00}
      ParentFont = False
      TabOrder = 0
      OnClick = btNovoClick
    end
    object btApagar: TBitBtn
      Left = 209
      Top = 1
      Width = 104
      Height = 55
      Align = alLeft
      Caption = 'Apagar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      Glyph.Data = {
        4E010000424D4E010000000000003E0000002800000021000000220000000100
        010000000000100100000000000000000000020000000000000000000000FFFF
        FF00F000000000000000E7FE7FFF00000000EFFF7FFF00000000EFFF7FFF0000
        0000EDDB7FFF00000000EDDB7FFF00000000EDDB7FFF00000000EDDB7FFF0000
        0000EDDB7FFF00000000EDDB7FFF00000000EDDB7FFF00000000EDDB7FFF8000
        0000EDDB7FFF80000000EDDB7FFF00000000EDDB7FFF80000000EDDB7FFF8000
        0000EFFF7FFF00000000EFFF7FFF00000000E0003FFF0000000080001FFF0000
        0000BFFFDFFF00000000BFFFDFFF0000000080001FFF00000000FBFCFFFF0000
        0000F9FDFFFF00000000FCF9FFFF00000000FE07FF8000000000FF7FFFBE0000
        0000FF7FFFBC80000000FF7FFFB980000000FF7FFFB380000000FF7FFFA78000
        0000FF7FFF8F80000000FF00001F80000000}
      ParentFont = False
      TabOrder = 2
      OnClick = btApagarClick
    end
    object btEditar: TBitBtn
      Left = 105
      Top = 1
      Width = 104
      Height = 55
      Align = alLeft
      Caption = 'Editar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      Glyph.Data = {
        5A030000424D5A03000000000000760000002800000021000000250000000100
        040000000000E402000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000FFFF0000000000000000
        0000000000FFF0000000FFFF07777777777777777777777770FFF0000000FFFF
        0FFFFFFFFFFFFFFFFFFFFFFFF0FFF0000000FFFF0FFFFFFFFFFFFFFFFFFFFFFF
        F0FFF0000000FFFF0FFFFFFFFFFFFFFFFFFFFFFFF0FFF0000000FFFF0FFFFFFF
        FFFFFFFFFFFFFFFFF0FFF0000000FFFF0FFFFFFFFFFFFFFFFFFFFFFFF0FFF000
        0000FFFF0FFFFFFFFFFFFFFFFFFFFFFFF0FFF0000000FFFF0FFFFFFFFFFFFFFF
        FFFFFFFFF0FFF0000000FFFF0FFFFFFFFFFFFFFFFFFFFFFFF0FFF0000000FFFF
        0FFFFFFFFFFFFFFFFFFFFFFFF0FFF0000000FFFF0FFFFFFFFFFFFFFFFFFFFFFF
        F0FFF0000000FFFF0FFFFFFFFFFFFFFFFFFFFFFFF0FFF0000000FFFF0FFFFFFF
        FFFFFFFFFFFFFFFFF0FFF0000000FFFF0FFFFFFFFFFFFFFFFFFFFFFFF0FFF000
        0000FFFF0FFFFFF0000FFFFFFFFFFFFFF0FFF0000000FFFF0FFFFFF070007FFF
        FFFFFFFFF0FFF0000000FFFF0FFFFFF00FF007FFFFFFFFFFF0FFF0000000FFFF
        0FFFFFF00FFF007FFFFFFFFFF0FFF0000000FFFF0FFFFFFF00FFF807FFFFFFFF
        F0FFF0000000FFFF0FFFFFFFF00FFF007FFFFFFFF0FFF0000000FFFF0FFFFFFF
        FF00FFF007FFFFFFF0FFF0000000FFFF0FFFFFFFFFF00FFF007FFFFFF0FFF000
        0000FFFF0FFFFFFFFFFF00FFF007FFFFF0FFF0000000FFFF0FFFFFFFFFFFF00F
        FF807FFFF0FFF0000000FFFF0FFFFFFFFFFFFF00FFF007FFF0FFF0000000FFFF
        0FFFFFFFFFFFFFF00FFF007FFFFFF0000000FFFF0FFFFFFFFFFFFFF800FFF007
        FFFFF0000000FFFF0FFFFFFFFFFFFFFFF00FF8007FFFF0000000FFFF0FFFFFFF
        FFFFFFFFFF00007807FFF0000000FFFF0000000000000000FFF000FF00FFF000
        0000FFFFFFFFFFFFFFFFFFFFFFFF00F00FFFF0000000FFFFFFFFFFFFFFFFFFFF
        FFFFF000FFFFF0000000FFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFF0000000}
      ParentFont = False
      TabOrder = 1
      OnClick = btEditarClick
    end
    object btImprimir: TBitBtn
      Left = 417
      Top = 1
      Width = 120
      Height = 55
      Align = alLeft
      Caption = 'Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      Glyph.Data = {
        32030000424D3203000000000000760000002800000022000000230000000100
        040000000000BC02000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF0000000000000F
        FFFFFF000FFFFF000000FFFFF00000000000000FFFFF0000000FFF000000FFFF
        F00FFFFFFFFFFFFFFFFF0000000FFF000000FFFFF00FFFFFFFFFFFFFFFF70000
        0000FF000000FFFFF00FFFFFFFFFFFFFFFF000000000FF000000FFFFF00FFFF7
        7FF7777FFFF800000000FF000000FFFFF00FFFF00FF0000FFFFF0000000FFF00
        0000FFFFF00FFFF00FF0000FFFFFF000000FFF000000FFFFF00FFFFFFFFFFFFF
        FFFFFF807FFFFF000000FFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        F00FFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFF00FFFF00FF00000000FFFFF
        FFFFFF000000FFFFF00FFFF00FF00000000FFFFFFFFFFF000000FFFFF00FFFFF
        FFFFFFFFFFFFFFF00FFFFF000000FFFFF00FFFFFFFFFFFFFFFFFFFF00FFFFF00
        0000FFFFF00FFFFFFFFFFFFFFFFFFFF00FFFFF000000FFFFF00FFFF00FF00000
        000FFFF00FFFFF000000FFFFF00FFFF00FF00000000FFFF00FFFFF000000FFFF
        F00FFFFFFFFFFFFFFFFFFFF00FFFFF000000FFFFF00FFFFFFFFFFFFFFFFFFFF0
        0FFFFF000000FFFFF00FFFFFFFFFFFFFFFFFFFF00FFFFF000000FFFFF00FFFF0
        00000000000FFFF00FFFFF000000FFFFF00FFFF000000000000FFFF00FFFFF00
        0000FFFFF00FFFF007777777700FFFF00FFFFF000000FFFFF008FFF00FFFFFFF
        F00FFF800FFFFF000000FFFFF70000000FFFFFFFF00000007FFFFF000000FFFF
        FF7000000FFFFFFFF0000007FFFFFF000000FFFFFFFFFFF00FFFFFFFF00FFFFF
        FFFFFF000000FFFFFFFFFFF000000000000FFFFFFFFFFF000000FFFFFFFFFFF7
        00000000007FFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      ParentFont = False
      TabOrder = 4
      OnClick = btImprimirClick
    end
    object btFiltar: TBitBtn
      Left = 313
      Top = 1
      Width = 104
      Height = 55
      Align = alLeft
      Caption = 'Filtrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      Glyph.Data = {
        B6000000424DB6000000000000003E000000280000001C0000001E0000000100
        010000000000780000000000000000000000020000000000000000000000FFFF
        FF00800000F03FFFFEF03FFFFE703FFFFE103FFF06D03FFC79C03FF9F9D03FF3
        87903FF67B303FE6FDB03FEDFDB03FEDFFB03FEDFDB03FEDFDB03FF6F9B03FF7
        23303FFBFE703FFCFC703FFE00703FFFFE703FFFFE703FFFFE703FFF00F03FFF
        7DF03FFF7BF03FFF77F03FFF6FF03FFF5FF03FFF3FF080007FF0}
      ParentFont = False
      TabOrder = 3
      OnClick = btFiltarClick
    end
  end
  object pnlMensagem: TPanel
    Left = 0
    Top = 562
    Width = 842
    Height = 24
    Align = alBottom
    Alignment = taLeftJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object pnlFiltro: TPanel
    Left = 0
    Top = 57
    Width = 842
    Height = 48
    Align = alTop
    TabOrder = 3
    Visible = False
    object edtBusca: TEdit
      Left = 8
      Top = 10
      Width = 513
      Height = 21
      TabOrder = 0
      OnChange = edtBuscaChange
    end
  end
  object dsLista: TDataSource
    DataSet = qryDados
    Left = 624
    Top = 9
  end
  object qryDados: TFDQuery
    AfterOpen = qryDadosAfterOpen
    FilterOptions = [foCaseInsensitive]
    Connection = dmPrincipal.fdConnection
    Left = 568
    Top = 9
  end
end
