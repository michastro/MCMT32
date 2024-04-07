unit TrackingRates_Unit;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, MCMT32_ASCOM_TLB,mscorlib_TLB, StdVcl,Dialogs,EnumeratorTrackingUnit;

type
  TTrackingRates = class(TAutoObject, ITrackingRates,IEnumerable)
   private
      fIndex,fCount:integer;
      E:TEnumeratorTracking;
  protected
    function GetEnumerator: IEnumerator; safecall;
    function Get_Item(index: Integer): DriveRates; safecall;
   public
    function Get_Count: Integer; safecall;
    procedure Dispose; safecall;
      procedure Initialize; override;
      destructor Destroy; override;
  end;

{  TMyEnumerator=Class(TAutoObject,IEnumerator)
    protected
    function GetCurrent: TObject;
    function MoveNext: Boolean;
    procedure Reset;
    property Current: TObject read GetCurrent;
  End;
 }
implementation

uses ComServ,Data.Win.ADODB,Core,SysUtils;

function TTrackingRates.GetEnumerator: IEnumerator;
begin

  E:=TEnumeratorTracking.CreateEnum;
  result:=E;
end;

procedure TTrackingRates.Initialize;
begin
   inherited;
   fIndex:=-1;
   fCount:=3;
end;

destructor TTrackingRates.Destroy;
begin
   inherited;
end;

function TTrackingRates.Get_Count: Integer;
begin
   result:=fCount;
   WriteToTrace(Format('Get TrackingRates count=%d',[fCount]));
end;

procedure TTrackingRates.Dispose;
begin

end;

function TTrackingRates.Get_Item(index: Integer): DriveRates;
begin

end;

initialization
  TAutoObjectFactory.Create(ComServer, TTrackingRates, Class_TrackingRates,
    ciMultiInstance, tmApartment);
end.
