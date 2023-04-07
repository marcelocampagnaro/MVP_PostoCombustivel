unit unTiposCombustiveisEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unDefaultEdit, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Mask, Vcl.DBCtrls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmTiposCombustiveisEdita = class(TfrmDefaultEdit)
    qryEditCODIGO: TIntegerField;
    qryEditDESCRICAO: TStringField;
    qryEditAPAGADO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTiposCombustiveisEdita: TfrmTiposCombustiveisEdita;

implementation

{$R *.dfm}

end.
