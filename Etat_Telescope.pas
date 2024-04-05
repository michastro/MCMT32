unit Etat_Telescope;

{ R+ }
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Vcl.Imaging.jpeg, VarGlobal;

type
  TForm_Etat_Telescope = class(TForm)
    RadioGroupEtatTelescope: TRadioGroup;
    validation: TButton;
    Image_Retourne_Allemande: TImage;
    Image_Pied_Allemande: TImage;
    Image_NonRetourne_Allemande: TImage;
    Image_Pied_HemisphereSud_Allemande: TImage;
    Label_Tube_Ouest_Allemande: TLabel;
    Label_Tube_Est_Allemande: TLabel;
    Label_Tube_Sous_Le_Pole_FerACheval: TLabel;
    Label_Pointage_Normal_FerACheval: TLabel;
    Image_Retourne_FerACheval: TImage;
    Image_NonRetourne_FerACheval: TImage;
    Image_Pied_FerACheval: TImage;
    Image_Pied_HemisphereSud_FerACheval: TImage;
    Label_automatique: TLabel;
    Label_CompteARebours: TLabel;
    Label_secondes: TLabel;
    procedure RadioGroupEtatTelescopeClick(Sender: TObject);
    procedure validationClick(Sender: TObject);
  private
    Flatitude: Double;
    Monture_Allemande: Boolean;

  public
    Constructor create(Aowner: Tcomponent; Latitude: Double); reintroduce;
  end;

var
  Validation_OK: Boolean;

implementation

{$R *.dfm}

Constructor TForm_Etat_Telescope.create(Aowner: Tcomponent; Latitude: Double);
begin
  Inherited create(Aowner);
  Flatitude := Latitude;
end;

procedure TForm_Etat_Telescope.RadioGroupEtatTelescopeClick(Sender: TObject);
begin

  if GerMountSetup.Monture_Allemande

  then
  begin
    Image_Pied_FerACheval.Visible := false;
    Image_Pied_HemisphereSud_FerACheval.Visible := false;
    Image_Retourne_FerACheval.Visible := false;
    Image_NonRetourne_FerACheval.Visible := false;
    Label_Tube_Sous_Le_Pole_FerACheval.Visible := false;
    Label_Pointage_Normal_FerACheval.Visible := false;

    if (Flatitude > 0) then
    begin
      Image_Pied_Allemande.Visible := true;
      Image_Pied_HemisphereSud_Allemande.Visible := false;
    end
    else
    begin
      Image_Pied_Allemande.Visible := false;
      Image_Pied_HemisphereSud_Allemande.Visible := true;
    end;

    If (RadioGroupEtatTelescope.ItemIndex = 0) then
    begin
      Image_NonRetourne_Allemande.Visible := false;
      Image_Retourne_Allemande.Visible := true;
      Label_Tube_Ouest_Allemande.Visible := false;
      Label_Tube_Est_Allemande.Visible := true;
    end
    else
    begin
      Image_NonRetourne_Allemande.Visible := true;
      Image_Retourne_Allemande.Visible := false;
      Label_Tube_Ouest_Allemande.Visible := true;
      Label_Tube_Est_Allemande.Visible := false;
    end;
  end;

  if GerMountSetup.Monture_FerACheval

  then
  begin
    Image_Pied_Allemande.Visible := false;
    Image_Pied_HemisphereSud_Allemande.Visible := false;
    Image_NonRetourne_Allemande.Visible := false;
    Image_Retourne_Allemande.Visible := false;
    Label_Tube_Ouest_Allemande.Visible := false;
    Label_Tube_Est_Allemande.Visible := false;

    if (Flatitude > 0) then
    begin
      Image_Pied_FerACheval.Visible := true;
      Image_Pied_HemisphereSud_FerACheval.Visible := false;
    end
    else
    begin
      Image_Pied_FerACheval.Visible := false;
      Image_Pied_HemisphereSud_FerACheval.Visible := true;
    end;

    If (RadioGroupEtatTelescope.ItemIndex = 0) then
    begin // retourné
      Image_NonRetourne_FerACheval.Visible := false;
      Image_Retourne_FerACheval.Visible := true;
      Label_Pointage_Normal_FerACheval.Visible := false;
      Label_Tube_Sous_Le_Pole_FerACheval.Visible := true;
    end
    else
    begin // non retourné
      Image_NonRetourne_FerACheval.Visible := true;
      Image_Retourne_FerACheval.Visible := false;
      Label_Pointage_Normal_FerACheval.Visible := true;
      Label_Tube_Sous_Le_Pole_FerACheval.Visible := false;
    end;
  end;
end;

procedure TForm_Etat_Telescope.validationClick(Sender: TObject);
begin
  Validation_OK := true
end;

end.
