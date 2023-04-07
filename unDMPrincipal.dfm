object dmPrincipal: TdmPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 358
  Width = 606
  object fdConnection: TFDConnection
    Params.Strings = (
      'Database=C:\FORTES\FORTES.fdb'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=192.168.0.16/3050'
      'Protocol=TCPIP'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Transaction = fdTransaction
    Left = 64
    Top = 72
  end
  object fdTransaction: TFDTransaction
    Connection = fdConnection
    Left = 160
    Top = 72
  end
  object fdPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 256
    Top = 72
  end
  object fdGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 376
    Top = 72
  end
end
