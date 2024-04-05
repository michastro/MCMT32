unit FinderCom_Unit;
{R+}

(*
  Cette unite sert a mettre dans un thread separe la detection des COMS
  Evite ainsi le blocage total du programme !
*)


interface

Uses Classes,scan_mcmt;

Type

     TFinderComThread=Class(TThread)
       Private
       FNumCOM:Byte;
       Protected
       Procedure Execute; override;
       public
       Found_MCMT    : Boolean;
       HasFocus      : Boolean;
       ComFoundNum   : Byte;
       TmpPorts      : TStringList;
       Form_scan_mcmt: TForm_scan_mcmt;
       Constructor Create;  Reintroduce;
       Procedure   UpdateComSearched;
     end;


Implementation

Uses COMM,VarGlobal,Windows,SysUtils,Controls,Forms;

Constructor TFinderComThread.create;
Const
 CreateSuspended=True;

begin
 Inherited create(CreateSuspended);
 Found_MCMT                 :=False;
 HasFocus                   :=False;
end;


Procedure TFinderComThread.UpdateComSearched;
Begin
  Form_scan_mcmt.Panel_Info.Caption := 'Recherche MCMT sur COM ' + inttostr(FNumCOM);
  Form_scan_mcmt.Refresh;
End;


Procedure TFinderComThread.Execute;
Var
   Ok    : Boolean;
   c     : Integer;
   Hcom  : Thandle;
   Defaut: Integer;

begin

  Defaut     :=FNumCom;
  ComFoundNum:=0;
  Synchronize(UpdateComSearched);


  // Essaie sur NUMCOM, le port COM deja utilisé
  Open_Cod_Eng(FNumCOM,ok); // ouvrir le port COM sur NumCOM var Globale

  if ok then
  begin
    Set_Timeout(TimeOutMs_ConnectionsRead_detc,TimeOutMs_ConnectionsWrite);
    Try
      if deviceready(C_Alpha)=1 then
      begin
        found_MCMT := True;
//      HasFocus   :=(deviceready(Hcom,2)=1);
        HasFocus   := False;
        ComFoundNum:= FNumCOM;
      end;
    finally
    CloseCom;
    end;
  end;


  if not found_MCMT then // Sinon on scanne sur les autres ports dispo
  begin
    c := 0;

    while (c<TmpPorts.Count) and not Terminated do
    begin

      If (Defaut<>strtoint(TmpPorts[c])) then
      begin

          FNumCom := strtoint(TmpPorts[c]);
          Synchronize(UpdateComSearched);


            Try
            Open_Cod_Eng(FNumCom,ok); // ouvrir le port COM

            If Ok then
            begin

             Try
             if not terminated then
             Begin
                 Set_Timeout(TimeOutMs_ConnectionsRead_detc,TimeOutMs_ConnectionsWrite);

                  If deviceready(C_Alpha) = 1 then
                  begin
                    found_MCMT := True;
                    c          := TmpPorts.Count;
                    ComFoundNum:= FNumCOM;
                    //HasFocus:=(deviceready(Hcom,2)=1);
                    HasFocus   := False;
                  end;
             End;
             finally
              CloseCom;
             end;

            end
            else
            Sleep(1000);

            except;
            end;

            Sleep(100);

      end;

      Inc(c);

    end;  //While

  end;
end;


end.
