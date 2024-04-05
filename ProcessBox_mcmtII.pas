unit ProcessBox_mcmtII;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  TProcessingBox = class(TForm)
    Panel1: TPanel;
    LabelStatus: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
   constructor create(AOwner:TComponent;Message:String);
   Procedure StaTusPanel(S:String);
  end;


implementation

{$R *.DFM}

constructor TProcessingBox.create(AOwner:TComponent;Message:String);
begin
 inherited create(AOwner);
 Panel1.Caption:=Message;
 LabelStatus.Caption:='';
 Self.Refresh;
end;

Procedure TProcessingBox.StaTusPanel(S:String);
begin
 LabelStatus.Caption:=S;
 Self.Refresh;
end;

end.
