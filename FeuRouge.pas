unit FeuRouge;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm_FeuRouge = class(TForm)
    Label_Attention: TLabel;
    Button_Renoncer: TButton;
    Button_Perseverer: TButton;
    Label_Conseil: TLabel;
    Image_FeuRouge: TImage;
    Label_Message: TLabel;
    Label_automatique: TLabel;
    Label_CompteARebours: TLabel;
    Label_secondes: TLabel;
    Image_FeuEteint: TImage;
    procedure Button_RenoncerClick(Sender: TObject);
    procedure Button_PersevererClick(Sender: TObject);
    procedure validationCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_FeuRouge: TForm_FeuRouge;
  Daccord_Renoncer, Daccord_Perseverer : Boolean;
  
implementation

{$R *.dfm}


procedure TForm_FeuRouge.Button_RenoncerClick(Sender: TObject);
begin
  Daccord_Renoncer:=true
end;

procedure TForm_FeuRouge.Button_PersevererClick(Sender: TObject);
begin
  Daccord_Perseverer:=true
end;

procedure TForm_FeuRouge.validationCreate(Sender: TObject);
begin
Daccord_Renoncer:=false;
Daccord_Perseverer:=false;
end;


end.
