unit Rate_Unit;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, MCMT32_ASCOM_TLB, StdVcl;

type
  TRate = class(TAutoObject, IRate)
  protected
    function Get_Maximum: Double; safecall;
    function Get_Minimum: Double; safecall;
    procedure Set_Maximum(Value: Double); safecall;
    procedure Set_Minimum(Value: Double); safecall;
  public
    fMaximum,fMinimum:double;
    destructor Destroy; override;
  end;

implementation

uses ComServ,SysUtils,Core,Dialogs,Utils;

destructor TRate.Destroy;
Const
  procName='Destroy';
begin
  LogEnterProc(procName);
  inherited;
//   self:=nil;
  LogEndProc(procName);
end;

function TRate.Get_Maximum: Double;
begin
//  WriteToTrace(Format('Get Rate Maximum=%f',[fMaximum]));
  result:=fMaximum;
end;

function TRate.Get_Minimum: Double;
begin
//  WriteToTrace(Format('Get Rate Minimum=%f',[fMinimum]));
  result:=fMinimum;
end;

procedure TRate.Set_Maximum(Value: Double);
begin
  fMaximum:=Value;
//  WriteToTrace(Format('Set Rate Maximum=%f',[fMaximum]));
end;

procedure TRate.Set_Minimum(Value: Double);
begin
  fMinimum:=Value;
//  WriteToTrace(Format('Set Rate Minimum=%f',[fMinimum]));
end;

initialization
  TAutoObjectFactory.Create(ComServer, TRate, Class_Rate,
    ciMultiInstance, tmApartment);
end.
