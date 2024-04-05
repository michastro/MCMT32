unit LEDUnit;
interface
uses Winapi.Windows, Winapi.Messages, System.SysUtils,Vcl.ExtCtrls,Vcl.Graphics;
type
  TLED =class(TImage)
    constructor CreateLED(X,Y:integer);
    procedure Grey;
    procedure Red;
    procedure Green;
end;
const
  L=16;
  H=16;
  cGreen=$0000E000;
  cRed=$00E00000;
implementation
uses
  MCMT_Main;

procedure TLED.Green;
begin
  With Canvas do
  begin
    Brush.Color:=clWebLightGreen;
    Rectangle(2,2,L-2,H-2);
  end;
end;

procedure TLED.Grey;
begin
  With Canvas do
  begin
    Brush.Color:=clGray;
    Rectangle(2,2,L-2,H-2);
  end;
end;

procedure TLED.Red;
begin
  With Canvas do
  begin
    Brush.Color:=clRed;
    Rectangle(2,2,L-2,H-2);
  end;
end;

constructor TLED.CreateLED(X,Y:integer);
begin
  Create(Form2);
  Left:=X;
  Top:=Y;
  Width:=L;
  Height:=H;
  Parent:=Form2;
  Canvas.Brush.Color:=clWhite;
  Canvas.Rectangle(1,1,L-1,H-1);
  Canvas.Brush.Color:=clGray;
  Canvas.Rectangle(2,2,L-2,H-2);
end;
end.
