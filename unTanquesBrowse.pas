unit unTanquesBrowse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unDefaultBrowse, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, unTanquesEdit, RLReport;

type
  TfrmTanques = class(TfrmDefaultBrowse)
    qryDadosCODIGO: TIntegerField;
    qryDadosPOSTO: TStringField;
    qryDadosTIPO_COMBUSTIVEL: TStringField;
    qryDadosTANQUE: TStringField;
    qryDadosVALOR_COMBUSTIVEL: TSingleField;
    qryDadosAPAGADO: TStringField;
    qryDadosVALOR_IMPOSTO: TSingleField;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel4: TRLLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTanques: TfrmTanques;

implementation

{$R *.dfm}

procedure TfrmTanques.FormShow(Sender: TObject);
begin
  inherited;
  FormCadastro := TfrmTanquesEdita;
end;

end.
