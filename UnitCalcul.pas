unit UnitCalcul;

interface
Function  CalculeTSL(DateTime:TdateTime;Longitude:extended):extended;
function DegToRad(Degrees: Extended): Extended;  { Radians := Degrees * PI / 180 }
function HourToRad(Hours: Extended): Extended;  { Radians := Hours*15 * PI / 180 }
function RadToHour(Rad: Extended): Extended;  { Radians := Degrees * PI / 180 }
function RadToDeg(Radians: Extended): Extended;  { Degrees := Radians * 180 / PI }
Procedure CalculeAZAFromAlphaDelta    (Alpha,Delta,Latitude,Longitude:extended;Date:TdateTime;Var Hauteur,Azimuth,AirMass:extended);
Procedure CalculeRADECFromAZA         (Azimuth,Hauteur,Latitude,Longitude:Extended;Date:TdateTime;Var Alpha,Delta:Extended);
function ArcCos(X: Extended): Extended;
function ArcSin(X: Extended): Extended;
function ArcTan2(Y, X: Extended): Extended;
function Tan(X: Extended): Extended;

implementation
uses System.SysUtils;
function DegToRad(Degrees: Extended): Extended;  { Radians := Degrees * PI / 180 }
begin
  Result := Degrees * (PI / 180);
end;

function HourToRad(Hours: Extended): Extended;  { Radians := Degrees * PI / 180 }
begin
  Result := Hours*15 * (PI / 180);
end;

function RadToHour(Rad: Extended): Extended;  { Radians := Degrees * PI / 180 }
begin
  Result := Rad/PI*12;
end;

function RadToDeg(Radians: Extended): Extended;  { Degrees := Radians * 180 / PI }
begin
  Result := Radians * (180 / PI);
end;

function ArcCos(X: Extended): Extended;
begin
  Result := ArcTan2(Sqrt(Abs(1 - X*X)), X);
end;

function ArcSin(X: Extended): Extended;
begin
  Result := ArcTan2(X, Sqrt(Abs(1 - X*X)))
end;

function ArcTan2(Y, X: Extended): Extended;
{$IFDEF WIN32}
asm
        FLD     Y
        FLD     X
        FPATAN
{$ENDIF}
{$IFDEF WIN64}
begin
 Result:=System.math.ArcTan2(Y,X);
{$ENDIF}
end;

function Tan(X: Extended): Extended;
{$IFDEF WIN32}
asm
        FLD    X
        FPTAN
        FSTP   ST(0)      { FPTAN pushes 1.0 after result }
{$ENDIF}

{$IFDEF WIN64}
begin
 Result := System.Tangent(X);
{$ENDIF}
end;

//////////////////////////////////////////////////////////
{Function Remet2Pi(Const Angle:extended):extended;
Var cAngle,facteur:extended;
begin
  cAngle:=Angle;
  if cAngle>=PI2 then
  begin
//    cAngle:=cAngle-PI2;
    cAngle:=cAngle-trunc(cAngle/PI2)*PI2;
  end
  else
  If cAngle<0 then
  begin
//    cAngle:=cAngle-(trunc(cAngle/2/PI)-1)*2*PI;
    cAngle:=cAngle-(trunc(cAngle/PI2)-1)*PI2;
  end;
  result:=cAngle;
end; }

procedure Remet2Pi(Var Angle:extended); // Bound to 0 to 2Pi
Var
  NbTours:extended;

begin
  If (Abs(Angle)>100) then            // Can take a LOT of time for large figures
  Begin
   NbTours:=Angle/(2*Pi);
   Angle  :=Angle-(Trunc(NbTours)*(2*Pi));   // Trunc(-15.92)=-15
   Remet2pi(Angle);                          // For negative
  end
  else
  begin
    Try
     While Angle <  0    do Angle:=Angle+(2*Pi);
     While Angle >= 2*Pi do Angle:=Angle-(2*Pi);
    Except
    end;
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Procedure mc_obliqmoy(jj:extended;Var eps:extended);

(***************************************************************************)
(* Retourne la valeur de l'obliquite terrestre moyenne pour jj             *)
(***************************************************************************)
(* formule de Laskar (JM)                                                  *)
(***************************************************************************)
var
   t,u,eps0:extended;

begin
   t:=(jj-2451545.0)/36525;
   u:=t/100;
   eps0:=u*(-4680.93-u*(1.55+u*(1999.25-u*(51.38-u*(249.67-u*(39.05+u*(7.12+u*(27.87+u*(5.79+u*(2.45))))))))));
   eps0:=DegTorad((23.4392911111+eps0/3600));
   eps:=eps0;
end;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Procedure mc_nutation(jj:extended;precision:Integer;Var dpsi:extended;Var deps:extended);

(***************************************************************************)
(* Retourne la valeur de la nutation pour jj donne                         *)
(***************************************************************************)
(* precision=0 pour une incertitude de 0"5 sur dpsi 0"1 sur deps           *)
(* precision=1 pour de la tres haute precision (environ 0.01")             *)
(***************************************************************************)
Var
   t,d,m,mp,f,o,l,lp,dpsi0,deps0:extended;

Const
   DR=PI/180;

begin
   t:=(jj-2451545.0)/36525;
   o:=125.04452-1934.136261*t+0.0020708*t*t+t*t*t/450000;

   o:=o*DR;
   Remet2Pi(o);

   if (precision=0) then
   begin
      l :=280.4665+36000.7698 *t;
      lp:=218.3165+481267.8813*t;

      l:=l*DR;
      Remet2Pi(l);

      lp:=lp*DR;
      Remet2Pi(lp);

      dpsi0:=-17.20*sin(o)-1.32*sin(2*l)-0.23*sin(2*lp)+0.21*sin(2*o);
      dpsi0:=dpsi0/3600*DR;
      deps0:=9.20*cos(o)+0.57*cos(2*l)+0.10*cos(2*lp)-0.09*cos(2*o);
      deps0:=deps0/3600*DR;

   end
   else
   begin
      d :=297.85036+445267.111480*t-0.0019142*t*t+t*t*t/189474;
      m :=357.52772+35999.050340*t-0.0001603*t*t-t*t*t/300000;
      mp:=134.96298+477198.867398*t+0.0086972*t*t+t*t*t/56250;
      f :=93.27191+483202.017538*t-0.0036825*t*t+t*t*t/327270;

      d:=d*DR;
      Remet2Pi(d);

      m:=m*DR;
      Remet2Pi(m);

      mp:=mp*DR;
      Remet2Pi(mp);

      f:=f*DR;
      Remet2Pi(f);

      dpsi0:=(-171996-174.2*t)*sin(o)+(-13187-1.6*t)*sin(-2*d+2*f+2*o)
         +(-2274-0.02*t)*sin(2*f+2*o)+(2062+0.2*t)*sin(2*o)
         +(1426-3.4*t)*sin(m)+(712+0.1*t)*sin(mp);

      dpsi0:=dpsi0+((-517+1.2*t)*sin(-2*d+m+2*f+2*o)-(386-0.4*t)*sin(2*f+o)
         -301*sin(mp+2*f+2*o)+(217-0.5*t)*sin(-2*d-m+2*f+2*o)
         -158*sin(-2*d+mp)+(129+0.1*t)*sin(-2*d+2*f+o));

      dpsi0:=dpsi0+(123*sin(-mp+2*f+2*o)+63*sin(2*d)+(63+0.1*t)*sin(mp+o)
         -59*sin(2*d-mp+2*f+2*o)+(-58-0.1*t)*sin(-mp+o)-51*sin(mp+2*f+o)
         +48*sin(-2*d+2*mp)+46*sin(-2*mp+2*f+o)-38*sin(2*d+2*f+2*o));

      dpsi0:=dpsi0*1e-4/3600*DR;

      deps0:=(92025+8.9*t)*cos(o)+(5736-3.1*t)*cos(-2*d+2*f+2*o)
         +(977-0.5*t)*cos(2*f+2*o)+(-895+0.5*t)*cos(2*o)+(54-0.1*t)*cos(m)
         -7*cos(mp)+(224-0.6*t)*cos(-2*d+m+2*f+2*o)+200*cos(2*f+o);

      deps0:=deps0+((129-0.1*t)*cos(mp+2*f+2*o)+(-95+0.3*t)*cos(-2*d-m+2*f+2*o)
         -70*cos(-2*d+2*f+o)-53*cos(-mp+2*f+2*o)-33*cos(mp+o)
         +26*cos(2*d-mp+2*f+2*o)+32*cos(-mp+o)+27*cos(mp+2*f+o));

      deps0:=deps0*1e-4/3600*DR;
   end;

   dpsi:=dpsi0;
   deps:=deps0;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Function ConvertDate2Julian(Year,Month:Integer;ddday:extended):extended;
Const Origine       =2451240.5;
      Yearmax:extended=9999;
      YearMin:extended=1;
S_988='Erreur, conversion Jour Julien <-> date, la date en jours juliens doit comprise entre %1.1f et %1.1f !';

begin
 If (Year>YearMax) or (Year<YearMin) then raise EconvertError.create(Format(S_988,[YearMin,YearMax]));
 Result:=(EncodeDate(Year,Month,Trunc(ddday))+Frac(ddday)-EncodeDate(1999,03,03))+Origine;
end;

///////////////////////////////////////////////////////////////////////////////
Function Convert_TdateTime2Julian_day(DateTime:TdateTime):extended;
 Var Year,Month,dd: Word;
     day,d        : extended;
     h,m,s,ss     : word;

 Begin
   Decodedate(DateTime,Year,Month,dd);
   Decodetime(DateTime,h,m,s,ss);

   d:= s+ss/1000.0;
   d:= m+d/60.0;
   d:= h+d/60.0;
   d:= d/24.0  ;
   day:=dd+d;

   Convert_TdateTime2Julian_day:=ConvertDate2Julian(Year,Month,day);
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


Function CalculeTSL(DateTime:TdateTime;Longitude:extended):extended;
 Var
  DateOr : Tdatetime;
  j,jj,t : extended   ;
  theta0 : extended   ;
  eps    : extended   ;
  dpsi   : extended   ;
  deps   : extended   ;

  {$DEFINE ACCURATE}

 Begin
  jj:=Convert_TdateTime2Julian_day(DateTime);
  j:=(jj-2451545.0);
  t:=j/36525;
  theta0:=280.460618375+360.98564736629*j+0.000387933*(t*t)-(t*t*t)/38710000;

  {$IFDEF ACCURATE}
  mc_obliqmoy(jj,eps);
  mc_nutation(jj,1,dpsi,deps);
	theta0:=theta0+(dpsi*cos(eps+deps)/(PI/180));
  {$ENDIF}

  theta0:=theta0-RadToDeg(longitude);
  theta0:=DegTorad(theta0);

  Remet2Pi(theta0);
  CalculeTSL:=theta0;
end;

(*********************************)

Procedure CalculeAZAFromAlphaDelta(Alpha,Delta,Latitude,Longitude:extended;Date:TdateTime;Var Hauteur,Azimuth,AirMass:extended);
Var Angle_Horaire,TSL,Z,Inter:extended;

// Attention AZ=180 degres au SUD
// Local APPARENT !

begin
  TSL:=CalculeTSL(Date,Longitude);
  Angle_Horaire:=Tsl-Alpha;

  Hauteur := Arcsin((cos(Angle_Horaire)*cos(latitude)*cos(delta))+
                   (sin(latitude)*sin(delta)                   )
                   );

  If (cos(hauteur)*cos(latitude)<>0) then
  begin

    Inter:=(sin(delta) - (Sin(hauteur)*sin(latitude)))/
                        (-cos(hauteur)*cos(latitude)) ;

    if (Inter= 1.0) then Azimuth:=0 else
    if (Inter=-1.0) then Azimuth:=Pi else
    Azimuth :=  Arccos(Inter);

    If (Cos(delta)*sin(Angle_Horaire))/cos(Hauteur)<0 then Azimuth:=Azimuth+Pi;
    Remet2Pi(Angle_Horaire);
    If (Angle_Horaire>=0) and (Angle_Horaire<Pi)   then Azimuth:=     Azimuth+Pi;
    If (Angle_Horaire>=Pi)and (Angle_Horaire<2*Pi) then Azimuth:=2*Pi-Azimuth;

  end
  else If Abs(latitude)<>Pi/2.0 then  Azimuth:=0.0
                                else  Azimuth:=Angle_Horaire+Pi;

  If (Hauteur>0) then
  begin

    Z:=(Pi/2.0)-Hauteur;
    If Z<>(Pi/2.0) then AirMass:=(1.0-0.0012*Sqr(tan(Z))) /Cos(Z)
                   else AirMass:=3;
  end
  else AirMass:=-1;

end;

Procedure CalculeRADECFromAZA(Azimuth,Hauteur,Latitude,Longitude:extended;Date:TdateTime;Var Alpha,Delta:extended);
 Var Angle_Horaire,TSL,Sind,AH:extended;
begin

  Sind :=sin(Hauteur)*sin(Latitude)+cos(Hauteur)*cos(Latitude)*cos(Azimuth);
  Delta:=arcsin(Sind);  // -pi/2  +pi/2

  If (cos(Delta)*cos(Latitude)<>0) then
  begin
   AH  :=Arccos((sin(Hauteur)-sin(Delta)*sin(Latitude))/(cos(Delta)*cos(Latitude)));  // 0 to Pi only

   if (cos(Delta)<>0) and (AH<>0) then
   begin
    If (sin(Azimuth)*cos(Hauteur))/cos(Delta)>0 then   //
      AH:=AH+Pi;
    If (AH>=Pi) and (AH<=(2*Pi)) then AH:=Pi-AH;
   end
   else AH:=0;


  end
  else
   AH:=0;

  TSL  :=CalculeTSL(Date,Longitude);
  Alpha:=TSL-AH;
  Remet2Pi(Alpha);
end;

end.
