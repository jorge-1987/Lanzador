unit Unit2; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls, Process, ExtCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    ListBox1: TListBox;
    procedure ListBox1DblClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form2: TForm2; 

implementation
Uses
Unit1;

{$R *.lfm}

{ TForm2 }

procedure TForm2.ListBox1DblClick(Sender: TObject);
Var
  I : Integer;
  AProcess: TProcess;
  App : String;

begin
  //ShowMessage('Lanzar App!!');

        For I := 0 to ListBox1.Items.Count -1 do
        if ListBox1.Selected[I] then
//      SysUtils.ExecuteProcess(UTF8ToSys(ListBox1.Items.Strings[I]), '''' );//'', []);
    Begin
        AProcess := TProcess.Create(nil);

        App := (Form1.Label1.Hint+Form1.ListBox1.Items.Strings[I]);

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
        Form2.Close;

        //ShowMessage('Ejecutado: ' + ListBox1.Items.Strings[I]);
    end;
end;

end.

