unit FeuVert;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm_FeuVert = class(TForm)
    Label_Prudence: TLabel;
    Label_Message: TLabel;
    Button_Confirmer: TButton;
    Button_Annuler: TButton;
    Label_Conseil: TLabel;
    Image_FeuVert: TImage;
    Label_Automatique: TLabel;
    Label_secondes: TLabel;
    Label_CompteARebours: TLabel;
    Image_FeuEteint: TImage;
    procedure Button_ConfirmerClick(Sender: TObject);
    procedure Button_AnnulerClick(Sender: TObject);
    procedure validationCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_FeuVert: TForm_FeuVert;
  Daccord_Confirmer, Daccord_Annuler : Boolean;
  
implementation

{$R *.dfm}


procedure TForm_FeuVert.Button_ConfirmerClick(Sender: TObject);
begin
  Daccord_Confirmer:=true
end;

procedure TForm_FeuVert.Button_AnnulerClick(Sender: TObject);
begin
  Daccord_Annuler:=true
end;

procedure TForm_FeuVert.validationCreate(Sender: TObject);
begin
Daccord_Confirmer:=false;
Daccord_Annuler:=false;
end;


end.
