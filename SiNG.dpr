program SCnamegen;

uses
  Forms,
  mainform in 'mainform.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Simcity Name Generator';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
