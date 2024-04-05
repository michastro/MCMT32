Unit HiresTim;

interface

{$R HiresTim.res}
{$R+}



// After you have established your application's timer resolution, you can start
// timer events by using the timeSetEvent function. This function returns a timer
// identifier that can be used to stop or identify timer events. One of the function's
// parameters is the address of a TimeProc callback function that is called when
// the timer event takes place.
// There are two types of timer events: single and periodic. A single timer event
// occurs once, after a specified number of milliseconds. A periodic timer event occurs
// every time a specified number of milliseconds elapses. The interval between periodic
// events is called an event delay. Periodic timer events with an event delay of 10
// milliseconds or less consume a significant portion of CPU resources.
// The relationship between the resolution of a timer event and the length of the event
// delay is important in timer events. For example, if you specify a resolution of 5 and
// an event delay of 100, the timer services notify the callback function after an interval
// ranging from 95 to 105 milliseconds.
// You can cancel an active timer event at any time by using the timeKillEvent function.
// Be sure to cancel any outstanding timers before freeing the memory containing the
// callback function.
// Note : The multimedia timer runs in its own thread.

uses
      sysutils,
      classes,
      syncobjs,
      Windows,
      MMSystem;

Type

  THiResTimer=class;
  EHiResTimer=class(Exception);

  TTimerThread = class( TThread )
  private
   FThreadID:Longword;
  public
   OwnerName:String;
   HiResTimer: THiResTimer;
   property    ThreadIDA:Longword read FThreadID;
   constructor create(OwnerN:String);
   procedure   OnTerminateThread(Sender: TObject);
   procedure   Execute; override;
  end;


  THiResTimer = class( TComponent )
  private

   FInterval,FResolution:Integer;
   FEnabled:Boolean;
   FOnTimer:TNotifyEvent;


   TimerID:UINT;
   //Events
   TimerEvent                :THandle;
   TimerEndEvent             :THandle;
   ThreadTimerHasStartedEvent:THandle;

   TimerCriticalSection:TCriticalSection;

   TimerThread:TTimerThread;
   timerThreadDestroyed:Boolean;
   Timecapas:TIMECAPS;

   procedure UpdateTimer;
   procedure SetEnabled(Value:Boolean);
   procedure SetInterval(Value:Integer);
   procedure SetResolution(Value:Integer);
   procedure SetOnTimer(Value:TNotifyEvent);

  public
   constructor Create(AOwner: TComponent );  override;
   destructor  Destroy; override;

  published
   property Enabled:Boolean      read FEnabled    write SetEnabled    default False;
   property Interval:Integer     read FInterval   write SetInterval   default 1000;
   property Resolution:Integer   read FResolution write SetResolution default 1000;
   property OnTimer:TNotifyEvent read FOnTimer    write SetOnTimer;
  end;

  procedure Register;

Var NbreTimerHires:Integer;

implementation


{$IFDEF V5}

uses Forms,
     Outils; // Enables all Prism to be compiled, this is not good for a component !!

{$ELSE}
uses Forms;
 // Used to be compiled as a component
Procedure writelnConsole(S:String);
Begin
end;
{$ENDIF}

procedure TimerCallback(uTimerID,uMessage:UINT;dwUser,dw1,dw2:DWORD); stdcall;
var TimerEvent:THandle;
begin
 TimerEvent:=THandle(dwUser);
 SetEvent(TimerEvent);
end;

constructor TTimerThread.Create(OwnerN:String);
begin
 inherited Create(True); // Suspended
 FTHreadID:=0;
 Priority:=tpHighest;

 // Set FreeOnTerminate to True if you don’t want to explicitly destroy threads after they finish
 // executing. When FreeOnTerminate is False, the thread object must be explicitly destroyed in application code.
 FreeOnTerminate:=True; // Detruit lui meme ...
 HiResTimer:=nil;


 writelnConsole('TTimerThread-> Created ... in thread : '+IntToHex(GetCurrentThreadID,4)+' Owner= '+OwnerN);
end;



procedure TTimerThread.Execute;
 Var i:Integer;
begin
 try

 FTHreadID:=GetCurrentThreadID;

 writelnConsole('TTimerThread-> RUN : '+IntToHex(GetCurrentThreadID,4)+' Owner='+OwnerName);
 i:=0;

 SetEvent(HiResTimer.ThreadTimerHasStartedEvent); //Envoie un event pour dire qu'il a bien commencé (Oct 2001)

 while not Terminated do
 begin

  inc(i);

  // Attend un event crée par le timer ou par le destroy du parent..
  If i<3 then writelnConsole('TTimerThread-> wait for timer or kill event '+IntToHex(FTHreadID,4)+' Owner='+OwnerName);

  WaitForSingleObject(HiResTimer.TimerEvent,INFINITE);

  If i<3 then writelnConsole('TTimerThread-> release event '+IntToHex(FTHreadID,4)+' Owner='+OwnerName);


  if not Terminated then
  begin
   try

    If Assigned(HiResTimer.FOnTimer) then
    begin
     If i<3 then writelnConsole('TTimerThread-> Ontimer will be executed soon .....'+IntToHex(FTHreadID,4)+' Owner='+OwnerName);
     HiResTimer.FOnTimer(HiResTimer);  //Execute la procedure ....
     If i<3 then writelnConsole('TTimerThread-> Ontimer executed.....'+IntToHex(FTHreadID,4)+' Owner='+OwnerName);
    end
    else
     writelnConsole('TTimerThread-> Ontimer NOT executed.....'+IntToHex(FTHreadID,4)+' Owner='+OwnerName);


   except
    writelnConsole('TTimerThread-> Ontimer except...'+IntToHex(FTHreadID,4)+' from '+OwnerName);
   end;

  end;

 end; // Fin Exec... While....

 finally
  writelnConsole('TTimerThread-> SetEnv End '+IntToHex(FTHreadID,4)+' Owner='+OwnerName);
  SetEvent(HiResTimer.TimerEndEvent); //Envoie un event pour dire que c'est fini... vraiment tout !!
 end;

end;


procedure TTimerThread.OnTerminateThread(Sender: TObject);

// Occurs after the thread's Execute method has returned and before the thread is destroyed.
// Write an OnTerminate event handler to execute code after the thread finishes executing.
// The OnTerminate event handler is called in the context of the main VCL thread, which means
// VCL methods and properties can be called freely. The thread object may also be freed
// within the event handler.

Var S:String;


Begin
   S:=OwnerName;
   Free;
   writelnConsole('TTimerThread-> Freed '+IntToHex(FTHreadID,4)+' Owner='+S);
end;


///////////////// ///////////////// ///////////////// /////////////////
///////////////// ///////////////// ///////////////// /////////////////


constructor THiResTimer.Create(AOwner: TComponent);
begin
 inherited Create(AOwner);
 FEnabled   :=False;
 FInterval  :=1000;
 FResolution:=100;
 FOnTimer   :=Nil;
 timerThread:=Nil;
 timerThreadDestroyed:=True;
 TimerCriticalSection:=TCriticalSection.Create;

 Inc(NbreTimerHires);
 writelnConsole('');
 writelnConsole('THiResTimer-> creating HiresTimer .... '+InttoStr(NbreTimerHires));

end;

//Destroy defined by TObject does nothing special, however memory deallocation
// is handled automatically when Destroy is called. Descendant objects usually
// define a destructor that is customized to destroy that particular kind of object.
//When declaring a Destroy method in a descendant object class, always add the override
// directive to the declaration and call the inherited Destroy as the
// last statement in the overriding method. Since Destroy is a virtual method,
// overriding it ensures that the proper inherited behavior occurs.
//Note:	If an exception escapes from the constructor, the destructor is called
// to destroy the partially constructed object instance that failed to initialize
// completely. Therefore, destructors should check that allocated resources,
// such as handles, were actually allocated before trying to release them,
//since their value might be zero.
//Destroy should be implemented so that it calls Free on all sub-objects c
// reated within the object’s constructor (that is, allocated by the constructor).
// Unlike Destroy, Free provides a safeguard when destroying objects that are nil.

destructor THiResTimer.Destroy;
 Var S:String;

begin
 FEnabled:=False;

 writelnConsole('THiResTimer-> Killing HiresTimer : '+self.name);

 try
   UpdateTimer;  // Destroy
 except
 end;

 TimerCriticalSection.Free;
 S:=Self.Name; // a cause du destroy...

 writelnConsole('THiResTimer->  will kill HiresTimer : '+s);


 inherited Destroy;
 Dec(NbreTimerHires); // Var globale, pas de danger ici

 writelnConsole('THiResTimer->  killed  : '+s);
 writelnConsole('');
end;





procedure THiResTimer.UpdateTimer;


 procedure CloseTimer;
 var CurrentThreadID:DWord;
     TimerThreadID:DWord;


 begin

  //End of timer
  CurrentThreadID:=0;
  
  if not timerThreadDestroyed then
  begin
   Try
     CurrentThreadID:=GetCurrentThreadID;

     //Destroy the timer
     If timeKillEvent(TimerID)<>TIMERR_NOERROR then
      writelnConsole('THiResTimer->Unable to kill timer : '+IntToHex(CurrentThreadID,4)+'  '+self.name);

     //Destroy the receiver thread

     TimerThreadID:=timerThread.ThreadIDA;
     timerThread.Terminate; //Ask thread to be stopped

     writelnConsole('THiResTimer->Set Last Event .. to terminate thread : '+IntToHex(CurrentThreadID,4)+'  '+self.name);
     SetEvent(TimerEvent); // debloque le WaitForSingleObject du thread


     //Waits for the end of the timer procedure call (if we are not in same thread)
     //Waits that the thread terminates

     if CurrentThreadID<>TimerThreadID then
      if (CurrentThreadID=MainThreadID) then
      begin
       while (WAIT_TIMEOUT=WaitForSingleObject(TimerEndEvent,200)) do
        begin

         writelnConsole('THiResTimer->Application.ProcessMessages '+IntToHex(CurrentThreadID,4)+'  '+self.name);
         Application.ProcessMessages;

        end;
      end
      else
       begin
        writelnConsole('THiResTimer->Waits that thread terminates completly : '+IntToHex(CurrentThreadID,4)+'  '+self.name);
        //WaitForSingleObject(TimerEndEvent,INFINITE); //DeadLock here....
        while (WAIT_TIMEOUT=WaitForSingleObject(TimerEndEvent,3000)) do
         begin
         writelnConsole('THiResTimer->Application.ProcessMessages '+IntToHex(CurrentThreadID,4)+'  '+self.name);
         Application.ProcessMessages;     //debug.....
        end;
       end;

     writelnConsole('THiResTimer-> '+self.name+' :: HiresTimer to be Killed -> '+IntToHex(TimerThreadID,4)+', current thread -> '+IntToHex(CurrentThreadID,4)+' Main thread = '+IntToHex(MainThreadID,4)+'  '+self.name);

     //Close the timer end event
     CloseHandle(TimerEndEvent);
     //Close the timer event
     CloseHandle(TimerEvent);

     timerThreadDestroyed:=True; //Destroyed ....
   Except
     writelnConsole('THiResTimer-> CloseTimer Exception ->'+IntToHex(CurrentThreadID,4)+'  '+self.name);
   end;

  end;
 end;


 ////////////// ******* ////////////// ******* ////////////// ******* ////////////// *******
 ////////////// ******* ////////////// ******* ////////////// ******* ////////////// *******
 ////////////// ******* ////////////// ******* ////////////// ******* ////////////// *******

 procedure OpenTimer;
 begin
  //Create timer under the following condition

  if (FInterval>0) and FEnabled and Assigned(FOnTimer) then
  begin

   //Create a Timer end event
   TimerEndEvent:=CreateEvent(nil,FALSE,FALSE,nil);

   if TimerEndEvent=0 then
    raise EHiResTimer.Create('THiResTimer-> Unable to create an End event timer : Out of resources!');

   ThreadTimerHasStartedEvent  :=CreateEvent(nil,FALSE,FALSE,nil);

   try
   //Create a Timer event
   TimerEvent:=CreateEvent(nil,FALSE,FALSE,nil);
   if TimerEvent=0 then
    raise EHiResTimer.Create('THiResTimer-> Unable to create a timer: Out of resources!');
   except
    CloseHandle(TimerEndEvent);
    raise;
   end;

   if timeGetDevCaps(@Timecapas,sizeof(TIMECAPS))<>TIMERR_NOERROR then
    begin

    end;

   writelnConsole('THiResTimer-> Timer WperiodMin : '+IntToStr(Timecapas.wPeriodMin));

   //Create receiver thread
   TimerThread:=TTimerThread.Create(self.name); // Suspended
   timerThreadDestroyed:=False;
   TimerThread.HiResTimer:=self;
   TimerThread.OwnerName:=self.name;

   // Ce truc cree un thread specifique qui ne disparait jamais...
   // Note  The multimedia timer runs in its own thread.
   TimerID:=timeSetEvent(FInterval,FResolution,@TimerCallback,DWORD(TimerEvent),TIME_PERIODIC);

   TimerThread.Resume; // Start thread

   WaitForSingleObject(ThreadTimerHasStartedEvent,INFINITE); //Attend un event qui signale que le thread timer a bien commencé (Oct 2001)
   CloseHandle(ThreadTimerHasStartedEvent);

   writelnConsole('THiResTimer-> TimerID '+IntToHex(TimerID,4)+' in '+IntToHex(GetCurrentThreadID,4)+' '+self.name);



   if TimerID=0 then
   begin
    CloseTimer;
    raise EHiResTimer.Create('THiResTimer-> Unable to create a timer: Out of resources!');
   end;

  end;
 end;

begin
 If timerThread=Nil then WritelnConsole('THiResTimer-> Update close/open Timer  : '+self.name+ 'Thread is nil') else
                         WritelnConsole('THiResTimer-> Update close/open Timer  : '+self.name+ 'Thread is NOT nil');

 TimerCriticalSection.Enter;

 try

  CloseTimer;

  OpenTimer;

 finally
 TimerCriticalSection.Leave;
 end;
end;


procedure THiResTimer.SetEnabled(Value:Boolean);
begin
 if Value<>FEnabled then
 begin

  If Value then WritelnConsole('THiResTimer-> Update Timer to TRUE : '+self.name)
           else WritelnConsole('THiResTimer-> Update Timer to FALSE : '+self.name);

  FEnabled:=Value;
  UpdateTimer;
 end;
end;

procedure THiResTimer.SetInterval(Value:Integer);
begin
 if Value <> FInterval then
 begin
  FInterval:=Value;
  UpdateTimer;
 end;
end;

procedure THiResTimer.SetResolution(Value:Integer);
begin
 if Value <> FResolution then
 begin
  FResolution:=Value;
  UpdateTimer;
 end;
end;

procedure THiResTimer.SetOnTimer(Value:TNotifyEvent);
begin
 if not assigned(Value) then SetEnabled(False);
 FOnTimer:=Value;
end;


procedure Register;
begin
 RegisterComponents('Prism',[THiResTimer]);
end;

end.
