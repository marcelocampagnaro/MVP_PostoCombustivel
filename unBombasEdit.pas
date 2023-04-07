unit unBombasEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unDefaultEdit, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, unDMPrincipal, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.DBCtrls, Vcl.Mask, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmBombasEdita = class(TfrmDefaultEdit)
    qryEditCODIGO: TIntegerField;
    qryEditDESCRICAO: TStringField;
    qryEditCODIGO_TANQUE: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsTanque: TDataSource;
    qryTanque: TFDQuery;
    qryTanqueCODIGO: TIntegerField;
    qryTanqueDESCRICAO: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    qryEditAPAGADO: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBombasEdita: TfrmBombasEdita;

implementation

{$R *.dfm}

procedure TfrmBombasEdita.FormShow(Sender: TObject);
begin
  inherited;
  qryTanque.Active := True;
end;

end.
