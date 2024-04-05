unit Editnbre;
{R+}

Interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  NbreEdit = class(TEdit)
  private
    { Private-déclarations }
   FMax: Double;
   FMin: Double;
   FTypeData: Byte;
   FOnChange: TNotifyEvent;
   Texte: TCaption;
   procedure FSetText(Tex:TCaption);
   procedure SelfChange(Sender: TObject);

  protected
    { Protected-déclarations }
  public
    { Public-déclarations }
   constructor Create(AOwner: TComponent); override;
  published
    { Published-déclarations }
   property ValMax: Double Read FMax Write FMax;
   property ValMin: Double Read FMin Write FMin;
   property TypeData: Byte Read FTypeData Write FTypeData;
   property Text write FSetText;
   property OnChange: TNotifyEvent read FOnChange write FOnChange;
  end;

procedure Register;

implementation

Resourcestring
 S_214='Entrée incorrecte !';
 S_215='Nombre trop élevé !';
 S_216='Nombre trop faible !';

procedure Register;
begin
  RegisterComponents('Prism', [NbreEdit]);
end;

constructor NbreEdit.Create(AOwner: TComponent);
begin
 inherited Create(AOwner);
 inherited OnChange:=SelfChange;
 FOnChange:=Nil;
end;

procedure NbreEdit.SelfChange(Sender: TObject);
const NbDefault=542180454;
var   Test: Double;
      Code: Integer;
begin
 case TypeData of
  1:begin
     if (Text<>'') and (StrToIntDef(Text,NbDefault)=NbDefault) then
     begin
      MessageDlg(S_214,MtError,[MbOK],0);
      Text:=Texte;
     end
     else
     begin
      if (Text<>'') and (StrToIntDef(Text,NbDefault)>FMax) then
      begin
       MessageDlg(S_215,MtError,[MbOK],0);
       Text:=Texte;
      end
      else
      if (Text<>'') and (StrToIntDef(Text,NbDefault)<FMin) then
      begin
       MessageDlg(S_216,MtError,[MbOK],0);
       Text:=Texte;
      end
      else
      Texte:=Text;
     end;
    end;
  2:begin
     val(Text,Test,Code);
     if (Text<>'') and (Text<>'-') and (Text[Length(Text)]<>'.') and (Code<>0) then
     begin
      MessageDlg(S_214,MtError,[MbOK],0);
      Text:=Texte;
     end
     else
     begin
      if (Text<>'') and (Text<>'-') and (Text[Length(Text)]<>'.') and (Test>FMax) then
      begin
       MessageDlg(S_215,MtError,[MbOK],0);
       Text:=Texte;
      end
      else
      if (Text<>'') and (Text<>'-') and (Text[Length(Text)]<>'.') and (Test<FMin) then
      begin
       MessageDlg(S_216,MtError,[MbOK],0);
       Text:=Texte;
      end
      else
       Texte:=Text;
     end;
    end;
 end;

 if Assigned(FOnchange) then
  FOnChange(Sender);
end;

procedure NbreEdit.FSetText(Tex:TCaption);
begin
 Texte:=Tex;
 inherited Text:=Tex;
end;

end.
