program Inventory_Editor;

uses
  Forms,
  ConfigForm in 'ConfigForm.pas' {CfgForm},
  Dec in 'Dec.pas',
  FlashForm in 'FlashForm.pas' {MUFlash},
  InvUnit in 'InvUnit.pas' {InvForm},
  showdata in 'showdata.pas' {frmSD},
  Unit3 in 'Unit3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  application.Title:='CMT Inventory Editor';
  Application.CreateForm(TMUFlash, MUFlash);
  Application.CreateForm(TCfgform, Cfgform);
  muflash.iniciar;
  Application.CreateForm(TInvForm, InvForm);
  Application.CreateForm(TfrmSD, frmSD);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
