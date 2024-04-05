unit COMM;

/////////////////////////////////////////////////////////////////////
///////  Prcédures de communication pour le port COM    ///////////////
//////////////////////////////////////////////////////////////////////
{$R+}
interface

uses
      Classes,
      SyncObjs,
      VarGlobal;

const
 // Constante pour communication avec les axes
 AxeZero: byte = $E0;

 //////

 TimeOutMs_ConnectionsRead :Word     = 4000;
 TimeOutMs_ConnectionsWrite:Word     = 500 ;
 PurgeCommMethod:Boolean             = False;

 //////

 TimeOutMs_ConnectionsRead_detc      = 3000; // Pour la detection de MCMT sur le port COM donné

procedure EnumComPorts(Ports:TStringList);

procedure Set_Timeout (TimeOutConstantMS_read,TimeOutConstantMS_Write:integer);

procedure Open_Cod_Eng(NumCOM:Byte;var Ok_opened: Boolean);

procedure CloseCom;

function  Deviceready(device: byte): integer;

Procedure CleanCOMs;

function  ReadEncoder(Rang_octet, device: byte): integer;

function  StopSlewing(device: byte): boolean;

function  sendcommand(command: ShortString; number: byte; device: byte): ShortString;

procedure FlushWriteRead(SendBuff: array of byte; NumbyteWrite: byte; var NbOfBytesWrite: longword;
           var RecBuff: array of byte; NumbyteRead: byte; var NbOfBytesRead: longword );

function  ReadAlphaDeltaEncoder(var AlphaRaw, DeltaRaw: LongInt): integer;


Function  GetVersionAxes(Com:Byte;Device:integer;Var Mj,Mn,Mi:Byte):Boolean;

Function  VersionOk(Mj_ra,Mn_ra,Mi_ra,Mj_dc,Mn_dc,Mi_dc:Byte):Boolean;


implementation


uses
  SysUtils, Dialogs,
  Windows, forms, Registry, Utils,MCMT_Main,Simulateur;


Var
  SectionCritiqueCOM    :TCriticalSection;
  SectionCritiqueSimulator :TCriticalSection;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Enumération des pors série dispo sur l'ordi

procedure EnumComPorts(Ports:TStringList);

Const
  PathKEYCOM='HARDWARE\DEVICEMAP\SERIALCOMM';

var
  Reg            : TRegistry;
  InfoReg        : TRegKeyInfo;
  KeyNames       : TStringList;
  I              : Integer;
  S              : String;

begin


  Reg         := TRegistry.Create;
  Try
  Reg.RootKey := HKEY_LOCAL_MACHINE;

  If Reg.OpenKeyReadOnly(PathKEYCOM) then
  Begin
   If Reg.GetKeyInfo(InfoReg) then
   begin
      KeyNames:=TStringList.create;
      Try
      Reg.GetValueNames(KeyNames);
      if (KeyNames.Count>0) then
      begin
       for I := 0 to KeyNames.Count - 1 do
       begin
        Try
        S:=Reg.ReadString(KeyNames[i]);
        Delete(S,1,3);  // Delete COM4 -> 4
        Ports.Add(S);
        Except
        End;
       end;
      end;
      Finally
      KeyNames.Free;
      End;
   end;
  end;


  Finally
  Reg.Free;
  End;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Procédure pour changer le timeout en lecture d'un port
procedure Set_Timeout(TimeOutConstantMS_read,TimeOutConstantMS_Write:integer);
var
  DCB: TDCB;
  CommTimeouts: TCommTimeouts;

begin
  GetCommState(hCom, DCB);
  with CommTimeouts do
  begin
    ReadIntervalTimeout         := 0;
    ReadTotalTimeoutMultiplier  := 0;
    ReadTotalTimeoutConstant    := TimeOutConstantMS_Read;
    WriteTotalTimeoutMultiplier := 0;
    WriteTotalTimeoutConstant   := TimeOutConstantMS_Write;
  end;
  SetCommTimeouts(hCom, CommTimeouts);
  GetCommState(hCom2, DCB);
  with CommTimeouts do
  begin
    ReadIntervalTimeout         := 0;
    ReadTotalTimeoutMultiplier  := 0;
    ReadTotalTimeoutConstant    := TimeOutConstantMS_Read;
    WriteTotalTimeoutMultiplier := 0;
    WriteTotalTimeoutConstant   := TimeOutConstantMS_Write;
  end;
  SetCommTimeouts(hCom2, CommTimeouts);
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Function CreateCharCOM(NumCom:Byte):String;
begin
 if (NumCom<10) then
  result:='COM'+IntToStr(NumCom)
 else
  result:='\\.\COM'+IntToStr(NumCom);
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Procédure pour ouvrir le port COM ; cette procédure permet de changer
// la variable *résultat* envoyée en paramètre pour stipuler si l'ouverture
// du port a réussi ou échoué ...

procedure Open_Cod_Eng(NumCOM:Byte;var Ok_opened: Boolean);
Const procName='Open_Cod_Eng';

var
  ComCh: string;
  DCB  : TDCB;


begin
  LogEnterProc(ProcName);

  if not(SimulatorEnabled) then
  begin
    ComCh    :=CreateCharCOM(NumCOM); // Definir le port COM comme COM1, COM2, ...
    Ok_opened:=False;
    Try
    // Création du HANDLE à partir duquel le port COM désiré pourra être joint :
    hCom     := CreateFile(PChar(ComCh), GENERIC_READ or GENERIC_WRITE, 0, nil, OPEN_EXISTING, 0, 0);
    if (hCom=INVALID_HANDLE_VALUE) then
    Begin
      CloseCOM;
      Exit;
    End;
    LogProc(procName,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ '+ComCh+' Opened!');
    Ok_opened:=GetCommState(hCom, DCB); // Regarde si la fonction a échoué ou non en tant que définition du port série
    if Ok_opened then // Si pas d'échec, ouverture du port série ( spécifique à chaque langage ... )
    begin
      if MCMT2021 then DCB.baudRate := 38400 else DCB.baudRate := 19200;
      DCB.ByteSize := 8 ;
      DCB.Parity   := 0 ;
      DCB.StopBits := 0 ;
      DCB.Flags    :=$01;    // No control flow
      SetCommState(hCom, DCB);       //return IO
      SetCommMask (hCom, EV_RXCHAR); //return IO
    end;
    Set_Timeout (TimeOutMs_ConnectionsRead,TimeOutMs_ConnectionsWrite);
    Sleep(100);   // Ian mcPherson
    Except
      Hcom:=0;
      LogProc(procName,ComCh+' open failed!');
    End;
  end
  else
  begin
    Ok_opened:=True;
    LogProc(procName,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Simulator Opened!');
  end;
  LogEnterProc(ProcName);
end;


////////////////////////////////////////////////////////////////////////////////////////////////////////////////

procedure CloseCom;
Const procName='CloseCom';

Begin
  if not(SimulatorEnabled) then
  begin
    Try
      if (hCom<>0) then
      begin
        CloseHandle(hCom);
        hCom := 0;
        LogProc(procName,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ COM closed!');
      end;
    Finally
    End;
  end
  else
  begin
    LogProc(procName,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Simulator closed!');
  end;
End;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Function IsInMainThread:Boolean;
Begin
 Result:=(MainThreadID=GetCurrentThreadID);
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Procedure CleanCOMs;
begin
  (*
    If a thread uses PurgeComm to flush an output buffer, the deleted characters are not transmitted.
    To empty the output buffer while ensuring that the contents are transmitted,
    call the FlushFileBuffers function (a synchronous operation).
    Note, however, that FlushFileBuffers is subject to flow control
    but not to write time-outs, and it will not return until all pending write
    operations have been transmitted.
  *)

  if not(SimulatorEnabled) then
  begin
    If PurgeCommMethod then
    (* Si le MOXA n'est pas en MODE fastFLush : ca plante en ne rendant pas la main !*)
     PurgeComm(hCom, PURGE_TXABORT + PURGE_RXABORT + PURGE_TXCLEAR + PURGE_RXCLEAR)
    else
      FlushFileBuffers(Hcom);
  end;
end;



////////////////////////////////////////////////////////////////////////////////////////////////////////////////
(*
Ici le SEUL endroit ou l'acces au port COM est réalisé (Writefile / Readfile
*)

procedure FlushWriteRead(SendBuff          : array of byte;
                         NumbyteWrite      : byte;
                         var NbOfBytesWrite: longword;

                         var RecBuff       : array of byte;
                         NumbyteRead       : byte;
                         var NbOfBytesRead : longword);

Const
     procName='FlushWriteRead';

Var  I       :Integer;
     Sin,Sout:String;
     S       :String;
     RecBufL :Integer;
     SndBufL :Integer;
     RecBufp : array[0..15] of byte;
     SendBufp: array[0..3] of byte;

begin
      LogEnterproc(procName);

      SectionCritiqueCOM.Enter;
      Try
      Try

      RecBufL:=Length(RecBuff);
      If (NumbyteRead>RecBufL) then
        Raise Exception.create(Format('FlushWriteRead -> Receive Buffer overflow  (%d>%d) !',[NumbyteRead,RecBufL]));

      SndBufL:=Length(SendBuff);
      If (NumbyteWrite>SndBufL) then
       Raise Exception.create(Format('FlushWriteRead -> Write Buffer overflow  (%d>%d) !',[NumbyteWrite,SndBufL]));


      NbOfBytesRead:=0;

      If (SendBuff[1] = $F0) then
        if (SendBuff[0] = $E0) then Sleep(100)
        else
        if (SendBuff[0] = $E1) then Sleep(100);

        CleanCOMs;
        if (SendBuff[1] <> $72) then
        begin
          WriteFile(hCom, SendBuff, NumbyteWrite, NbOfBytesWrite, nil); // Send order
          ReadFile (hCom, RecBuff,  NumbyteRead,  NbOfBytesRead,  nil);
        end
        else
        begin
          SendBufp[0]:=$E0;
          SendBufp[1]:=$FF;
          WriteFile(hCom, SendBufp, 2, NbOfBytesWrite, nil); // Send order
          ReadFile (hCom, RecBufp,  1,  NbOfBytesRead,  nil);
          if RecBufp[0]<>0 then  //pas en pointage, on peut envoyer
          begin
            WriteFile(hCom, SendBuff, NumbyteWrite, NbOfBytesWrite, nil); // Send order
            ReadFile (hCom, RecBuff,  NumbyteRead,  NbOfBytesRead,  nil);
          end
          else
          begin
            RecBuff[0]:=0; // on fait croire a une erreur de reception
          end;
        end;

      // Log only
      If LogEnabled then
      begin
        Sin:='';
        for I := 1 to NumbyteWrite do
        begin
         S:=Inttohex(SendBuff[i-1],2);
         Sin:=Sin+' 0x'+S;
        end;

        Sout:='';
        for I := 1 to  NbOfBytesRead do
        begin
         S:=Inttohex(RecBuff[i-1],2);
         Sout:=Sout+' 0x'+S;
        end;
        if (NbOfBytesRead=0) then Sout:='NO BYTE READ-ERROR';
        LogProc(ProcName,Format('ReadWriteCOM sent[%s] rcv[%s] -> Byte written=%d/%d  Byte read=%d/%d',[Sin,Sout,NumbyteWrite,NbOfBytesWrite,NumbyteRead,NbOfBytesRead]));
      End;

      LogEndProc(procName);
      Except
       On E:Exception do
       begin
        LogProc(ProcName,'Exception dans FlushWriteRead : '+E.message);
        Raise;
       end;
      End;

      Finally
      SectionCritiqueCOM.Leave;
      End;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Function Deviceready(device: byte): Integer;
var
    RecBuff              : array[0..15] of byte;
    SendBuff             : array[0..3] of byte;
    abyte, numbyte, retry: byte;
    NbOfBytesWrite,
    NbOfBytesRead        : LongWord;
begin
  if not(SimulatorEnabled) then
  begin
    numbyte     := 2;
    SendBuff[0] := AxeZero + device;
    SendBuff[1] := 255;
    retry       := 3;
      repeat
        FlushWriteRead(SendBuff, numbyte, NbOfBytesWrite, RecBuff, 1, NbOfBytesRead);
        abyte := RecBuff[0];
        retry := retry - 1;
      until (retry = 0) or (NbOfBytesRead <> 0);

    if abyte = 1 then deviceready := 1
    else deviceready := 0;
    if (NbOfBytesRead = 0) then
      deviceready := -1
  end
  else
    DeviceReady:=DeviceReadySimulator(device);
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function ReadAlphaDeltaEncoder(var AlphaRaw, DeltaRaw: LongInt): integer;
Const
  AxeAlpha=0;
  AxeDelta=1;
  ProcName='ReadAlphaDeltaEncoder';

begin
  LogEnterProc(ProcName);

  Try
    Result:=0;

    Try

    AlphaRaw :=            (ReadEncoder(3, AxeAlpha) shl 24);
    DeltaRaw :=            (ReadEncoder(3, AxeDelta) shl 24);
    AlphaRaw := AlphaRaw + (ReadEncoder(2, AxeAlpha) shl 16);
    DeltaRaw := DeltaRaw + (ReadEncoder(2, AxeDelta) shl 16);
    AlphaRaw := AlphaRaw + (ReadEncoder(1, AxeAlpha) shl 8);
    DeltaRaw := DeltaRaw + (ReadEncoder(1, AxeDelta) shl 8);
    AlphaRaw := AlphaRaw + (ReadEncoder(0, AxeAlpha));
    DeltaRaw := DeltaRaw + (ReadEncoder(0, AxeDelta));
    Except
     On E:Exception do
     begin
      LogProc(ProcName,'Exception dans ReadAlphaDeltaEncoder : '+E.message);
      Result:=-1;
     end;
    End;

    LogProc(ProcName,Format(' %d , %d',[AlphaRaw,DeltaRaw]));
    LogEndProc(ProcName);
  Finally
  End;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function ReadEncoder(Rang_octet, device: byte): integer;
Const
  SingleOctet=1;
  ProcName='ReadEncoder';

var
  RecBuff                      : array[0..15] of byte;
  SendBuff                     : array[0..3 ] of byte;
  abyte, numbyte, retry        : Byte;
  NbOfBytesWrite, NbOfBytesRead: LongWord;
begin
  if not(SimulatorEnabled) then
  begin
    Try
    LogEnterProc(ProcName);
    retry := 5;  // 10x le timeout !!
    Repeat

      numbyte     := 2;
      SendBuff[0] := AxeZero + device     ;
      SendBuff[1] := $F1     + Rang_octet ;

      FlushWriteRead(SendBuff, numbyte, NbOfBytesWrite, RecBuff, SingleOctet, NbOfBytesRead);

      abyte       := RecBuff[0];
      retry       := retry - 1;

    Until (retry=0) or (NbOfBytesRead<>0);

    If (NbOfBytesRead=0) then
    begin
     Logproc(procName,'Lecture codeurs, pas de données venant de MCMT32');
     Raise Exception.create('Lecture codeurs, pas de données venant de MCMT32');
    end
    else
    begin
     ReadEncoder := abyte;
     LogProc(ProcName,Format('Abyte %d',[abyte]));
    end;

    LogEndProc(ProcName);
    Except
     On E:Exception do
     begin
      Logproc(procName,'Exception dans ReadEncoder : '+E.message);
      Raise;
     end;
    end;
  end
  else
    Result:=ReadEncoderSimulator(Rang_octet,device);
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function StopSlewing(device: byte): boolean;
Const
  ProcName='StopSlewing';

var
  RecBuff      : Array[0..15] of byte;
  SendBuff     : Array[0..3] of byte;
  numbyte      : Byte;
  NbOfBytesWrite,
  NbOfBytesRead: LongWord;

begin
  if not(SimulatorEnabled) then
  begin
    LogEnterProc(ProcName);
    StopSlewing := false;
    numbyte     := 2;
    SendBuff[0] := AxeZero + device;
    SendBuff[1] := 240;
      FlushWriteRead(SendBuff, numbyte, NbOfBytesWrite, RecBuff, 1, NbOfBytesRead);

    if (NbOfBytesRead <> 0) then StopSlewing := true;
    LogEndProc(ProcName);
  end
  else
  begin
    StopSlewingSimulator(device);
    Result:=true;
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function sendcommand(command: ShortString; number: byte; device: byte): ShortString;
var
  NbOfBytesWrite, NbOfBytesRead: LongWord;

  RecBuff : array[0..255] of byte;
  SendBuff: array[0..8 ]  of byte;

  abyte, i, c, checksum: byte;
  astring              : ShortString;
  achar                : Ansichar;

begin

  sendcommand := '';
  astring     := '';
  astring     := Ansichar(AxeZero + device);
  astring     := astring + command;
  checksum    := 0;

  if SimulatorEnabled then
  begin
    sendcommand:=SendSimulator(command,device);
    exit;
  end;
  for i := 1 to 7 do
  begin
    SendBuff[i - 1] := ord(astring[i]);
  end;
  SendBuff[7]:=0;
  if SendBuff[2]>$7F then
  begin
    SendBuff[7]:=16;
    SendBuff[2]:=SendBuff[2] and $7F;
  end;
  if SendBuff[3]>$7F then
  begin
    SendBuff[7]:=SendBuff[7]+8;
    SendBuff[3]:=SendBuff[3] and $7F;
  end;
  if SendBuff[4]>$7F then
  begin
    SendBuff[7]:=SendBuff[7]+4;
    SendBuff[4]:=SendBuff[4] and $7F;
  end;
  if SendBuff[5]>$7F then
  begin
    SendBuff[7]:=SendBuff[7]+2;
    SendBuff[5]:=SendBuff[5] and $7F;
  end;
  if SendBuff[6]>$7F then
  begin
    SendBuff[7]:=SendBuff[7]+1;
    SendBuff[6]:=SendBuff[6] and $7F;
  end;
  for i := 0 to 7 do
  begin
    {$IFOPT R+}
    {$R-}
    checksum := checksum + SendBuff[i];
    {$R+}
    {$ELSE}
    checksum := checksum + SendBuff[i];
    {$ENDIF}
  end;
  SendBuff[8] := checksum and $7F;
  FlushWriteRead(SendBuff, 9, NbOfBytesWrite, RecBuff, number + 1, NbOfBytesRead);
  abyte := RecBuff[0];

  sendcommand :=ShortString(inttostr(abyte));

  astring := '';
  if (number > 0) and (abyte = 6) then
  begin
    c := 1;
    while c <> number + 1 do
    begin
      achar := Ansichar(RecBuff[c]);
      if (number = 80) and (achar = AnsiChar(13)) then
        c := 80
      else
        astring := astring + achar;
      c := c + 1;
    end;
    sendcommand := astring;
  end;

end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Function GetVersionAxes(Com:Byte;Device:integer;Var Mj,Mn,Mi:Byte):Boolean;
Var OK_COM                : Boolean;
    astring, receivestring,prov: ShortString;
    k,p                   : Integer;
Const
    procname='GetVersionAxes';
Begin
  result :=False;
  p:=0;
  if SimulatorEnabled then
  begin
    Mj:=1;
    Mn:=1;
    Mi:=1;
    result:=true;
  end
  else
  begin
    Try
      Try
        if hCom=0 then
          Open_Cod_Eng(Com,OK_COM); // Ouvrir le port COM
        If OK_COM then
        begin
          CleanCOMs;
          If deviceready(device) = 1 then
          begin
            astring       := 'V' + AnsiChar(0) + AnsiChar(0) + AnsiChar(0) + AnsiChar(0);
            if not(MCMT2021) then receivestring := sendcommand(astring,14, device)
            else receivestring := sendcommand(astring,16, device);
            If (receivestring<>'') then
            begin
              receivestring:=receivestring+chr(0);            // MCMTII v2.7.1
              For k:=length(receivestring) downto 1 do
              begin
                if receivestring[k]='.' then
                begin
                  p:=k;
                  break;
                end
                else p:=k;
              end;
              If (p=1) then
                raise Exception.Create(Format('Mauvaise version de '+Version+', est ce MCMT I [%s] ?',[receivestring]));
              prov:=Copy(String(receivestring),p+1,length(receivestring)-p);
              Mi:=StrToInt(Copy(String(receivestring),p+1,length(receivestring)-p));
              delete(receivestring,p,length(receivestring)-p+1);
              For k:=length(receivestring) downto 1 do
              begin
                if receivestring[k]='.' then
                begin
                  p:=k;
                  break;
                end
                else p:=k;
              end;
              If (p=1) then
                raise Exception.Create(Format('Mauvaise version de '+Version+', est ce MCMT I [%s] ?',[receivestring]));
              Mn:=StrToInt(Copy(String(receivestring),p+1,length(receivestring)-p));
              Delete(receivestring,p,length(receivestring)-p+1);
              For k:=length(receivestring) downto 1 do
              begin
                if receivestring[k]='V' then
                begin
                  p:=k;
                  break;
                end
                else p:=k;
              end;
              if p=1 then raise Exception.Create('');
              Mj:=StrToInt(Copy(String(receivestring),p+1,length(receivestring)-p));
              Result:=True;
            end
            else
              LogProc(ProcName,'Empty string !');
          end
          else
        end
        else
      finally
        CloseCom;
      end;
    finally
    end;
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Function VersionOk(Mj_ra,Mn_ra,Mi_ra,Mj_dc,Mn_dc,Mi_dc:Byte):Boolean;
Begin
  Result:=(Mj_ra>=1) and (Mn_ra>=1) and (Mi_ra>=1)
      and (Mj_dc>=1) and (Mn_dc>=1) and (Mi_dc>=1);
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////


Initialization
begin
  SectionCritiqueCOM   :=TCriticalSection.create;
  SectionCritiqueSimulator :=TCriticalSection.create;
end;

Finalization
begin
  SectionCritiqueCOM .Free;
  SectionCritiqueSimulator.Free;
end;

end.

