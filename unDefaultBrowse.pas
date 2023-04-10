unit unDefaultBrowse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, System.Types, unDMPrincipal, unDefaultEdit, unConstantes,
  RLReport;

type


  TfrmDefaultBrowse = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    dsLista: TDataSource;
    qryDados: TFDQuery;
    btNovo: TBitBtn;
    btApagar: TBitBtn;
    btEditar: TBitBtn;
    btImprimir: TBitBtn;
    btFiltar: TBitBtn;
    pnlMensagem: TPanel;
    pnlFiltro: TPanel;
    edtBusca: TEdit;
    rlrReport: TRLReport;
    rlbCabecalho: TRLBand;
    RLBand2rlbTitulo: TRLBand;
    rlbTituloColuna: TRLBand;
    rlbValores: TRLBand;
    rlbRodape: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    rlTituloRelatorio: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    procedure btNovoClick(Sender: TObject);
    procedure qryDadosAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btApagarClick(Sender: TObject);
    procedure btFiltarClick(Sender: TObject);
    procedure edtBuscaChange(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    FFormCadastro : TFormClass;
    procedure AtualizarPnlMensagem;
    procedure CriarCadastro(Formulario : TFormClass; StatusTela : TStatusTela);
    procedure SetFormCadastro(const Value: TFormClass);
  public
    property FormCadastro : TFormClass read FFormCadastro write SetFormCadastro;
  end;

var
  frmDefaultBrowse: TfrmDefaultBrowse;

implementation

{$R *.dfm}

procedure TfrmDefaultBrowse.btApagarClick(Sender: TObject);
var
  DeletarRegistro : Boolean;
begin
  try
    DeletarRegistro := True;
    if not qryDados.IsEmpty then
    begin
      if not qryDados.FieldByName('CODIGO').IsNull then
      begin
        try
          qryDados.Delete;
        except
          Showmessage(RegistroVinculado);
          DeletarRegistro := False;
        end;

        if DeletarRegistro then
        begin
          qryDados.Edit;
          qryDados.FieldByName('APAGADO').AsString := 'T';
          qryDados.Post;
          qryDados.Refresh;
        end;
      end;
    end else
      ShowMessage(SemDadosApagar);
  finally
    ShowMessage(RegistroDeletado);
  end;
end;

procedure TfrmDefaultBrowse.btEditarClick(Sender: TObject);
begin
  if not qryDados.IsEmpty then
    CriarCadastro(FormCadastro, stEditar)
  else
    ShowMessage(SemDadosEditar);
end;

procedure TfrmDefaultBrowse.btFiltarClick(Sender: TObject);
begin
  pnlFiltro.Visible := not pnlFiltro.Visible;
end;

procedure TfrmDefaultBrowse.btImprimirClick(Sender: TObject);
begin
  rlTituloRelatorio.Caption := Self.Caption;
  rlrReport.Preview;
end;

procedure TfrmDefaultBrowse.btNovoClick(Sender: TObject);
begin
  CriarCadastro(FormCadastro, stInserir);
end;

procedure TfrmDefaultBrowse.CriarCadastro(Formulario : TFormClass; StatusTela : TStatusTela);
begin
  try
    try
      TForm(Formulario) := Formulario.Create(Self);
      TfrmDefaultEdit(Formulario).StatusTela := StatusTela;
      TfrmDefaultEdit(Formulario).Codigo := qryDados.FieldByName('CODIGO').AsInteger;
      TForm(Formulario).ShowModal;
      qryDados.Refresh;
    except
      on E : Exception do
        ShowMessage(ErroCriarCadastro + E.Message);
    end;
  finally
    if Assigned(TForm(Formulario)) then
      TForm(Formulario).Free
  end;
end;

procedure TfrmDefaultBrowse.edtBuscaChange(Sender: TObject);
var
  i : integer;
  Filtro : String;
begin
  try
    for i := 0 to qryDados.Fields.Count -1 do
    begin
      if qryDados.Fields[i].Visible then
      begin
        if filtro <> EmptyStr then
          Filtro := Filtro + ' OR ';

        Filtro := Filtro + qryDados.Fields[i].FieldName + ' Like ' + QuotedStr('%' + edtBusca.Text + '%');
      end;
    end;
    qryDados.Filtered := False;
    qryDados.Filter := Filtro;
    qryDados.Filtered := True;
  except
    on E : Exception do
      ShowMessage(ErroFiltrar + E.Message);
  end;
end;

procedure TfrmDefaultBrowse.FormShow(Sender: TObject);
begin
  qryDados.Active := True;
end;

procedure TfrmDefaultBrowse.qryDadosAfterOpen(DataSet: TDataSet);
begin
  AtualizarPnlMensagem;
end;

procedure TfrmDefaultBrowse.SetFormCadastro(const Value: TFormClass);
begin
  FFormCadastro := Value;
end;

procedure TfrmDefaultBrowse.AtualizarPnlMensagem;
begin
  try
    if dsLista.DataSet.IsEmpty then
      pnlMensagem.Caption := NenhumRegistroEncontrado
    else if dsLista.DataSet.RecordCount = 1 then
      pnlMensagem.Caption := UmRegistroEncontrado
    else
      pnlMensagem.Caption := Format(VariosRegistrosEncontrados, [dsLista.DataSet.RecordCount]);
  except
    on E : Exception do
      ShowMessage(ErroAtualizarPainel + E.Message);
  end;
end;

end.
