unit RateEnumUnit;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, MCMT32_ASCOM_TLB, mscorlib_TLB, StdVcl,Utils,Core,SysUtils,Dialogs,Rate_Unit;

type
  TRateEnum = class(TAutoObject, IEnumerator)
  protected
    function Get_Current: OleVariant; safecall;
    function MoveNext: WordBool; safecall;
  public
    fAxe,fCount,fIndex:integer;
    procedure Reset; safecall;
    constructor CreateEnum(Axe:integer);
  end;

implementation

uses ComServ,VarGlobal;

constructor TRateEnum.CreateEnum(Axe:integer);
begin
  Create;
  fCount:=CountRate[Axe];
//  WriteToTrace(Format('Create Enumerator Axe=%d count=%d countRate=%d',[Axe,fCount,CountRate[Axe]]));
  fAxe:=Axe;
  fIndex:=0;
end;

function TRateEnum.Get_Current: OleVariant;
Const
  procName='GetCurrent';
begin
//  LogEnterProc(procName);
//  LogProc(procName,format('Rates axe=%d Index%d Min=%0.4f Max=%0.4f',[fAxe,fIndex,g_Rate[fAxe,fIndex-1].fMinimum,g_Rate[fAxe,fIndex-1].fMaximum]));
//    WriteToTrace(format('Rates axe=%d Index%d Min=%0.4f Max=%0.4f',[fAxe,fIndex,g_Rate[fAxe,fIndex-1].fMinimum,g_Rate[fAxe,fIndex-1].fMaximum]));
  result:= g_Rate[fAxe,fIndex-1] as IRate;
//  LogProc(procName,'apres result');
//  LogEndProc(procName);
end;

function TRateEnum.MoveNext: WordBool;
var i:integer;
Const
  procName='MoveNext';
begin
//  LogEnterProc(procName);
//  LogProc(procName,format('Index début=%d count=%d',[fIndex,fCount]));
//  WriteToTrace(Format('Move Next index début=%d count=%d',[fIndex,fCount]));
  Result := (fIndex < fCount);
  if Result then
  begin
    Inc(fIndex);
  end;
//  WriteToTrace(Format('Index fin=%d',[fIndex]));
//  LogProc(procName,format('Index fin=%d',[fIndex]));
//  LogEndProc(procName);
end;

procedure TRateEnum.Reset;
Const
  procName='Reset';
begin
//  LogEnterProc(procName);
//  LogProc(procName,Format('Axe=%d',[fAxe]));
//  WriteToTrace(Format('Reset enumerator Axe=%d',[fAxe]));
  fIndex:=0;
//  LogEndProc(procName);
end;

initialization
  TAutoObjectFactory.Create(ComServer, TRateEnum, Class_RateEnum,
    ciMultiInstance, tmApartment);
end.
