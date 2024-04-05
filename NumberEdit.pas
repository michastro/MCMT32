unit NumberEdit;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Math;

type
  TTypeValue=(Int,Float);


  TNumberEdit = class(tcustomedit)
  private
    { Private declarations }

   FMaxValue :Double;
   FMinValue :Double;
   FTypeValue:TTypeValue;

   procedure  CMExit(var Message: TCMExit);   message CM_EXIT;

  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
   property Font;
   property MaxValue: Double read FMaxValue write FMaxValue;
   property MinValue: Double read FMinValue write FMinValue;
   property TypeValue: TTypeValue read FTypeValue write FTypeValue default Int;
   property MaxLength;
   property Color;
   property Text;
   property TabOrder;
   property OnChange;
   property OnClick;
   property OnDblClick;
   property OnDragDrop;
   property OnDragOver;
   property OnEndDrag;
   property OnEnter;
   property OnExit;
   property OnKeyDown;
   property OnKeyPress;
   property OnKeyUp;
   property OnMouseDown;
   property OnMouseMove;
   property OnMouseUp;
   property OnStartDrag;
  end;
  
{$IFDEF STANDALONE}
procedure Register;
{$ENDIF}
implementation

ResourceString
 S_493='Entrée incorrecte !';
 S_494='Nombre trop grand par rapport à :';
 S_495='Nombre trop petit par rapport à  :';
 S_496=' n''est pas une valeur entière valide !';
 S_497=' n''est pas une valeur réelle valide !';

const MaxPile=100;

{$IFDEF STANDALONE}
procedure Register;
begin
  RegisterComponents('Prism', [TNumberEdit]);
end;
{$ENDIF}



type EFormuleError = class(Exception);
function GiveFormuleValue(Frml:string):double;
type TDesign=(DsNombre,DsOperateur);
     TOperateur=(OpPlus,OpMoins,OpMult,OpDiv);

     TElement=record
      Design:TDesign;
      case Integer of
       0:(Nombre:Double);
       1:(Operateur:TOperateur);
     end;

     TPile=record
      Tab:array[1..MaxPile] of TElement;
      NumSommet:Integer;
     end;


var PointeurValue:Integer;

function GiveNextvalue(Frml:string;var Element:TElement):Boolean;
var InterElement:TElement;
    InterStrNumber:string;
    InterD:Double;
begin
 if (PointeurValue<=0) then
 begin
  Result:=False;
  exit;
 end;
 Result:=True;

 if (Frml[PointeurValue] in ['+','-','*','/']) then
 begin
  InterElement.Design:=DsOperateur;
  case Frml[PointeurValue] of
   '+':InterElement.Operateur:=OpPlus;
   '-':InterElement.Operateur:=OpMoins;
   '*':InterElement.Operateur:=OpMult;
   '/':InterElement.Operateur:=OpDiv;
  end;
  dec(PointeurValue);
  Element:=InterElement;
 end
 else
 begin
  InterStrNumber:='';
  while (PointeurValue>0) and (Frml[PointeurValue] in ['0'..'9',FormatSettings.DecimalSeparator]) do
  begin
   InterStrNumber:=Frml[PointeurValue]+InterStrNumber;
   dec(PointeurValue);
  end;
  try
  InterD:=StrToFloat(InterStrNumber);
  except
   on EConvertError do
    raise EFormuleError.Create(S_493);
  end;
  Element.Design:=DsNombre;
  Element.Nombre:=InterD;
 end;
end;


procedure RunOperation(var Pile:TPile);
var Nombre1,Nombre2:Double;
    Operateur:TOperateur;
begin
 if Pile.NumSommet<3 then
 begin
  if (Pile.NumSommet=2) and
     (Pile.Tab[Pile.NumSommet].Design=DsOperateur)  and
     ((Pile.Tab[Pile.NumSommet].Operateur=OpMoins) or
      (Pile.Tab[Pile.NumSommet].Operateur=OpPlus) ) and
     (Pile.Tab[Pile.NumSommet-1].Design=DsNombre) then
  begin
   Operateur:=Pile.Tab[Pile.NumSommet].Operateur;
   dec(Pile.NumSommet);
   Nombre1:=Pile.Tab[Pile.NumSommet].Nombre;
   dec(Pile.NumSommet);
   case Operateur of
    OpMoins:Nombre1:=-Nombre1;
   end;
  end
  else
   Raise EFormuleError.Create(S_493);
 end
 else
 begin

  if Pile.Tab[Pile.NumSommet].Design<>DsNombre then
   Raise EFormuleError.Create(S_493);

  Nombre1:=Pile.Tab[Pile.NumSommet].Nombre;
  dec(Pile.NumSommet);

  if Pile.Tab[Pile.NumSommet].Design<>DsOperateur then
   Raise EFormuleError.Create(S_493);

  Operateur:=Pile.Tab[Pile.NumSommet].Operateur;
  dec(Pile.NumSommet);

  if Pile.Tab[Pile.NumSommet].Design<>DsNombre then
   Raise EFormuleError.Create(S_493);

  Nombre2:=Pile.Tab[Pile.NumSommet].Nombre;
  dec(Pile.NumSommet);
  try
  case Operateur of
   OpPlus :Nombre1:=Nombre1+Nombre2;
   OpMoins:Nombre1:=Nombre1-Nombre2;
   OpMult :Nombre1:=Nombre1*Nombre2;
   OpDiv  :Nombre1:=Nombre1/Nombre2;
  end;
  except
   raise EFormuleError.Create(S_493);
  end;
 end;
 inc(Pile.NumSommet);
 Pile.Tab[Pile.NumSommet].Nombre:=Nombre1;
end;



var Pile:TPile;
    InterElement:TElement;

begin

FormatSettings.DecimalSeparator:='.';
try

PointeurValue:=Length(Frml);
Pile.NumSommet:=0;

while (PointeurValue>0) do
begin
 if Frml[PointeurValue] in ['(',')'] then
 begin
  if Frml[PointeurValue]='(' then
   RunOperation(Pile);
  dec(PointeurValue);
 end
 else
 begin
  if GiveNextvalue(Frml,InterElement) then
  begin
   inc(Pile.NumSommet);
   Pile.Tab[Pile.NumSommet]:=InterElement;
  end;
 end;
end;

while Pile.NumSommet>=2 do
 RunOperation(Pile);
if (Pile.NumSommet=2) or (Pile.NumSommet=0) or (Pile.Tab[Pile.NumSommet].Design<>DsNombre) then
 raise EFormuleError.Create(S_493);


finally
//DecimalSeparator:=OldDecimalSeparator;
end;

Result:=Pile.Tab[Pile.NumSommet].Nombre;
end;


type ERangeError = class(Exception);

procedure TNumberEdit.CMExit(var Message: TCMExit);

var TestConvertInt  :Integer;
    TestConvertFloat:Double;

begin

 if (Text<>'') then
 begin
  FormatSettings.DecimalSeparator:='.';

  TestConvertInt  :=0;
  TestConvertFloat:=0;

  try
   case FTypeValue of
    Int  :begin
           TestConvertFloat:=GiveFormuleValue(Text);
           TestConvertInt  :=Round(TestConvertFloat);
           if (TestConvertInt<>TestConvertFloat) then
            raise EConvertError.Create('');
          end;
    Float:begin
           Try
            TestConvertFloat:=StrToFloat(Text);
           Except
            TestConvertFloat:=GiveFormuleValue(Text);
           end;
          end;
   end;
   if FMaxValue<>FMinValue then
   begin
    case FTypeValue of
     Int  :begin
            if (FMaxValue<TestConvertInt) then
            begin
             raise ERangeError.Create(S_494+inttoStr(Round(FMaxValue)));
            end;
            if (FMinValue>TestConvertInt) then
            begin
             raise ERangeError.Create(S_495+inttoStr(Round(FMinValue)));
            end;
           end;
     Float:begin
            if (FMaxValue<TestConvertFloat) then
            begin
             raise ERangeError.Create(S_494+FloattoStr(FMaxValue));
            end;
            if (FMinValue>TestConvertFloat) then
            begin
             raise ERangeError.Create(S_495+FloattoStr(FMinValue));
            end;
           end;
    end;
   end;

   case FTypeValue of
    Int  :Text:=IntToStr(TestConvertInt);
    Float:Text:=FloatToStr(TestConvertFloat);
   end;

  except
   on EConvertError do
   begin
    case FTypeValue of
     Int  :ShowMessage(Text+S_496);
     Float:ShowMessage(Text+S_497);
    end;
    SetFocus; { if it failed, don't let focus leave }
   end;
   on E:ERangeError do
   begin
    ShowMessage(E.Message);
    SetFocus; { if it failed, don't let focus leave }
   end;
   on E:EFormuleError do
   begin
    ShowMessage(E.Message);
    SetFocus; { if it failed, don't let focus leave }
   end;
  end;

 end;

 inherited;
end;


end.
