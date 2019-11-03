unit Unit1; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Process, Windows, LMessages, ExtCtrls, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    OD: TOpenDialog;
    Tray: TTrayIcon;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure TrayClick(Sender: TObject);
    procedure TrayDblClick(Sender: TObject);
 {   procedure Espabila(var Msg : TMessage); message WM_USER+1;
    procedure MostrarForm;
    procedure WMSysCommand(var Msg: TWMSysCommand); message WM_SYSCOMMAND;   }
  private
    { private declarations }
   { IconData  : TNotifyIconData;  }
  public
    { public declarations }
  end; 

var
  Form1: TForm1;
  Drive : String;

implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.Button1Click(Sender: TObject);
Var
  I : Integer;
  AProcess: TProcess;
  App : String;

begin
  //ShowMessage('Lanzar App!!');

        For I := 0 to ListBox2.Items.Count -1 do
        if ListBox2.Selected[I] then
//      SysUtils.ExecuteProcess(UTF8ToSys(ListBox1.Items.Strings[I]), '''' );//'', []);
    Begin
        AProcess := TProcess.Create(nil);

        App := (Drive+ListBox1.Items.Strings[I]);

        // Tell the new AProcess what the command to execute is.
        // Let's use the FreePascal compiler
        AProcess.CommandLine := App;

        // We will define an option for when the program
        // is run. This option will make sure that our program
        // does not continue until the program we will launch
        // has stopped running.                vvvvvvvvvvvvvv

        //AProcess.Options := AProcess.Options + [poWaitOnExit];

        // Now that AProcess knows what the commandline is
        // we will run it.
        AProcess.Execute;

        // This is not reached until ppc386 stops running.
        AProcess.Free;


        //ShowMessage('Ejecutado: ' + ListBox1.Items.Strings[I]);
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
//Var
    //  I : Integer;

begin
      ShowMessage('Cargar nueva App');
      ListBox1.Items.Add(Edit1.Text);
      ListBox2.Items.Add(Edit2.Text);
       //For I := 0 to ListBox2.Items.Count -1 do
        //if ListBox1.Selected[I] then
          //ShowMessage(ListBox1.Items.Strings[I]);

      ListBox1.Items.SaveToFile('Paths.Lst');
      ListBox2.Items.SaveToFile('Nombres.Lst');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  If OD.Execute Then Edit1.Text:= OD.FileName;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  //ShowMessage('Mi ejecutable esta en: '+ ExtractFileDrive(Application.ExeName));
  //ShowMessage('Mi ejecutable esta en: '+ ExtractFilePath(ParamStr(1)));
  //Tray.ShowHint := True;
  //Tray.PopUpMenu := MyPopUpMenu;
  Form2.ListBox1.Items.LoadFromFile('Nombres.Lst');
  Tray.Icon.LoadFromFile('System-binary.ico');
  Tray.Show;
  Form1.Hide;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
{  Shell_NotifyIcon(NIM_DELETE, @IconData);
  IconData.Wnd:=0;      }
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  ListBox1.Items.LoadFromFile('Paths.Lst');
  ListBox2.Items.LoadFromFile('Nombres.Lst');
  Drive := ExtractFileDrive(Application.ExeName);
  Label1.Hint:=Drive;
end;

procedure TForm1.TrayClick(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.TrayDblClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.

