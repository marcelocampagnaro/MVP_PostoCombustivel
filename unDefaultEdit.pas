unit unDefaultEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unDMPrincipal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, unConstantes;

type
  TfrmDefaultEdit = class(TForm)
    Panel1: TPanel;
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    dsEdicao: TDataSource;
    qryEdit: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
  private
    FCodigo : Integer;
    FStatusTela : TStatusTela;
    FMsgValidaCadastro : String;
    procedure SetCodigo(const Value : Integer);
    procedure SetStatusTela(const Value : TStatusTela);
    procedure SetMensagemCadastro(const Value: String);
  public
    function ValidarCadastro(qry: TFDQuery): String;
    property Codigo : Integer read FCodigo write SetCodigo;
    property StatusTela : TStatusTela read fStatusTela write SetStatusTela;
    property MsgValidaCadastro : String read FMsgValidaCadastro write SetMensagemCadastro;
  end;

var
  frmDefaultEdit: TfrmDefaultEdit;

implementation

{$R *.dfm}

{ TfrmDefaultEdit }

function TfrmDefaultEdit.ValidarCadastro(qry : TFDQuery) : String;
var
  i : integer;
begin
  Result := EmptyStr;
  for i := 0 to qry.Fields.Count -1 do
  begin
    if (qry.Fields[i].Visible) and (qry.Fields[i].Required) and (qry.Fields[i].IsNull) then
    begin
      Result := PreencherCampo + qry.Fields[i].DisplayLabel;
    end;
  end;
end;

procedure TfrmDefaultEdit.btSalvarClick(Sender: TObject);
begin
  MsgValidaCadastro := ValidarCadastro(qryEdit);
  if MsgValidaCadastro = EmptyStr then
  begin
    qryEdit.FieldByName('APAGADO').AsString := 'F';
    qryEdit.Post;
    ModalResult := mrOk;
  end else
  begin
    ModalResult := mrNone;
    ShowMessage(MsgValidaCadastro);
  end;
end;

procedure TfrmDefaultEdit.FormShow(Sender: TObject);
begin
  if StatusTela = stEditar then
    qryEdit.ParamByName('CODIGO').AsInteger := Codigo;

  qryEdit.Active := True;

  if StatusTela = stInserir then
    qryEdit.Append
  else
    qryEdit.Edit;
end;

procedure TfrmDefaultEdit.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TfrmDefaultEdit.SetMensagemCadastro(const Value: String);
begin
  FMsgValidaCadastro := Value;
end;

procedure TfrmDefaultEdit.SetStatusTela(const Value: TStatusTela);
begin
  fStatusTela := Value;
end;

end.
