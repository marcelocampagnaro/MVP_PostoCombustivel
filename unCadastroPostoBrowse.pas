unit unCadastroPostoBrowse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unDefaultBrowse, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, unConstantes, unCadastroPostoEdit;

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
