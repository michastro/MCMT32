unit Rates_Unit;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, MCMT32_ASCOM_TLB, StdVcl,vcl.dialogs;

type
  TRates = class(TAutoObject, IRates,IEnumVARIANT)
   private
      fIndex:integer;
      fEnum:integer;
      fVCorr,fVCenter,fVPoint:double;
   protected
      function Get__NewEnum: IUnknown; safecall;
      function Get_Count: Integer; safecall;
   { Protected declarations }
   { IEnumVARIANT }
      function Next(celt: LongWord; var rgvar : OleVariant;
         out pceltFetched: LongWord): HResult; stdcall;
      function Skip(celt: LongWord): HResult; stdcall;
      function Reset: HResult;stdcall;
      function Clone(out Enum: IEnumVariant): HResult; stdcall;
   {IEnumerator}
      function GetCurrent: IDispatch;stdcall;
      function MoveNext: Boolean;stdcall;
    property Current: IDispatch read GetCurrent;

    function Get_Item(Index: Integer): IDispatch; safecall;
   public
      fCount:integer;
      fAxe:integer;
      procedure Initialize; override;
      destructor Destroy; override;
   end;

implementation

uses ComServ,Data.Win.ADODB,Rate_Unit,Core,SysUtils,VarGlobal,Utils;

procedure TRates.Initialize;
Const
  procName='Initialize';
begin
  LogEnterProc(procName);
  inherited;
  fIndex:=1;
  fEnum:=-1;
  LogEndProc(procName);
end;

function TRates.MoveNext: Boolean;
Const
  procName='MoveNext';
begin
  LogEnterProc(procName);
  LogProc(procName,format('départ=%d',[fEnum]));
  if fEnum<fCount-1 then
  begin
    inc(fEnum);
    result:=true;
    LogProc(procName,'ok');
  end
  else
  begin
    Result:=false;
    LogProc(procName,'pas ok');
  end;
  LogProc(procName,format('fin=%d',[fEnum]));
  LogEndProc(procName);
end;

destructor TRates.Destroy;
Const
  procName='Destroy';
begin
  LogEnterProc(procName);
   inherited;
  LogEndProc(procName);
end;

function TRates.Get__NewEnum: IUnknown;
Const
  procName='Get__NewEnum';
begin
  LogEnterProc(procName);
   result:=self as IEnumVARIANT;
//  result:=self;
  findex:=0;
  LogEndProc(procName);
end;

function TRates.GetCurrent: IDispatch;
Const
  procName='GetCurrent';
begin
  LogEnterProc(procName);
  result:=g_Rate[fAxe,fEnum];
  LogProc(procName,format('g_Rate[%d,%d]',[fAxe,fEnum]));
  LogEndProc(procName);
end;

function TRates.Get_Count: Integer;
Const
  procName='Get_Count';
begin
  LogEnterProc(procName);
   result:=fCount;
   WriteToTrace(Format('Rates Axe %d count=%d',[fAxe,fCount]));
  LogProc(procName,format('Axe %d count=%d',[fAxe,fCount]));
  LogEndProc(procName);
end;

function TRates.Next(celt: LongWord; var rgvar : OleVariant; out pCeltFetched : LongWord) : HRESULT;
var i:integer;
Const
  procName='Next';
begin
  LogEnterProc(procName);
  LogProc(procName,format('celt=%d',[celt]));
  LogProc(procName,format('Index début=%d',[fIndex]));
   i:=0;
   while (i<integer(celt)) and (fIndex<fCount) do
   begin
      TVariantList(rgvar)[i]:=g_Rate[fAxe,i-1] as IRate;//Get_Item(i) as IRate;//Dispatch;
      inc(i);
      inc(fIndex);
   end;
   if (@pCeltFetched <> nil) then pCeltFetched:=i;
   if i=integer(celt) then
   begin
    result:=S_OK;
    LogProc(procName,'OK');
   end
   else
   begin
     result:=S_FALSE;
     LogProc(procName,'pas OK');
   end;
  LogProc(procName,format('Index fin=%d',[fIndex]));
  LogEndProc(procName);
end;

function TRates.Skip(celt: LongWord): HResult;
Const
  procName='Skip';
begin
  LogEnterProc(procName);
   if (fIndex+integer(celt))<=fCount then
   begin
      inc(fIndex,celt);
      result:=S_OK;
   end
   else
   begin
      fIndex:=fCount;
      result:=S_FALSE;
   end;
  LogEndProc(procName);
end;

function TRates.Reset: HResult;
Const
  procName='Reset';
begin
  LogEnterProc(procName);
  LogProc(procName,Format('Axe=%d',[fAxe]));
   fIndex:=0;
   fEnum:=-1;
   result:=S_OK;
  LogEndProc(procName);
end;

function TRates.Clone(out Enum: IEnumVariant): HResult;
var Rates : TRates;
Const
  procName='Clone';
begin
  LogEnterProc(procName);
   Rates := TRates.Create;
   Enum:=Rates as IEnumVARIANT;
   result:=S_OK;
  LogEndProc(procName);
end;

function TRates.Get_Item(Index: Integer): IDispatch;
var
   Speed:double;
Const
  procName='Get_Item';
begin
  LogEnterProc(procName);
   WriteToTrace(Format('Get Rates index %d Min=%f Max=%f',[Index,g_Rate[fAxe,Index-1].fMinimum,g_Rate[fAxe,Index-1].fMaximum]));
   result:=g_Rate[fAxe,Index-1];
  LogProc(procName,format('Rates axe=%d Index%d Min=%f Max=%f',[fAxe,Index,g_Rate[fAxe,Index-1].fMinimum,g_Rate[fAxe,Index-1].fMaximum]));
  LogEndProc(procName);
end;

initialization
  TAutoObjectFactory.Create(ComServer, TRates, Class_Rates,
    ciMultiInstance, tmApartment);
end.

