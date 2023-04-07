unit unAbastecimentosEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unDefaultEdit, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, unDMPrincipal, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.DBCtrls, Vcl.Mask, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDBEditHelper = class Helper for TDBEdit
  private
  public
    function CalculaImposto(Valor, ValorImposto : Double) : Double;
  end;

  TfrmAbastecimentosEdita = class(TfrmDefaultEdit)
    qryEditCODIGO: TIntegerField;
    qryEditDATA: TDateField;
    qryEditQUANTIDADE_LITROS: TIntegerField;
    qryEditCODIGO_BOMBA: TIntegerField;
    qryEditVALOR: TSingleField;
    qryEditVALOR_IMPOSTO: TSingleField;
    Label1: TLabel;
    DBEData: TDBEdit;
    Label2: TLabel;
    DBEQtdeLitos: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEValor: TDBEdit;
    Label5: TLabel;
    DBEImposto: TDBEdit;
    cbBomba: TDBLookupComboBox;
    dsBomba: TDataSource;
    qryBomba: TFDQuery;
    qryBombaCODIGO: TIntegerField;
    qryBombaDESCRICAO: TStringField;
    qryEditAPAGADO: TStringField;
    qryBombaVALOR_COMBUSTIVEL: TSingleField;
    qryBombaVALOR_IMPOSTO: TSingleField;
    qryEditIMPOSTO_PERCENT: TSingleField;
    procedure FormShow(Sender: TObject);
    procedure DBEQtdeLitosExit(Sender: TObject);
    procedure cbBombaClick(Sender: TObject);
  private
    procedure CalculaValorTotal;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbastecimentosEdita: TfrmAbastecimentosEdita;

implementation

{$R *.dfm}

procedure TfrmAbastecimentosEdita.cbBombaClick(Sender: TObject);
begin
  inherited;
  CalculaValorTotal;
end;

procedure TfrmAbastecimentosEdita.DBEQtdeLitosExit(Sender: TObject);
begin
  inherited;
  CalculaValorTotal;
end;

procedure TfrmAbastecimentosEdita.CalculaValorTotal;
begin
  if (not qryEdit.FieldByName('CODIGO_BOMBA').IsNull) and (not qryEdit.FieldByName('QUANTIDADE_LITROS').IsNull) then
  begin
    qryEdit.FieldByName('VALOR').Value := qryBomba.FieldByName('VALOR_COMBUSTIVEL').AsFloat * qryEdit.FieldByName('QUANTIDADE_LITROS').AsInteger;
    qryEdit.FieldByName('VALOR_IMPOSTO').Value := DBEValor.CalculaImposto(qryEdit.FieldByName('VALOR').AsFloat, qryBomba.FieldByName('VALOR_IMPOSTO').AsFloat);
  end;
end;

procedure TfrmAbastecimentosEdita.FormShow(Sender: TObject);
begin
  inherited;
  qryBomba.Active := True;
end;

{ TDBEditHelper }

function TDBEditHelper.CalculaImposto(Valor, ValorImposto: Double): Double;
begin
  Result := (Valor * ValorImposto / 100) + Valor;
end;

end.
