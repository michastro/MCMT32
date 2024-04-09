unit EnumeratorTrackingUnit;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, MCMT32_ASCOM_TLB, mscorlib_TLB, StdVcl,Utils,Core,SysUtils,Dialogs;

type
  TEnumeratorTracking = class(TAutoObject, IEnumerator,IDispatch)
  protected
    function Get_Current: OleVariant; safecall;
    function MoveNext: WordBool; safecall;
  public
   fCount,fIndex:integer;
    procedure Reset; safecall;
    constructor CreateEnum;
  end;

implementation

uses ComServ,VarGlobal;

constructor TEnumeratorTracking.CreateEnum;
begin
  Create;
  fCount:=3;
//  WriteToTrace(Format('Create Enumerator Axe=%d count=%d countRate=%d',[Axe,fCount,CountRate[Axe]]));
  fIndex:=-1;
end;

function TEnumeratorTracking.Get_Current: OleVariant;
var
   retour: DriveRates;
begin
   Case findex of
      0: Retour:=driveSidereal;
      1: Retour:=driveLunar;
      2: Retour:=driveKing;
//      2: Retour:=driveSolar;
   end;
   result:=Retour;
end;

function TEnumeratorTracking.MoveNext: WordBool;
begin
  result:=true;
  if fIndex<fCount-1 then inc(fIndex) else result:=false;
end;

procedure TEnumeratorTracking.Reset;
Const
  procName='Reset';
begin
  fIndex:=-1;
end;

initialization
  TAutoObjectFactory.Create(ComServer, TEnumeratorTracking, CLASS_EnumeratorTracking,
    ciMultiInstance, tmApartment);
end.
