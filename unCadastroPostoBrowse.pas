unit unCadastroPostoBrowse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unDefaultBrowse, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, unConstantes, unCadastroPostoEdit,
  RLReport, RLRichText;

type
  TfrmCadastroPosto = class(TfrmDefaultBrowse)
    qryDadosCODIGO: TIntegerField;
    qryDadosRAZAO_SOCIAL: TStringField;
    qryDadosNOME_FANTASIA: TStringField;
    qryDadosENDERECO: TStringField;
    qryDadosNUMERO: TIntegerField;
    qryDadosCIDADE: TStringField;
    qryDadosUF: TStringField;
    qryDadosAPAGADO: TStringField;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPosto: TfrmCadastroPosto;

implementation

{$R *.dfm}

procedure TfrmCadastroPosto.FormShow(Sender: TObject);
begin
  FormCadastro := TfrmCadastroPostoEdita;

  inherited;
end;

end.
