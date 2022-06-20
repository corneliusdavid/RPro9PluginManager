program RPro9PluginManager;

uses
  Vcl.Forms,
  ufrmRProPluginMgrMain in 'ufrmRProPluginMgrMain.pas' {frmRProPluginMgrMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRProPluginMgrMain, frmRProPluginMgrMain);
  Application.Run;
end.
