program LanzadorPro;

uses
  Forms,
  UMain in 'UMain.pas' {FrmMain},
  UBd in 'UBd.pas' {FrmBD};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmBD, FrmBD);
  Application.Run;
end.
