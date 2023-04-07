unit unPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Buttons, unDefaultBrowse, unCadastroPostoBrowse, unTiposCombustiveisBrowse, unTanquesBrowse, unBombasBrowse,
  unAbastecimentosBrowse, unTiposCombustiveisEdit, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    pnlCenter: TPanel;
    Image1: TImage;
    pnlBotoes: TPanel;
    btCadastroPosto: TBitBtn;
    btCadastroTiposCombustiveis: TBitBtn;
    btCadastroTanques: TBitBtn;
    btCadastroBombas: TBitBtn;
    btAbastecimentos: TBitBtn;
    procedure btCadastroPostoClick(Sender: TObject);
    procedure btCadastroTiposCombustiveisClick(Sender: TObject);
    procedure btCadastroTanquesClick(Sender: TObject);
    procedure btCadastroBombasClick(Sender: TObject);
    procedure btAbastecimentosClick(Sender: TObject);
  private
    procedure CriarForm(Formulario: TFormClass);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.CriarForm(Formulario : TFormClass);
begin
  TForm(Formulario) := Formulario.Create(Self);
  TForm(Formulario).Show
end;

procedure TfrmPrincipal.btCadastroTanquesClick(Sender: TObject);
begin
  CriarForm(TfrmTanques);
end;

procedure TfrmPrincipal.btCadastroTiposCombustiveisClick(Sender: TObject);
begin
  CriarForm(TfrmTiposCombustiveis);
end;

procedure TfrmPrincipal.btAbastecimentosClick(Sender: TObject);
begin
  CriarForm(TfrmAbastecimentos);
end;

procedure TfrmPrincipal.btCadastroBombasClick(Sender: TObject);
begin
  CriarForm(TfrmBomba);
end;

procedure TfrmPrincipal.btCadastroPostoClick(Sender: TObject);
begin
  CriarForm(TfrmCadastroPosto);
end;

end.
