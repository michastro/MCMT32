unit AxisRates_Unit;

{$WARN SYMBOL_PLATFORM OFF}


interface

uses
  ComObj, ActiveX, MCMT32_ASCOM_TLB, Rate_Unit,StdVcl,RateEnumUnit;

type

  TAxisRates = class(TAutoObject,IAxisRates)
   private
      fIndex:integer;
   protected
    function Get__NewEnum: IAxisRates; safecall;
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): IRate; safecall;
    function GetEnumerator: IDispatch; safecall;
    function Next(celt: LongWord; var rgvar : OleVariant;
      out pceltFetched: LongWord): HResult; stdcall;
    function Skip(celt: LongWord): HResult; stdcall;
    function Reset: HResult; stdcall;
    function Clone(out Enum: IEnumVARIANT): HResult; stdcall;
   public
      fCount,fAxe:integer;
      procedure Initialize; override;
      destructor Destroy; override;
   end;

implementation

uses ComServ,Data.Win.ADODB,Core,SysUtils,VarGlobal,Utils,dialogs,Registry,Windows;


{ TAxisRates }

function TAxisRates.Clone(out Enum: IEnumVARIANT): HResult;
var Rates : TAxisRates;
Const
  procName='Clone';
begin
  LogEnterProc(procName);
  Rates := TAxisRates.Create;
  Enum:=Rates as IEnumVARIANT;
  result:=S_OK;
  LogEndProc(procName);
end;

destructor TAxisRates.Destroy;
Const
  procName='Destroy';
begin
  LogEnterProc(procName);
  WriteToTrace(Format('Destroy axe=%',[fAxe]));
  inherited;
  LogEndProc(procName);
end;

procedure TAxisRates.Initialize;
begin
  inherited;
  fIndex:=0;
end;

function TAxisRates.Next(celt: LongWord; var rgvar: OleVariant;
  out pceltFetched: LongWord): HResult;
var i:integer;
Const
  procName='Next';
begin
//  LogEnterProc(procName);
//  LogProc(procName,format('celt=%d',[celt]));
//  LogProc(procName,format('Index début=%d',[fIndex]));
//  WriteToTrace(Format('Index début=%d',[fIndex]));
//  WriteToTrace(Format('Next Celt=%d',[celt]));
  i:=0;
  while (i<integer(celt)) and (fIndex<fCount) do
  begin
    TVariantList(rgvar)[i]:=Get_Item(fIndex+1) as IDispatch;
    inc(i);
    inc(fIndex);
  end;
  if (@pCeltFetched <> nil) then pCeltFetched:=i;
  if i=integer(celt) then
  begin
    result:=S_OK;
//    LogProc(procName,'OK');
//    WriteToTrace('OK');
  end
  else
  begin
   result:=S_FALSE;
//   LogProc(procName,'Pas OK');
//   WriteToTrace('pas OK');
  end;
//  WriteToTrace(Format('Index fin=%d',[fIndex]));
//  LogProc(procName,format('Index fin=%d',[fIndex]));
//  LogEndProc(procName);
end;

function TAxisRates.Reset: HResult;
Const
  procName='Reset';
begin
//  LogEnterProc(procName);
//  LogProc(procName,Format('Axe=%d',[fAxe]));
  WriteToTrace(Format('Reset Axe=%d',[fAxe]));
  fIndex:=0;
  result:=S_OK;
//  LogEndProc(procName);
end;

function TAxisRates.Skip(celt: LongWord): HResult;
Const
  procName='Skip';
begin
//  LogEnterProc(procName);
  if (fIndex+integer(celt))>fCount-1 then
  begin
    fIndex:=fCount-1;
    result:=S_FALSE;
  end
  else
  begin
    inc(fIndex,celt);
    result:=S_OK;
  end;
//  LogEndProc(procName);
end;

function TAxisRates.Get__NewEnum: IAxisRates;
Const
  procName='Get__NewEnum';
begin
//  LogEnterProc(procName);
  result:=g_Rates[fAxe];  //self;// as IAxisRates;
  findex:=0;
//  WriteToTrace('_NewEnum');
//  LogEndProc(procName);
end;

function TAxisRates.Get_Count: Integer;
Const
  procName='Get_Count';
begin
//  LogEnterProc(procName);
  result:=fCount;
//  WriteToTrace(Format('Axe=%d Rates count=%d',[fAxe,fCount]));
//  LogProc(procName,format('Axe %d count=%d',[fAxe,fCount]));
//  LogEndProc(procName);
end;

function TAxisRates.Get_Item(Index: Integer): IRate;
var
  Rate: TRate;
  Speed:double;
Const
  procName='Get_Item';
begin
//  LogEnterProc(procName);
//  try
//    WriteToTrace(Format('Get Rates axe=%d index=%d Min=%0.4f Max=%0.4f',[fAxe,Index,g_Rate[fAxe,Index-1].fMinimum,g_Rate[fAxe,Index-1].fMaximum]));
//    LogProc(procName,'avant result');
//  LogProc(procName,format('Rates axe=%d Index%d Min=%0.4f Max=%0.4f',[fAxe,Index,g_Rate[fAxe,Index-1].fMinimum,g_Rate[fAxe,Index-1].fMaximum]));
//  if g_Rate[fAxe,Index-1]=nil then LogProc(procName,'BOOM g_Rate');
//  LogProc(procName,inttostr(longword(g_rate[0,0])));
  result:=g_Rate[fAxe,Index-1] as IRate;
//  except
//    showmessage(format('oups fAxe=%d Index=%d',[fAxe,Index-1]));
//  end;
//  LogProc(procName,'apres result');
//  LogEndProc(procName);
end;

function TAxisRates.GetEnumerator: IDispatch;
Const
  procName='GetEnumerator';
begin
//  LogEnterProc(procName);
//  WriteToTrace(Format('GetEnumerator axe=%d',[self.fAxe]));
  Result:=TRateEnum.CreateEnum(self.fAxe);
//  LogEndProc(procName);
end;

initialization
  TAutoObjectFactory.Create(ComServer, TAxisRates, Class_AxisRates,
    ciMultiInstance, tmApartment);
end.

