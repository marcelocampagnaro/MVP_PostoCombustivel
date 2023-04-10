unit unAbastecimentosBrowse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unDefaultBrowse, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, unAbastecimentosEdit, RLReport;

type
  TfrmAbastecimentos = class(TfrmDefaultBrowse)
    qryDadosPOSTO: TStringField;
    qryDadosBOMBA: TStringField;
    qryDadosTANQUE: TStringField;
    qryDadosDATA: TDateField;
    qryDadosQUANTIDADE_LITROS: TIntegerField;
    qryDadosVALOR: TSingleField;
    qryDadosVALOR_IMPOSTO: TSingleField;
    qryDadosCODIGO: TIntegerField;
    qryDadosAPAGADO: TStringField;
    RLLabel3: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    rlbTotais: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbastecimentos: TfrmAbastecimentos;

implementation

{$R *.dfm}

procedure TfrmAbastecimentos.FormShow(Sender: TObject);
begin
  inherited;
  FormCadastro := TfrmAbastecimentosEdita;
end;

end.
