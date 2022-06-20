unit ufrmRProPluginMgrMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmRProPluginMgrMain = class(TForm)
    GridPanel1: TGridPanel;
    pnlActive: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lbActivePlugins: TListBox;
    lbDisabledPlugins: TListBox;
    edtRProPluginFolder: TLabeledEdit;
    Label3: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure lbActivePluginsDblClick(Sender: TObject);
    procedure lbDisabledPluginsDblClick(Sender: TObject);
  private
    procedure EnablePlugin(PluginFilename: string);
    procedure DisablePlugin(PluginFilename: string);

    procedure LoadPluginLists;
  end;

var
  frmRProPluginMgrMain: TfrmRProPluginMgrMain;

implementation

{$R *.dfm}

uses
  System.Types, System.IOUtils;

procedure TfrmRProPluginMgrMain.DisablePlugin(PluginFilename: string);
var
  SrcFilename: string;
begin
  SrcFilename := TPath.Combine(edtRProPluginFolder.Text, PluginFilename);
  TFile.Move(SrcFilename, ChangeFileExt(SrcFilename, '._mnf'));

  LoadPluginLists;
end;

procedure TfrmRProPluginMgrMain.EnablePlugin(PluginFilename: string);
var
  SrcFilename: string;
begin
  SrcFilename := TPath.Combine(edtRProPluginFolder.Text, PluginFilename);
  TFile.Move(SrcFilename, ChangeFileExt(SrcFilename, '.mnf'));

  LoadPluginLists;
end;

procedure TfrmRProPluginMgrMain.FormActivate(Sender: TObject);
begin
  if Length(edtRProPluginFolder.Text) > 0 then
    LoadPluginLists;
end;

procedure TfrmRProPluginMgrMain.lbActivePluginsDblClick(Sender: TObject);
begin
  DisablePlugin(lbActivePlugins.Items[lbActivePlugins.ItemIndex]);
end;

procedure TfrmRProPluginMgrMain.lbDisabledPluginsDblClick(Sender: TObject);
begin
  EnablePlugin(lbDisabledPlugins.Items[lbDisabledPlugins.ItemIndex]);
end;

procedure TfrmRProPluginMgrMain.LoadPluginLists;
var
  DirList: TStringDynArray;
begin
  lbActivePlugins.Clear;
  lbDisabledPlugins.Clear;

  DirList := TDirectory.GetFiles(edtRProPluginFolder.Text);

  for var i := 0 to High(DirList) - 1 do begin
    var FileEntry := ExtractFileName(DirList[i]);
    var FileExt := ExtractFileExt(FileEntry);

    if SameText(FileExt, '.mnf') then
      lbActivePlugins.Items.Add(FileEntry)
    else if SameText(FileExt, '._mnf') then
      lbDisabledPlugins.Items.Add(FileEntry);
  end;
end;

end.
