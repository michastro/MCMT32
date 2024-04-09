unit AxisRates_Unit;

{$WARN SYMBOL_PLATFORM OFF}


interface

uses
  ComObj, ActiveX, MCMT32_ASCOM_TLB, Rate_Unit,StdVcl,RateEnumUnit;

type

  TAxisRates = class(TAutoObject,IAxisRates,IEnumerable)
   private
      fIndex:integer;
   protected
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): IRate; safecall;
    function GetEnumerator: IEnumerator; safecall;
    procedure Dispose; safecall;
   public
      fCount,fAxe:integer;
      procedure Initialize; override;
      destructor Destroy; override;
   end;

implementation

uses ComServ,Data.Win.ADODB,Core,SysUtils,VarGlobal,Utils,dialogs,Registry,Windows;


{ TAxisRates }

destructor TAxisRates.Destroy;
Const
  procName='Destroy';
begin
  LogEnterProc(procName);
  inherited;
  LogEndProc(procName);
end;

procedure TAxisRates.Initialize;
begin
  inherited;
  fIndex:=-1;
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

function TAxisRates.GetEnumerator: IEnumerator;
Const
  procName='GetEnumerator';
begin
//  LogEnterProc(procName);
//  WriteToTrace(Format('GetEnumerator axe=%d',[self.fAxe]));
  Result:=TRateEnum.CreateEnum(self.fAxe);
//  LogEndProc(procName);
end;

procedure TAxisRates.Dispose;
begin

end;

initialization
  TAutoObjectFactory.Create(ComServer, TAxisRates, Class_AxisRates,
    ciMultiInstance, tmApartment);
end.

