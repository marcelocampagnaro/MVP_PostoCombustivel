unit unTanquesEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unDefaultEdit, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, unDMPrincipal, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.DBCtrls, Vcl.DBLookup, Vcl.Mask, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmTanquesEdita = class(TfrmDefaultEdit)
    qryEditCODIGO: TIntegerField;
    qryEditCODIGO_TIPO_COMBUSTIVEL: TIntegerField;
    qryEditCODIGO_POSTO: TIntegerField;
    qryEditDESCRICAO: TStringField;
    qryEditVALOR_COMBUSTIVEL: TSingleField;
    qryEditAPAGADO: TStringField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    qryTipoCombustivel: TFDQuery;
    qryTipoCombustivelCODIGO: TIntegerField;
    qryTipoCombustivelDESCRICAO: TStringField;
    dsTipoCombustivel: TDataSource;
    cbTipoCombustivel: TDBLookupComboBox;
    cbPosto: TDBLookupComboBox;
    qryPosto: TFDQuery;
    dsPosto: TDataSource;
    qryPostoCODIGO: TIntegerField;
    qryPostoNOME_FANTASIA: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTanquesEdita: TfrmTanquesEdita;

implementation

{$R *.dfm}

procedure TfrmTanquesEdita.FormShow(Sender: TObject);
begin
  inherited;
  qryPosto.Active := True;
  qryTipoCombustivel.Active := True;
end;

end.
