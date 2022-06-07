program Project5;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit5 in 'Unit5.pas' {frmMain},
  FMX.ListView in 'FMX.ListView.pas',
  FMX.ListView.Types in 'FMX.ListView.Types.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
