program Inventory_Editor;

uses
  Forms,
  showdata in 'showdata.pas' {frmSD},
  Dec in 'Dec.pas',
  Unit3 in 'Unit3.pas' {Form3},
  InvUnit in 'InvUnit.pas' {Form1},
  FlashForm in 'FlashForm.pas' {MUFlash};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMUFlash, MUFlash);
  Application.CreateForm(TfrmSD, frmSD);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TInvForm, InvForm);
  Application.Title := 'Inventory Editor';



  Application.Run;
end.
