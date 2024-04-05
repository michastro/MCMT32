unit PanelLongLat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, NumberEdit;

type

THexa = record
    deg,min,sec,sec100:Byte;
    Positif:Boolean;
end;

TSiteGeo = record
   NomLieu:String;
   Pays   :String;
   Altitude:Double;
   Latitude:Thexa;
   Longitude:Thexa;
end;


  TPanelLongLat = class(TPanel)
  private
    { Private declarations }
    FSiteGeo:TSiteGeo;

    FReadOnly :Boolean;
    FOnChange :TNotifyEvent;
    AutorizeEventEdifChg:Boolean;

    procedure UpdtateSiteGeo(SiteGeo:TSiteGeo);
    Function  GetSiteGeo    :TSiteGeo;
    Function  GetLatOnly    :Double;
    Function  GetLongOnly   :Double;

  protected
    { Protected declarations }
    procedure EditChange(Sender:Tobject);
    procedure ChangeRead(IsRO:Boolean);
  public
    LabelSite:Tlabel;
    LSite:TEdit;

    labelLL :Tlabel;
    labelDL :Tlabel;  EditDDL:TNumberEdit;
    labelML :Tlabel;  EditDML:TNumberEdit;
    labelSL :Tlabel;  EditDSL:TNumberEdit;
    CheckBoxNord:TCheckBox;

    labelLLo :Tlabel;
    labelDLo :Tlabel;  EditDDLo:TNumberEdit;
    labelMLo :Tlabel;  EditDMLo:TNumberEdit;
    labelSLo :Tlabel;  EditDSLo:TNumberEdit;
    CheckBoxEst:TCheckBox;

    labelAlt :Tlabel;  EditAlt:TNumberEdit;
    LabelCountry:Tlabel;LCountry:TEdit;

    constructor Create(AOwner:TComponent);  override;
    { Public declarations }
  published
    { Published declarations }
    Property SiteGeo   : TSiteGeo read GetSiteGeo write UpdtateSiteGeo;
    Property latitude  : Double   read GetLatOnly;
    Property longitude : Double   read GetLongOnly;
    property OnChange  : TNotifyEvent read FOnChange write FOnChange;
    property ReadOnly  : Boolean read FReadOnly write ChangeRead;
  end;

procedure Register;

implementation

Uses math;

// START resource string wizard section
resourcestring
  R_Latitude  = 'Latitude';
  R_Longitude = 'Longitude';
  S_1000      = 'Lieu';
  S_1001      = 'Nord';
  S_1002      = 'Est';
  S_1003      = 'Altitude (m)';
  S_1004      = 'Pays';
  S_1005      = 'Décalage (h)';
  S_1006      = 'Aucun';

// END resource string wizard section


procedure Register;
begin
  RegisterComponents('Prism', [TPanelLongLat]); // do not localize
end;


procedure TPanelLongLat.UpdtateSiteGeo(SiteGeo:TSiteGeo);
Begin
  FSiteGeo:=SiteGeo;

  LSite.Text:=SiteGeo.NomLieu;

  EditDDL.Text:=InttoStr(SiteGeo.Latitude.deg);
  EditDML.Text:=InttoStr(SiteGeo.Latitude.min);
  EditDSL.Text:=InttoStr(SiteGeo.Latitude.sec);

  CheckBoxNord.Checked:= SiteGeo.Latitude.Positif;

  EditDDLo.Text:=InttoStr(SiteGeo.Longitude.deg);
  EditDMLo.Text:=InttoStr(SiteGeo.Longitude.min);
  EditDSLo.Text:=InttoStr(SiteGeo.Longitude.sec);
  CheckBoxEst.Checked := Not SiteGeo.Longitude.Positif;

  EditAlt.Text := InttoStr(Round(SiteGeo.Altitude));
  LCountry.Text:= SiteGeo.Pays;

end;


Function TPanelLongLat.GetSiteGeo;
Var BSiteGeo:TSiteGeo;
Begin
    // Ce bloc peut faire monter une exception

    BSiteGeo.NomLieu:=LSite.Text;

    BSiteGeo.Latitude.deg:=StrToInt(EditDDL.Text);
    BSiteGeo.Latitude.min:=StrToInt(EditDML.Text);
    BSiteGeo.Latitude.sec:=StrToInt(EditDSL.Text);
    BSiteGeo.Latitude.Positif:=CheckBoxNord.Checked;

    BSiteGeo.Longitude.deg := StrToInt(EditDDLo.Text);
    BSiteGeo.Longitude.min := StrToInt(EditDMLo.Text);
    BSiteGeo.Longitude.sec := StrToInt(EditDSLo.Text);
    BSiteGeo.Longitude.Positif:= not CheckBoxEst.Checked;

    BSiteGeo.Altitude:=StrToInt(EditAlt.Text);
    BSiteGeo.Pays:=LCountry.Text;


    Result:=BSiteGeo;
    FSiteGeo:=BSiteGeo;
end;

procedure TPanelLongLat.ChangeRead(IsRO:Boolean);
Begin
 FReadOnly:=IsRO;
 If FReadOnly then
  begin
    LSite.Enabled:=False;

    EditDDL.Enabled:=False;
    EditDML.Enabled:=False;
    EditDSL.Enabled:=False;

    CheckBoxNord.Enabled:=False;

    EditDDLo.Enabled:=False;
    EditDMLo.Enabled:=False;
    EditDSLo.Enabled:=False;

    CheckBoxEst.Enabled:=False;

    EditAlt.Enabled:=False;
    LCountry.Enabled:=False;
  end
 else
  begin
    LSite.Enabled:=True;

    EditDDL.Enabled:=True;
    EditDML.Enabled:=True;
    EditDSL.Enabled:=True;

    CheckBoxNord.Enabled:=True;

    EditDDLo.Enabled:=True;
    EditDMLo.Enabled:=True;
    EditDSLo.Enabled:=True;

    CheckBoxEst.Enabled:=True;

    EditAlt.Enabled :=True;
    LCountry.Enabled:=True;

 end;
end;

procedure TPanelLongLat.EditChange(Sender:Tobject);
Begin
 If AutorizeEventEdifChg then
  begin
   AutorizeEventEdifChg:=False;
  end;
end;


constructor TPanelLongLat.Create(AOwner:TComponent);
Begin
 inherited Create(AOwner);
 Self.Width :=219;
 Self.Height:=125;
 Self.caption:='';

 LabelSite:=Tlabel.create(self);
 LabelSite.Parent:=Self;
 LabelSite.Top :=8;
 LabelSite.Left:=4;
 LabelSite.Caption:=S_1000;

 LSite       :=TEdit.Create(Self);
 LSite.Parent:=Self;
 LSite.Left  :=54;
 LSite.Top   :=5;
 LSite.Width :=150;

 ///////

 labelLL:=Tlabel.create(self);
 labelLL.Parent:=Self;
 labelLL.Left:=4;
 labelLL.Top :=32;
 labelLL.Caption:=R_Latitude;

 EditDDL:=TNumberEdit.Create(Self);
 EditDDL.Parent:=Self;
 EditDDL.Left  :=64;
 EditDDL.Top   :=30;
 EditDDL.Width :=23;
 EditDDL.TypeValue:=int;
 EditDDL.MaxValue:= 90;
 EditDDL.MinValue:=-90;
 EditDDL.Maxlength:=3;
// EditMois.Height:=HeighTEdit;
// EditMois.OnChange:=EditChange;

 labelLL:=Tlabel.create(self);
 labelLL.Parent:=Self;
 labelLL.Left:=88;
 labelLL.Top :=30;
 labelLL.Caption:='°';

 EditDML:=TNumberEdit.Create(Self);
 EditDML.Parent:=Self;
 EditDML.Left  :=94;
 EditDML.Top   :=30;
 EditDML.Width :=23;
 EditDML.TypeValue:=int;
 EditDML.MaxValue:=59;
 EditDML.MinValue:=0;
 EditDML.Maxlength:=2;

 labelML:=Tlabel.create(self);
 labelML.Parent:=Self;
 labelML.Left:=120;
 labelML.Top :=30;
 labelML.Caption:='''';

 EditDSL:=TNumberEdit.Create(Self);
 EditDSL.Parent:=Self;
 EditDSL.Left  :=126;
 EditDSL.Top   :=30;
 EditDSL.Width :=23;
 EditDSL.TypeValue:=int;
 EditDSL.MaxValue:=59;
 EditDSL.MinValue:=0;
 EditDSL.Maxlength:=2;

 labelSL:=Tlabel.create(self);
 labelSL.Parent:=Self;
 labelSL.Left:=152;
 labelSL.Top :=30;
 labelSL.Caption:='"';

 CheckBoxNord:=TCheckBox.create(self);
 CheckBoxNord.Parent:=Self;
 CheckBoxNord.Left:=158;
 CheckBoxNord.Top :=34;
 CheckBoxNord.Caption:=S_1001;
 CheckBoxNord.Width:=57;

 /////////////

 labelLLo:=Tlabel.create(self);
 labelLLo.Parent:=Self;
 labelLLo.Left:=4;
 labelLLo.Top :=56;
 labelLLo.Caption:=R_Longitude;

 EditDDLo:=TNumberEdit.Create(Self);
 EditDDLo.Parent:=Self;
 EditDDLo.Left  :=56;
 EditDDLo.Top   :=54;
 EditDDLo.Width :=31;
 EditDDLo.TypeValue:=int;
 EditDDLo.MaxValue:= 180;
 EditDDLo.MinValue:=-180;
 EditDDLo.Maxlength:=4;
// EditMois.Height:=HeighTEdit;
// EditMois.OnChange:=EditChange;

 labelLLo:=Tlabel.create(self);
 labelLLo.Parent:=Self;
 labelLLo.Left:=88;
 labelLLo.Top :=54;
 labelLLo.Caption:='°';

 EditDMLo:=TNumberEdit.Create(Self);
 EditDMLo.Parent:=Self;
 EditDMLo.Left  :=94;
 EditDMLo.Top   :=54;
 EditDMLo.Width :=23;
 EditDMLo.TypeValue:=int;
 EditDMLo.MaxValue:=59;
 EditDMLo.MinValue:=0;
 EditDMLo.Maxlength:=2;

 labelMLo:=Tlabel.create(self);
 labelMLo.Parent:=Self;
 labelMLo.Left:=120;
 labelMLo.Top :=54;
 labelMLo.Caption:='''';

 EditDSLo:=TNumberEdit.Create(Self);
 EditDSLo.Parent:=Self;
 EditDSLo.Left  :=126;
 EditDSLo.Top   :=54;
 EditDSLo.Width :=23;
 EditDSLo.TypeValue:=int;
 EditDSLo.MaxValue:=59;
 EditDSLo.MinValue:=0;
 EditDSLo.Maxlength:=2;

 labelSLo:=Tlabel.create(self);
 labelSLo.Parent:=Self;
 labelSLo.Left:=152;
 labelSLo.Top :=54;
 labelSLo.Caption:='"';

 CheckBoxEst:=TCheckBox.create(self);
 CheckBoxEst.Parent:=Self;
 CheckBoxEst.Left:=158;
 CheckBoxEst.Top :=54;
 CheckBoxEst.Caption:=S_1002;
 CheckBoxEst.Width:=57;

 //////////

 labelAlt:=Tlabel.create(self);
 labelAlt.Parent:=Self;
 labelAlt.Left:=4;
 labelAlt.Top :=82;
 labelAlt.Caption:=S_1003;

 EditAlt:=TNumberEdit.Create(Self);
 EditAlt.Parent:=Self;
 EditAlt.Left  :=84;
 EditAlt.Top   :=79;
 EditAlt.Width :=89;
 EditAlt.TypeValue:=int;
 EditAlt.MaxValue:=9999;
 EditAlt.MinValue:=-100;
 EditAlt.Maxlength:=4;

 //////////

 LabelCountry:=Tlabel.create(self);
 LabelCountry.Parent:=Self;
 LabelCountry.Left:=4;
 LabelCountry.Top :=106;
 LabelCountry.Caption:=S_1004;

 LCountry       :=TEdit.Create(Self);
 LCountry.Parent:=Self;
 LCountry.Left  :=84;
 LCountry.Top   :=103;
 LCountry.Width :=89;

 //////////

 AutorizeEventEdifChg:=True;
 FSiteGeo.NomLieu:=S_1006;
 FSiteGeo.Pays   :=S_1006;
 FSiteGeo.Altitude:=0;

 FSiteGeo.Latitude.deg:=0;
 FSiteGeo.Latitude.min:=0;
 FSiteGeo.Latitude.sec:=0;
 FSiteGeo.Latitude.Positif:=True;

 FSiteGeo.Longitude.deg:=0;
 FSiteGeo.Longitude.min:=0;
 FSiteGeo.Longitude.sec:=0;
 FSiteGeo.Longitude.Positif:=True;

//FSiteGeo.Decalage:=0;

 UpdtateSiteGeo(FSiteGeo);


end;


Function  TPanelLongLat.GetLatOnly    :Double;
Begin
 GetSiteGeo;
 Result:=DegToRad(
          FSiteGeo.Latitude.deg +
          FSiteGeo.Latitude.min/60 +
          FSiteGeo.Latitude.sec/3600) ;

 If Not FSiteGeo.Latitude.Positif then Result:=-Result;
end;


Function  TPanelLongLat.GetLongOnly   :Double;
Begin
 GetSiteGeo;
 Result:=DegToRad(
          FSiteGeo.Longitude.deg +
          FSiteGeo.Longitude.min/60 +
          FSiteGeo.Longitude.sec/3600) ;

 If Not FSiteGeo.Longitude.Positif then Result:=-Result;
end;

///////////////////////////////////////

end.

