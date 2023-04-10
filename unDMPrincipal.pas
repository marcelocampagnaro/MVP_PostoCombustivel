unit unDMPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.Client,
  Data.DB, VCL.Dialogs, VCL.Forms, unConstantes;

type
  TStatusTela = (stInserir, stEditar);

  TdmPrincipal = class(TDataModule)
    fdConnection: TFDConnection;
    fdTransaction: TFDTransaction;
    fdPhysFBDriverLink: TFDPhysFBDriverLink;
    fdGUIxWaitCursor: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPrincipal: TdmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmPrincipal.DataModuleCreate(Sender: TObject);
begin
  try
    fdConnection.Params.Clear;
    fdConnection.Params.Add('Database=C:\FORTES\FORTES.fdb');
    fdConnection.Params.Add('User_Name=SYSDBA');
    fdConnection.Params.Add('Password=masterkey');
    fdConnection.Params.Add('Server=192.168.0.16/3050');
    fdConnection.Params.Add('Protocol=TCPIP');
    fdConnection.Params.Add('CharacterSet=ISO8859_1');
    fdConnection.Params.Add('DriverID=FB');


    fdConnection.Connected := True;
  except
    On E : exception do
    begin
      ShowMessage(ErroConectBD);
      Application.Terminate;
    end;
  end;
end;

end.
