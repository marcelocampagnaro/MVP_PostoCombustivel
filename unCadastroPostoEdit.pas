unit unCadastroPostoEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unDefaultEdit, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, unDMPrincipal, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Mask, Vcl.DBCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmCadastroPostoEdita = class(TfrmDefaultEdit)
    qryEditCODIGO: TIntegerField;
    qryEditRAZAO_SOCIAL: TStringField;
    qryEditNOME_FANTASIA: TStringField;
    qryEditENDERECO: TStringField;
    qryEditNUMERO: TIntegerField;
    qryEditCIDADE: TStringField;
    qryEditUF: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    qryEditAPAGADO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPostoEdita: TfrmCadastroPostoEdita;

implementation

{$R *.dfm}

end.
