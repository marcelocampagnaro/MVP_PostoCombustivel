unit unAbastecimentosBrowse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unDefaultBrowse, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, unAbastecimentosEdit;

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
