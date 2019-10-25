unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, StdCtrls;

type
  TFrmMain = class(TForm)
    MMenu: TMainMenu;
    Archivo1: TMenuItem;
    BtnSalir: TMenuItem;
    PnlDesc: TPanel;
    MeDesc: TMemo;
    PnlImg: TPanel;
    ImgDesc: TImage;
    PnlList: TPanel;
    LstProgram: TListBox;
    LstMenu: TListBox;
    PnlAccion: TPanel;
    BtnAdd: TButton;
    BtnDel: TButton;
    BtnMod: TButton;
    BtnDesc: TButton;
    procedure BtnDescClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.BtnDescClick(Sender: TObject);
begin
  PnlDesc.Visible := False;
end;

end.
