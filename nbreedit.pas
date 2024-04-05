unit NbreEdit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  NbreEdit = class(TEdit)
  private
    { Private declarations }
   FMax     : Double;
   FMin     : Double;
   FTypeData: Byte;
   FOnChange: TNotifyEvent;
   FOnExit  : TNotifyEvent;
   Texte    : TCaption;
   procedure FSetText  (_Text :TCaption);
   procedure SelfChange  (Sender: TObject);
   procedure OnExitChange(Sender: TObject);
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published-déclarations }
   property ValMax: Double Read FMax Write FMax;
   property ValMin: Double Read FMin Write FMin;
   property TypeData: Byte Read FTypeData Write FTypeData;
   property Text write FSetText;
   property OnChange: TNotifyEvent read FOnChange write FOnChange;
   property OnExit  : TNotifyEvent read FOnExit   write FOnExit;
  end;

procedure Register;

implementation
Resourcestring
 S_InvalidChr ='Entrée incorrecte (caractères A-Z, ou a-z sont interdits) !';
 S_TooMuch    ='Nombre trop élevé par rapport à : ';
 S_TooLow     ='Nombre trop faible par rapport à : ';


Const
 IntData   =1;
 FloatData =2;
 UnkData   =0;
 ColorError=$024444FF;



constructor NbreEdit.Create(AOwner: TComponent);
begin
 inherited Create(AOwner);
 inherited OnChange:=@SelfChange;
 inherited OnExit  :=@OnExitChange;

 FOnChange         :=Nil;
 FOnexit           :=Nil;
end;


procedure NbreEdit.SelfChange(Sender: TObject);
const NbDefault =542180454;
      NbDefaultR=12545.28778878;

var   Test    : Double;
      Code    : Integer;
      OldColor: TColor;

begin
 case TypeData of

        UnkData:begin
                 If (Text<>'') and (Text<>'-') then
                 begin
                   If (StrToIntDef  (Text,NbDefault )=NbDefault ) and
                      (StrToFloatDef(Text,NbDefaultR)=NbDefaultR) then
                   begin
                     // Both int and Double faulted !!
                     OldColor  :=Self.Color;
                     Self.Color:=ColorError;
                     MessageDlg(S_InvalidChr,MtError,[MbOK],0);
                     Text      :=Texte;
                     Self.Color:=OldColor;
                   end;
                 end;
        end;

        IntData:begin
                   if (Text<>'') and (Text<>'-') and (StrToIntDef(Text,NbDefault)=NbDefault) then
                   begin
                      OldColor  :=Self.Color;
                      Self.Color:=ColorError;
                      MessageDlg(S_InvalidChr,MtError,[MbOK],0);
                      Text      :=Texte;
                      Self.Color:=OldColor;
                   end
                   else
                   Texte:=Text;
        end;

        FloatData:begin
                     Val(Text,Test,Code);

                     if (Text<>'') and (Text<>'-') and (Text[Length(Text)]<>'.') and (Code<>0) then
                     begin
                      OldColor  :=Self.Color;
                      Self.Color:=ColorError;
                      MessageDlg(S_InvalidChr,MtError,[MbOK],0);
                      Self.Color:=OldColor;
                      Text:=Texte;
                     end
                     else
                     Texte:=Text;
        end;

 end;

 if Assigned(FOnchange) then
  FOnChange(Sender);
end;



Procedure NbreEdit.OnExitChange(Sender: TObject);
const NbDefault =542180454;
      NbDefaultR=12545.28778878;

var   Test    : Double;
      Code    : Integer;
      OldColor: TColor;

begin
  case TypeData of
      IntData:begin
                      If (Text<>'') and (FMax>Fmin) and (StrToIntDef(Text,NbDefault)>FMax) then
                      begin
                       OldColor  :=Self.Color;
                       Self.Color:=ColorError;
                       MessageDlg(S_TooMuch+Inttostr(Round(FMax)),MtError,[MbOK],0);
                       Text      :=Inttostr(Round(FMax));
                       Self.Color:=OldColor;
                      end
                      else
                      if (Text<>'') and (FMax>Fmin) and (StrToIntDef(Text,NbDefault)<FMin) then
                      begin
                       OldColor  :=Self.Color;
                       Self.Color:=ColorError;
                       MessageDlg(S_TooLow+Inttostr(Round(FMin)),MtError,[MbOK],0);
                       Text      :=Inttostr(Round(FMin));
                       Self.Color:=OldColor;
                      end
                      else
                      Texte:=Text;
      end;
     FloatData:begin
                      Val(Text,Test,Code);

                      If (Text<>'')  and (FMax>Fmin) and (Text<>'-') and
                         (Text[Length(Text)]<>'.') and (Test>FMax) then
                      begin
                       OldColor  :=Self.Color;
                       Self.Color:=ColorError;
                       MessageDlg(S_TooMuch+Floattostr(FMax),MtError,[MbOK],0);
                       Self.Color:=OldColor;
                       Text      :=Floattostr(FMax);
                      end
                      else
                      if (Text<>'')  and (FMax>Fmin) and (Text<>'-') and
                         (Text[Length(Text)]<>'.') and (Test<FMin) then
                      begin
                       OldColor  :=Self.Color;
                       Self.Color:=ColorError;
                       MessageDlg(S_TooLow+Floattostr(FMin),MtError,[MbOK],0);
                       Self.Color:=OldColor;
                       Text      :=Floattostr(FMin);
                      end
                      else
                      Texte:=Text;
     end;
  end;

  If Assigned(FOnExit) then
   FOnExit(Sender);
end;



procedure NbreEdit.FSetText(_Text:TCaption);
begin
 Texte         :=_Text;
 inherited Text:=_Text;
end;

procedure Register;
begin
  RegisterComponents('Prism',[NbreEdit]);
end;

end.
