unit unBombasBrowse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unDefaultBrowse, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, unBombasEdit;

type
  TfrmBomba = class(TfrmDefaultBrowse)
    qryDadosCODIGO: TIntegerField;
    qryDadosDESCRICAO: TStringField;
    qryDadosTANQUE: TStringField;
    qryDadosPOSTO: TStringField;
    qryDadosAPAGADO: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBomba: TfrmBomba;

implementation

{$R *.dfm}

procedure TfrmBomba.FormShow(Sender: TObject);
begin
  inherited;
  FormCadastro := TfrmBombasEdita;
end;

end.
