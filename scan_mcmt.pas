unit scan_mcmt;
{R+}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm_scan_mcmt = class(TForm)
    Panel_Info   : TPanel;
    Button_Cancel: TButton;
    Panel1       : TPanel;
    procedure Button_CancelClick(Sender: TObject);
  private
    { Private declarations }
    FinderComThread:Tthread;
  public
    Found_MCMT:Boolean;
    HasFocuser:Boolean;
    NumCom    :Byte;
    { Public declarations }

    Constructor create(Aowner:TComponent;ListPorts:TStringList); reintroduce;
    Procedure   _Show_;
    Procedure   CloseForm(Sender:TObject);
  end;


Var
 User_Has_Stopped_COM_Scans:Boolean;

implementation


Uses FinderCOM_unit;


{$R *.dfm}

Constructor TForm_scan_mcmt.create(Aowner:TComponent;ListPorts:TStringList);
Begin
  Inherited create(Aowner);

  User_Has_Stopped_COM_Scans  :=False;

  FinderComThread             := TFinderComThread.Create;
  FinderComThread.Onterminate := CloseForm;

 (FinderComThread as TFinderComThread).TmpPorts      := ListPorts;
  FinderComThread.FreeOnterminate                    := True;
 (FinderComThread as TFinderComThread).Form_scan_mcmt:= Self;
End;


Procedure  TForm_scan_mcmt._Show_;
Begin
  FinderComThread.Start;
  ShowModal;  // Wait user input OR Thread to terminate
End;


Procedure  TForm_scan_mcmt.CloseForm(Sender:TObject);
Begin
 Found_MCMT:=(Sender as TFinderComThread).Found_MCMT ;
 HasFocuser:=(Sender as TFinderComThread).HasFocus   ;
 NumCom    :=(Sender as TFinderComThread).ComFoundNum;

 ModalResult:=MrOK;
 Close;
End;


procedure TForm_scan_mcmt.Button_CancelClick(Sender: TObject);
begin
 Try
  FinderComThread.Terminate;
  Button_Cancel.Caption:='Patientez....';
  Button_Cancel.Enabled:=False;
  User_Has_Stopped_COM_Scans:=True;
 Except
 End;
end;

end.
