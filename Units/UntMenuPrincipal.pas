unit UntMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  Vcl.ToolWin, Vcl.ActnCtrls, Vcl.Ribbon, Vcl.RibbonLunaStyleActnCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFrmMenuPrincipal = class(TForm)
    ImageList1: TImageList;
    ActionManager1: TActionManager;
    cad_cliente: TAction;
    cad_fornecedor: TAction;
    cad_transportadora: TAction;
    cad_usuario: TAction;
    cad_perfil: TAction;
    Ribbon1: TRibbon;
    RibbonPage1: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    RibbonPage2: TRibbonPage;
    RibbonGroup2: TRibbonGroup;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure cad_usuarioExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenuPrincipal: TFrmMenuPrincipal;

implementation

{$R *.dfm}

procedure TFrmMenuPrincipal.cad_usuarioExecute(Sender: TObject);
begin
   //Application.CreateForm(TFrmUsuario,FrmUsuario);
   //FrmUsuario.showmodal;
   //FrmUsuario.free;
end;

procedure TFrmMenuPrincipal.FormActivate(Sender: TObject);
begin
windowstate:= wsMaximized;
StatusBar1.Panels[1].Text:= FormatDateTime(' ddd ", " dd " de " mmmm " de "yyyy', now);
end;

procedure TFrmMenuPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
close;
end;

procedure TFrmMenuPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  var confSaida:integer;
begin
   confSaida:= Application.MessageBox('Tem Certeza que deseja sair do sistema?',
   'Atenção',MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);

   if confSaida = IDYES then
    Application.Terminate
    else
    CanClose:=false;
end;

procedure TFrmMenuPrincipal.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[0].Text:=TimeToStr(time);
end;

end.
