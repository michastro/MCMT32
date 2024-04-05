Unit RADECtranfos;

  (* Cette unite sert a transformer des coordonnees exprimee en RA/DEC 2000 en des coordonnees
     apparentes telles que le telescope le voit, au niveau du sol, apres avoir traverse l'atmosphere
     terrestre. La tranformation inverse est aussi possible.
     Le residu de transformation des coordonnees RA/DEC 2000 en des coordonnees apparentes et la
     transformation des coordonnees apparentes calculee en coordonnees RA/DEC 2000 est de qq mas.
     Attention, le mouvement propre des objets, ainsi que les paralaxes ne sont pas pris en compte ici.
     La refraction est calculee que si l'objet EST au dessus de l'horizon.
     100000 operation de convertion dans un sens et dans l'autre sont realisees en 26sec avec un AMD800Mhz
     Une double operation de conversion-deconversion prend 260us.
  *)



Interface

   Uses SyncObjs,Dialogs;


   Type

     TInitparamConstant_RADECtranfos=record
                                      geodetic_Latitude    :Double;
                                      geodetic_Longitude   :Double;
                                      Elevation_meter      :Double;
     end;

     TInitparamVariables_RADECtranfos=record
                                      Temperature_celcius : double; // peut etre variable
                                      Pression_mb         : double; // peut etre variable
                                      Relative_Humidity0_1: double; // 0-1 peut etre variable

                                      Wavelength_microns  : double; // Fixe

     end;



     TRADECtranfos=Class(Tobject)
                     Private
                      InitparamConstant_RADECtranfos  : TInitparamConstant_RADECtranfos;
                      InitparamVariables_RADECtranfos : TInitparamVariables_RADECtranfos;

                      Distance_centre_terre       : Double;
                      geocentric_Latitude         : Double;
                      temp_lapse_rate_troposphere : Double; //(degk/metre)
                      RefA,RefB                   : Double; // Refraction constants

                      Procedure GetAtmParams(Var TCelcius,Press_mb,RH0_1:Double);

                      Procedure Nutation(Julian:double;var nutl,nuto:double);
                      Procedure Apply_Nutation(Const nutl,nuto:Double;Var Ra,Dec:Double;ToSky:Boolean);

                      Procedure Diurnal_aberration(local_apparent_sidereal_time:Double;ToSky:Boolean;Var ra,dec:Double);

                      procedure slaRefco (hm,tdk,pmb,rh,wl,phi,tlr,eps :Double; var refa, refb : Double); // See procedure doc.
                      Function  Refraction(Altitude_vaccum:double):Double;
                      Function  Refraction_inverse(Altitude_apparent:double):Double;
                      Procedure Apply_Refraction_Obs2Cat(local_apparent_sidereal_time,raObs,decObs:Double;
                                                         var raCat,decCat,Azimuth,Altitude,ApparentAltitude,RefractionCor:Double);
                      Procedure Apply_Refraction_Cat2Obs(local_apparent_sidereal_time,ra_Cat,dec_Cat:Double;
                                                         var raObs,decObs,Azimuth,Altitude,ApparentAltitude,RefractionCor:Double);




                     Public
                      Precession_Active  :Boolean;
                      Nutation_Active    :Boolean;
                      Refraction_Active  :Boolean;
                      Diurnal_Active     :Boolean;

                      Procedure ConvertRADEC2000_to_RADECobs(Const DateUT:TdateTime;
                                                             Const RA2000,DEC2000:Double;
                                                             Var   RA_app,DEC_app:Double);

                      Procedure ConvertRADECobs_to_RADEC2000(Const DateUT:TdateTime;
                                                             Const RA_app,DEC_app:Double;
                                                             Var   RA2000,DEC2000:Double);

                      Procedure Precession_Apply_J2000ref(Ra0,Dec0:Double;J:Double;ToJ2000:Boolean;Var Ra1,Dec1:Double);

                      constructor create(Const _InitparamConstant_RADECtranfos:TInitparamConstant_RADECtranfos;
                                         Const _InitparamVariables_RADECtranfos:TInitparamVariables_RADECtranfos);

                      destructor destroy; override;
     end;


Implementation


Uses Math,SysUtils,PAP_math;

//////////////////////////// MISC FUNCTIONS ////////////////////////////////

Const
  STR = 4.8481368110953599359e-6;  // radians per arc second
J2000 = 2451545.0;                 // 2000 January 1.5
  TPI = 2*Pi;
  DTR = pi/180.0;
  RTD = 180.0/pi;
  
  zeroKabs= 273.1;
  zbreak  = 0.242535625;

(* Reduce x modulo 360 degrees *)
Function mod360(x:double):Double;
Var
 k :Integer;
 y :Double;
begin
 k := Trunc(x/360.0);
 y := x  -  k * 360.0;
 while ( y < 0.0   ) do	y := y+360.0;
 while ( y > 360.0 ) do	y := y-360.0;
 mod360:=y;
end;


Function zatan2(x,y:Double):Double;
Begin
 zatan2:=0.0;
 If (x=0.0) and (y=0.0) then zatan2:=0.0 else
 //
 If (x=0.0) and (y>0.0) then zatan2:=Pi/2.0  else
 If (x=0.0) and (y<0.0) then zatan2:=3.0*Pi/2.0 else
 If (x>0.0) and (y=0.0) then zatan2:=0  else
 If (x<0.0) and (y=0.0) then zatan2:=-Pi else
 ///
 If (x>0.0) and (y>0.0) then zatan2:= arctan( y/x ) else
 If (x>0.0) and (y<0.0) then zatan2:= arctan( y/x ) else
 If (x<0.0) and (y>0.0) then zatan2:= arctan( y/x )+Pi else
 If (x<0.0) and (y<0.0) then zatan2:= arctan( y/x )+Pi;
end;


Function AddRA (Ra,DRa:Double):Double;
begin
 Result:=Ra+DRa;
 Remet2Pi(Result); // Rapide.
end;


Function AddDecCorec(Dec,DDec:Double;Var RA:Double):Double;
begin
 result:=Dec+DDec;
 If (result>Pi/2) then
 begin
  Result:= Pi-result; // 180 - 100
  RA    := RA+Pi    ;
  Remet2Pi(Result)  ; // Rapide.
 end;

 If (result<-Pi/2) then
 Begin
  result:= -Pi-result; // -180 - -100 = -80
  RA    := RA+Pi     ;
  Remet2Pi(Result)   ; // Rapide.
 end;

end;


Function ConvertDate2Julian(Year,Month:Integer;ddday:Double):Double;
Const Origine=2451240.5;
begin
 Result:=(EncodeDate(Year,Month,Trunc(ddday))+Frac(ddday)-EncodeDate(1999,03,03))+Origine;
end;


Function Convert_TdateTime2Julian_day(DateTime:TdateTime):Double;
 Var Year,Month,dd: Word;
     day,d        : Double;
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



Function Remet2Pi(Const Angle:Double):Double;
Var cAngle:Double;
begin
 cAngle:=Angle;
Try
 While cAngle <  0    do cAngle:=cAngle+(2*Pi);
 While cAngle >= 2*Pi do cAngle:=cAngle-(2*Pi);
Except
end;
 result:=cAngle;
end;

Function remetPM_Pi(Const Angle:Double):Double;
Var cAngle:Double;
begin
 cAngle:=Angle;
Try
 While cAngle < -Pi do cAngle:=cAngle+(2*Pi);
 While cAngle >= Pi do cAngle:=cAngle-(2*Pi);
Except
end;
result:=cAngle;
end;


Function CalculeTSL(DateTime:TdateTime;Longitude:Double):Double;

 Var
  DateOr : Tdatetime;
  j,jj,t : Double   ;
  theta0 : Double   ;

Begin
  jj:=Convert_TdateTime2Julian_day(DateTime);
  j:=(jj-2451545.0);
  t:=j/36525;
  theta0:=280.460618375+360.98564736629*j+0.000387933*(t*t)-(t*t*t)/38710000;
  //mc_obliqmoy(jj,&eps);
  //mc_nutation(jj,1,&dpsi,&deps);
	//theta0:=theta0+(dpsi*cos(eps+deps)/(DR));
  theta0:=theta0-RadToDeg(longitude);
  theta0:=DegTorad(theta0);
  Remet2Pi(theta0);

  CalculeTSL:=theta0;
end;



//////////////////////////// END MISC FUNCTIONS ////////////////////////////////


constructor TRADECtranfos.create(Const _InitparamConstant_RADECtranfos :TInitparamConstant_RADECtranfos;
                                 Const _InitparamVariables_RADECtranfos:TInitparamVariables_RADECtranfos);
Const
 flat     = 298.257222;
 aearth   = 6378137.0 ;
 espilon  = 1E-8 ;


Var
 co,si,fl,u,a,b:Double;

 TCelcius:Double;
 Press_mb:Double;
 RH0_1   :Double;


begin
 inherited create;


 Precession_Active  :=True;
 nutation_Active    :=True;
 refraction_Active  :=True;
 diurnal_Active     :=True;
 InitparamConstant_RADECtranfos :=_InitparamConstant_RADECtranfos;
 InitparamVariables_RADECtranfos:=_InitparamVariables_RADECtranfos;

  // Reduction from geodetic latitude to geocentric latitude
  // AA page K5
  // Geodetic systems or geodetic data are used in geodesy, navigation, surveying by cartographers and satellite navigation
  // systems to translate positions indicated on their products to their real position on earth. The systems are needed
  // because the earth is an imperfect ellipsoid.

  co := cos(InitparamConstant_RADECtranfos.geodetic_Latitude);
  si := sin(InitparamConstant_RADECtranfos.geodetic_Latitude);
  fl := 1.0 - 1.0/flat;
  fl := fl*fl;
  si := si*si;
  u  := 1.0/sqrt( co*co + fl*si );
  a  := aearth*u     + InitparamConstant_RADECtranfos.Elevation_meter;
  b  := aearth*fl*u  + InitparamConstant_RADECtranfos.Elevation_meter;


  Distance_centre_terre := sqrt( a*a*co*co + b*b*si );

  geocentric_Latitude := RadToDeg(arccos( a*co/Distance_centre_terre ));
  if (InitparamConstant_RADECtranfos.geodetic_latitude < 0.0 ) then geocentric_latitude := -geocentric_latitude;

  Distance_centre_terre :=Distance_centre_terre/aearth;

  // Reduction from geodetic latitude to geocentric latitude

  geocentric_Latitude
          :=DegTorad(((RadToDeg(InitparamConstant_RADECtranfos.geodetic_latitude))
           - 0.19242861 * sin(2.0*u)
           + 0.00032314 * sin(4.0*u)
           - 0.00000072 * sin(6.0*u) ));

  Distance_centre_terre :=    0.998327073
           + 0.001676438 * cos(2.0*u)
           - 0.000003519 * cos(4.0*u)
           + 0.000000008 * cos(6.0*u);

  Distance_centre_terre :=Distance_centre_terre+InitparamConstant_RADECtranfos.Elevation_meter/6378160.;

  temp_lapse_rate_troposphere:=0.0065; // Typical value;

  GetAtmParams(TCelcius,Press_mb,RH0_1);

  // Compute A and B parameters for refraction
  slaRefco (InitparamConstant_RADECtranfos.Elevation_meter,

            TCelcius + zeroKabs,
            Press_mb           ,
            RH0_1              ,
            InitparamVariables_RADECtranfos.Wavelength_microns,

            geocentric_Latitude,

            temp_lapse_rate_troposphere,
            espilon,
            refA, refB);

end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////

Procedure TRADECtranfos.GetAtmParams(Var TCelcius,Press_mb,RH0_1:Double);
Begin
  TCelcius :=InitparamVariables_RADECtranfos.Temperature_celcius ;
  Press_mb :=InitparamVariables_RADECtranfos.Pression_mb         ;
  RH0_1    :=InitparamVariables_RADECtranfos.Relative_Humidity0_1;
End;

/////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////  PRECESSION /////////////////////////////////////////////////////////////////////////////

Procedure Ecliptic_Obliquity(Julian:Double;var eps,coseps,sineps:Double); (* Julian date input *)

// jdeps      :double = -1.0; (* Date for which obliquity was last computed *)
// eps        :double =  0.0; (* The computed obliquity in radians *)
// coseps     :double =  0.0; (* Cosine of the obliquity *)
// sineps     :double =  0.0; (* Sine of the obliquity *)

var
 T:Double;

Begin

eps   :=  0.0; (* The computed obliquity in radians *)
coseps:=  0.0; (* Cosine of the obliquity *)
sineps:=  0.0; (* Sine of the obliquity *)

T := (Julian - 2451545.0)/36525.0;

(* This expansion is from the AA.
 * Note the official 1976 IAU number is 23d 26' 21.448", but
 * the JPL numerical integration found 21.4119".
 *)

if (Abs(T) < 2.0) then
	eps := (((1.813e-3*T - 5.9e-4)*T - 46.8150)*T + 84381.448)*STR

(* This expansion is from Laskar, cited above.
 * Bretagnon and Simon say, in Planetary Programs and Tables, that it
 * is accurate to 0.1" over a span of 6000 years. Laskar estimates the
 * precision to be 0.01" after 1000 years and a few seconds of arc
 * after 10000 years.
 *)

else
 begin
  T := T/10.0;
  eps := ((((((((( 2.45e-10*T + 5.79e-9)*T + 2.787e-7)*T
       + 7.12e-7)*T - 3.905e-5)*T - 2.4967e-3)*T
       - 5.138e-3)*T + 1.99925)*T - 0.0155)*T - 468.093)*T
       + 84381.448;
  eps := eps*STR;
end;

coseps := cos( eps );
sineps := sin( eps );

end;


// Refered to J2000

procedure  TRADECtranfos.Precession_Apply_J2000ref(Ra0,Dec0:Double;J:Double;ToJ2000:Boolean;Var Ra1,Dec1:Double);

(* Precession coefficients taken from Laskar's paper: *)

Const
 pAcof:Array [0..9] of double =(
 -8.66e-10, -4.759e-8, 2.424e-7, 1.3095e-5, 1.7451e-4, -1.8055e-3,
 -0.235316, 0.07732, 111.1971, 50290.966 );

 nodecof:Array [0..10] of double =(
 6.6402e-16, -2.69151e-15, -1.547021e-12, 7.521313e-12, 6.3190131e-10,
-3.48388152e-9, -1.813065896e-7, 2.75036225e-8, 7.4394531426e-5,
-0.042078604317, 3.052112654975 );

 inclcof:Array [0..10] of double =(
 1.2147e-16, 7.3759e-17, -8.26287e-14, 2.503410e-13, 2.4650839e-11,
-5.4000441e-11, 1.32115526e-9, -5.998737027e-7, -1.6242797091e-5,
 0.002278495537, 0.0 );


var
 sinth, costh, sinZo, cosZo, sinz_, cosz_: double;
 A, B, T, Zo, z_, TH, pA, W              : double;
 x,R                                     : Array [0..2] of double;
 i                                       : Integer;
 eps,coseps,sineps,U,InterD              : Double ;


begin

(* Validated by test stars:

 RA 1900   01h23m00.47
 DEC1900  +88°46'27.27

 RA 2100   05h53m36.68
 DEC2100  +89°32'22.66

 **

 RA 1925   20h38m52.408
 DEC1925  +45°00'41.97

 RA 1937   20h39m16.934
 DEC1937  +45°03'15.90

 **

 RA 1925   16h53m35.500
 DEC1925  +82°09'47.36

 RA 1937   16h52m21.032
 DEC1937  +82°08'38.05

*)


 if (J=J2000) then exit;

 (* Each precession angle is specified by a polynomial in
  * T = Julian centuries from J2000.0.  See AA page B18.
  *)

 // rectangular coordinates
 R[0] := cos(dec0)*cos(ra0);
 R[1] := cos(dec0)*sin(ra0);
 R[2] := sin(dec0);


 T := (J - J2000)/36525.0;

 if (abs(T)<=2.0) then
 begin

     Zo  :=  (( 0.017998*T + 0.30188)*T + 2306.2181)*T*STR;
     z_  :=  (( 0.018203*T + 1.09468)*T + 2306.2181)*T*STR;
     TH  :=  ((-0.041833*T - 0.42665)*T + 2004.3109)*T*STR;

     sinth := sin(TH);
     costh := cos(TH);
     sinZo  := sin(Zo);
     cosZo  := cos(Zo);
     sinz_  := sin(z_);
     cosz_  := cos(z_);
     A     := cosZo*costh;
     B     := sinZo*costh;

     if Not ToJ2000 then
       begin      (* From J2000.0 to J *)
             x[0] :=   (A*cosz_ - sinZo*sinz_)*R[0]
                     - (B*cosz_ + cosZo*sinz_)*R[1]
                               - sinth*cosz_*R[2];

             x[1]:=    (A*sinz_ + sinZo*cosz_)*R[0]
                     - (B*sinz_ - cosZo*cosz_)*R[1]
                               - sinth*sinz_*R[2];

             x[2]:=              cosZo*sinth*R[0]
                               - sinZo*sinth*R[1]
                                     + costh*R[2];
      end
     else
      begin
             (* From J to J2000.0 *)
             x[0] :=    (A*cosz_ - sinZo*sinz_)*R[0]
                      + (A*sinz_ + sinZo*cosz_)*R[1]
                                 + cosZo*sinth*R[2];

             x[1] :=   -(B*cosz_ + cosZo*sinz_)*R[0]
                       - (B*sinz_ - cosZo*cosz_)*R[1]
                                  - sinZo*sinth*R[2];

             x[2] :=             -sinth*cosz_*R[0]
                                - sinth*sinz_*R[1]
                                      + costh*R[2];
     end;

 end
 else
 begin

     (* Implementation by elementary rotations using Laskar's expansions.
      * First rotate about the x axis from the initial equator
      * to the ecliptic. (The input is equatorial.)
      *)

     if ToJ2000 then Ecliptic_Obliquity( J    , eps,coseps,sineps)      (* To J2000 *)
                else Ecliptic_Obliquity( J2000, eps,coseps,sineps);    (* From J2000 *)

     x[0] := R[0];
     z_   :=  coseps*R[1] + sineps*R[2];
     x[2] := -sineps*R[1] + coseps*R[2];
     x[1] := z_;

     (* Precession in longitude  *)

     T := T/10.0; (* thousands of years *)

     pA := pAcof[0];
     for i:=0 to 8 do pA:=(pA*T) + pAcof[i+1];  {?}
     pA := pA * STR * T;

     (* Node of the moving ecliptic on the J2000 ecliptic.  *)

     W := nodecof[0];
     for i:=0 to 9 do W:=(W*T) + nodecof[i+1];

     (* Rotate about z axis to the node. *)

     if ToJ2000 then  z_ := W + pA  else z_ := W;
     B := cos(z_);
     A := sin(z_);
     z_:= B * x[0] + A * x[1];
     x[1] := -A * x[0] + B * x[1];
     x[0] := z_;

     (* Rotate about new x axis by the inclination of the moving
      * ecliptic on the J2000 ecliptic. *)

     z_ := inclcof[0];
     for i:=0 to 9 do z_ := z_ * T + inclcof[i+1];

     if ToJ2000 then z_:=-z_;

     B := cos(z_);
     A := sin(z_);
     z_ := B * x[1] + A * x[2];
     x[2] := -A * x[1] + B * x[2];
     x[1] := z_;

     (* Rotate about new z axis back from the node. *)

     if ToJ2000 then z_ := -W else z_ := -W - pA;
     B := cos(z_);
     A := sin(z_);
     z_:= B * x[0] + A * x[1];
     x[1] := -A * x[0] + B * x[1];
     x[0] := z_;

     (* Rotate about x axis to final equator. *)

     if ToJ2000 then Ecliptic_Obliquity(J2000,eps,coseps,sineps)
                else Ecliptic_Obliquity(J,eps,coseps,sineps);

     z_   := coseps * x[1] - sineps * x[2];
     x[2] := sineps * x[1] + coseps * x[2];
     x[1] := z_;

 end;

 For i:=0 to 2 do R[i] := x[i];

 // puts back to RA-DEC from rectangular coordinates

 dec1:=arcsin(R[2]);
 Try
  InterD:=R[0]/cos(dec1);
  if SameValue(InterD,1.0 ,1E-15) then ra1:=0 else
  if SameValue(InterD,-1.0,1E-15) then ra1:=Pi else
   ra1   :=ArcCos(InterD);
 Except
  ra1 :=0;
 end;

 U   :=(R[1]/cos(dec1));
 If u<0 then Ra1:=-Ra1;

 While Ra1<0   do  Ra1:=Ra1+Tpi;
 While Ra1>Tpi do  Ra1:=Ra1-Tpi;

end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////  NUTATION   /////////////////////////////////////////////////////////////////////////////

// Provides N+DN as nut1
//          O+Do as nuto

Procedure TRADECtranfos.Nutation(Julian:double;var nutl,nuto:double);
Type
 Tss=array [0..4,0..7] of Double;

  Procedure sscc(k:Integer;arg:Double;n:Integer;Var ss,cc:Tss);
  Var
    cu, su, cv, sv, s:Double ;
    i                :Integer;

  begin
   su := sin(arg);
   cu := cos(arg);
   ss[k,0] := su;			(* sin(L) *)
   cc[k,0] := cu;			(* cos(L) *)
   sv := 2.0*su*cu;
   cv := cu*cu - su*su;
   ss[k,1] := sv;			(* sin(2L) *)
   cc[k,1] := cv;

   for i:=2 to n-1 do
    begin
     s  := su*cv + cu*sv;
     cv := cu*cv - su*sv;
     sv := s;
     ss[k,i] := sv;		(* sin( i+1 L ) *)
     cc[k,i] := cv;
   end;
  end;


Const
 Nt: array [0..105*9-1] of SmallInt = (
  0, 0, 0, 0, 2, 2062, 2,-895, 5,
 -2, 0, 2, 0, 1, 46, 0,-24, 0,
  2, 0,-2, 0, 0, 11, 0, 0, 0,
 -2, 0, 2, 0, 2,-3, 0, 1, 0,
  1,-1, 0,-1, 0,-3, 0, 0, 0,
  0,-2, 2,-2, 1,-2, 0, 1, 0,
  2, 0,-2, 0, 1, 1, 0, 0, 0,
  0, 0, 2,-2, 2,-13187,-16, 5736,-31,
  0, 1, 0, 0, 0, 1426,-34, 54,-1,
  0, 1, 2,-2, 2,-517, 12, 224,-6,
  0,-1, 2,-2, 2, 217,-5,-95, 3,
  0, 0, 2,-2, 1, 129, 1,-70, 0,
  2, 0, 0,-2, 0, 48, 0, 1, 0,
  0, 0, 2,-2, 0,-22, 0, 0, 0,
  0, 2, 0, 0, 0, 17,-1, 0, 0,
  0, 1, 0, 0, 1,-15, 0, 9, 0,
  0, 2, 2,-2, 2,-16, 1, 7, 0,
  0,-1, 0, 0, 1,-12, 0, 6, 0,
 -2, 0, 0, 2, 1,-6, 0, 3, 0,
  0,-1, 2,-2, 1,-5, 0, 3, 0,
  2, 0, 0,-2, 1, 4, 0,-2, 0,
  0, 1, 2,-2, 1, 4, 0,-2, 0,
  1, 0, 0,-1, 0,-4, 0, 0, 0,
  2, 1, 0,-2, 0, 1, 0, 0, 0,
  0, 0,-2, 2, 1, 1, 0, 0, 0,
  0, 1,-2, 2, 0,-1, 0, 0, 0,
  0, 1, 0, 0, 2, 1, 0, 0, 0,
 -1, 0, 0, 1, 1, 1, 0, 0, 0,
  0, 1, 2,-2, 0,-1, 0, 0, 0,
  0, 0, 2, 0, 2,-2274,-2, 977,-5,
  1, 0, 0, 0, 0, 712, 1,-7, 0,
  0, 0, 2, 0, 1,-386,-4, 200, 0,
  1, 0, 2, 0, 2,-301, 0, 129,-1,
  1, 0, 0,-2, 0,-158, 0,-1, 0,
 -1, 0, 2, 0, 2, 123, 0,-53, 0,
  0, 0, 0, 2, 0, 63, 0,-2, 0,
  1, 0, 0, 0, 1, 63, 1,-33, 0,
 -1, 0, 0, 0, 1,-58,-1, 32, 0,
 -1, 0, 2, 2, 2,-59, 0, 26, 0,
  1, 0, 2, 0, 1,-51, 0, 27, 0,
  0, 0, 2, 2, 2,-38, 0, 16, 0,
  2, 0, 0, 0, 0, 29, 0,-1, 0,
  1, 0, 2,-2, 2, 29, 0,-12, 0,
  2, 0, 2, 0, 2,-31, 0, 13, 0,
  0, 0, 2, 0, 0, 26, 0,-1, 0,
 -1, 0, 2, 0, 1, 21, 0,-10, 0,
 -1, 0, 0, 2, 1, 16, 0,-8, 0,
  1, 0, 0,-2, 1,-13, 0, 7, 0,
 -1, 0, 2, 2, 1,-10, 0, 5, 0,
  1, 1, 0,-2, 0,-7, 0, 0, 0,
  0, 1, 2, 0, 2, 7, 0,-3, 0,
  0,-1, 2, 0, 2,-7, 0, 3, 0,
  1, 0, 2, 2, 2,-8, 0, 3, 0,
  1, 0, 0, 2, 0, 6, 0, 0, 0,
  2, 0, 2,-2, 2, 6, 0,-3, 0,
  0, 0, 0, 2, 1,-6, 0, 3, 0,
  0, 0, 2, 2, 1,-7, 0, 3, 0,
  1, 0, 2,-2, 1, 6, 0,-3, 0,
  0, 0, 0,-2, 1,-5, 0, 3, 0,
  1,-1, 0, 0, 0, 5, 0, 0, 0,
  2, 0, 2, 0, 1,-5, 0, 3, 0,
  0, 1, 0,-2, 0,-4, 0, 0, 0,
  1, 0,-2, 0, 0, 4, 0, 0, 0,
  0, 0, 0, 1, 0,-4, 0, 0, 0,
  1, 1, 0, 0, 0,-3, 0, 0, 0,
  1, 0, 2, 0, 0, 3, 0, 0, 0,
  1,-1, 2, 0, 2,-3, 0, 1, 0,
 -1,-1, 2, 2, 2,-3, 0, 1, 0,
 -2, 0, 0, 0, 1,-2, 0, 1, 0,
  3, 0, 2, 0, 2,-3, 0, 1, 0,
  0,-1, 2, 2, 2,-3, 0, 1, 0,
  1, 1, 2, 0, 2, 2, 0,-1, 0,
 -1, 0, 2,-2, 1,-2, 0, 1, 0,
  2, 0, 0, 0, 1, 2, 0,-1, 0,
  1, 0, 0, 0, 2,-2, 0, 1, 0,
  3, 0, 0, 0, 0, 2, 0, 0, 0,
  0, 0, 2, 1, 2, 2, 0,-1, 0,
 -1, 0, 0, 0, 2, 1, 0,-1, 0,
  1, 0, 0,-4, 0,-1, 0, 0, 0,
 -2, 0, 2, 2, 2, 1, 0,-1, 0,
 -1, 0, 2, 4, 2,-2, 0, 1, 0,
  2, 0, 0,-4, 0,-1, 0, 0, 0,
  1, 1, 2,-2, 2, 1, 0,-1, 0,
  1, 0, 2, 2, 1,-1, 0, 1, 0,
 -2, 0, 2, 4, 2,-1, 0, 1, 0,
 -1, 0, 4, 0, 2, 1, 0, 0, 0,
  1,-1, 0,-2, 0, 1, 0, 0, 0,
  2, 0, 2,-2, 1, 1, 0,-1, 0,
  2, 0, 2, 2, 2,-1, 0, 0, 0,
  1, 0, 0, 2, 1,-1, 0, 0, 0,
  0, 0, 4,-2, 2, 1, 0, 0, 0,
  3, 0, 2,-2, 2, 1, 0, 0, 0,
  1, 0, 2,-2, 0,-1, 0, 0, 0,
  0, 1, 2, 0, 1, 1, 0, 0, 0,
 -1,-1, 0, 2, 1, 1, 0, 0, 0,
  0, 0,-2, 0, 1,-1, 0, 0, 0,
  0, 0, 2,-1, 2,-1, 0, 0, 0,
  0, 1, 0, 2, 0,-1, 0, 0, 0,
  1, 0,-2,-2, 0,-1, 0, 0, 0,
  0,-1, 2, 0, 1,-1, 0, 0, 0,
  1, 1, 0,-2, 1,-1, 0, 0, 0,
  1, 0,-2, 2, 0,-1, 0, 0, 0,
  2, 0, 0, 2, 0, 1, 0, 0, 0,
  0, 0, 2, 4, 2,-1, 0, 0, 0,
  0, 1, 0, 1, 0, 1, 0, 0, 0
 );


Var
  f, g, T ,
  MM, MS, FF, DD, OM,
  cu, su, cv, sv, sw,
  C, D              : Double;
  i, j, k, k1, m, p : Integer;
  ss,cc             : Tss;

begin


    (* Julian centuries from 2000 January 1.5,
     * barycentric dynamical time
     *)

    T := (Julian-2451545.0)/36525.0;

    (* Fundamental arguments in the FK5 reference system.
     * The coefficients, originally given to 0.001",
     * are converted here to degrees.
     * longitude of the mean ascending node of the lunar orbit
     * on the ecliptic, measured from the mean equinox of date
     *)

    OM := ((2.22e-6*T + 0.00207833)*T - 1934.1362608)*T + 125.0445222;
    OM := DTR * mod360(OM);

    (* mean longitude of the Sun minus the
     * mean longitude of the Sun's perigee
     *)

    MS := ((-3.33e-6*T - 0.0001603)*T + 35999.0503400)*T + 357.5277233;
    MS := DTR * mod360(MS);

    (* mean longitude of the Moon minus the
     * mean longitude of the Moon's perigee
     *)

    MM := ((1.778e-5*T + 0.0086972)*T + 477198.8673981)*T + 134.9629814;
    MM := DTR * mod360(MM);

    (* mean longitude of the Moon minus the
     * mean longitude of the Moon's node
     *)

    FF  := ((3.056e-6*T - 0.00368250)*T + 483202.0175381)*T + 93.2719103;
    FF  := DTR * mod360(FF);

    (* mean elongation of the Moon from the Sun. *)

    DD := (( 5.278e-6*T - 0.0019142)*T + 445267.1114800)*T + 297.8503631;
    DD := DTR * mod360(DD);

    (* Calculate sin( i*MM ), etc. for needed multiple angles *)

    sscc( 0, MM, 3 ,ss,cc);
    sscc( 1, MS, 2 ,ss,cc);
    sscc( 2, FF, 4 ,ss,cc);
    sscc( 3, DD, 4 ,ss,cc);
    sscc( 4, OM, 2 ,ss,cc);

    (* first terms, not in table: *)

    C := (-0.01742*T - 17.1996)*ss[4,0];	(* sin(OM) *)
    D := ( 0.00089*T +  9.2025)*cc[4,0];	(* cos(OM) *)

    p :=  0; (* point to start of table *)
    k :=  0;

    for i:=0 to 104 do
     begin
     (* argument of sine and cosine *)
      k1 := 0;
      cv := 0.0;
      sv := 0.0;
      for m:=0 to 4 do
       begin

         j := nt[p];
         inc(p);

         if (j<>0) then
          begin
            k := j;
            if (j<0) then k := -k;
            su := ss[m,k-1]; (* sin(k*angle) *)
            if (j<0) then su := -su;
            cu := cc[m,k-1];
            if (k1=0) then
             begin
              (* set first angle *)
              sv := su;
              cv := cu;
              k1 := 1;
             end
            else
             begin (* combine angles *)
              sw := su*cv + cu*sv;
              cv := cu*cv - su*sv;
              sv := sw;
             end;
         end;

      end;

     (* longitude coefficient *)

     f  := nt[p] * 0.0001;inc(p);

     if (nt[p]<>0)  then f := f+ 0.00001 * T * k;
     inc(p);

     (* obliquity coefficient *)

     g := nt[p] * 0.0001;
     inc(p);

     if (nt[p]<>0) then  g := g+ 0.00001 * T * k;
     inc(p);

     (* accumulate the terms *)
     C := C+ f * sv;
     D := D+ g * cv;

    end;

    (* Save answers, expressed in radians *)

    nutl := DTR * C / 3600.0;
    nuto := DTR * D / 3600.0;

end;


Procedure TRADECtranfos.Apply_Nutation(Const nutl,nuto:Double;Var Ra,Dec:Double;ToSky:Boolean);
Const EarthInc=(23+27/60);

Var
 DRa,Ddec,Sin_Iearth,Cos_Iearth:Double;

begin
 // Earth inclinaison
 Sin_Iearth:=Sin(EarthInc*DTR);
 Cos_Iearth:=cos(EarthInc*DTR);

 DRa :=nutl*(Cos_Iearth+Sin_Iearth+sin(ra)*tan(Dec))- nuto*cos(ra)*tan(dec);
 Ddec:=nutl*Sin_Iearth*cos(ra)                      + nuto*sin(ra);

 If not ToSky then
 begin
  DRa :=-DRa ;
  Ddec:=-Ddec;
 end;

 Ra  :=AddRA (Ra ,DRa )        ;
 Dec :=AddDecCorec(Dec,Ddec,Ra);
end;


/////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////  DIURNAL_ABERATION  /////////////////////////////////////////////////////////////////////


Procedure TRADECtranfos.Diurnal_aberration(local_apparent_sidereal_time:Double;ToSky:Boolean;Var ra,dec:Double);

(* Diurnal aberration
 * This formula is less rigorous than the method used for
 * annual aberration.  However, the correction is small. *)

var
 lha, coslha, sinlha,
 cosdec, sindec,coslat,
 N, D: Double;

begin

 lha    := local_apparent_sidereal_time - ra;
 coslha := cos(lha);
 sinlha := sin(lha);
 cosdec := cos(dec);
 sindec := sin(dec);
 coslat := cos(geocentric_Latitude);

 If (cosdec<>0.0) then N:= 1.5472e-6*Distance_centre_terre*coslat*coslha/cosdec
                  else N:= 0.0;

 D   :=1.5472e-6*Distance_centre_terre*coslat*sinlha*sindec;

 if not ToSky then // Remove it !
 begin
  D:=-D;
  N:=-N;
 end;

 Ra  :=AddRA      (Ra,N    ) ;
 Dec :=AddDecCorec(Dec,D,Ra) ;

end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////  REFRACTION  ////////////////////////////////////////////////////////////////////////////


Procedure atmt ( robs, tdkok, alpha, gamm2,
                 delm2, c1, c2, c3,
                 c4, c5, c6, r    : Double;
                 Var t, dn, rdndr : double );
(*
**  - - - - -
**   a t m t
**  - - - - -
**
**    refractive index and derivative with respect to height for the
**    troposphere.
**
**  Given:
**    robs    double   height of observer from centre of the Earth (metre)
**    tdkok   double   temperature at the observer (deg K)
**    alpha   double   alpha          )
**    gamm2   double   gamma minus 2  ) see ES
**    delm2   double   delta minus 2  )
**    c1      double   useful term  )
**    c2      double   useful term  )
**    c3      double   useful term  ) see source of
**    c4      double   useful term  ) slaRefro main routine
**    c5      double   useful term  )
**    c6      double   useful term  )
**    r       double   current distance from the centre of the Earth (metre)
**
**  Returned:
**    *t      double   temperature at r (deg K)
**    *dn     double   refractive index at r
**    *rdndr  double   r * rate the refractive index is changing at r
**
**  This routine is derived from the ATMOSTRO routine (C.Hohenkerk,
**  HMNAO), with enhancements specified by A.T.Sinclair (RGO) to
**  handle the radio case.
**
**  Note that in the optical case c5 and c6 are zero.
*)
Var
   w, tt0, tt0gm2, tt0dm2:Double;

begin
   w := tdkok - alpha * ( r - robs );
   w := min ( w, 320.0 );
   w := max ( w, 100.0 );
   tt0 := w / tdkok;
   tt0gm2 := power ( tt0, gamm2 );
   tt0dm2 := power ( tt0, delm2 );
   t := w;
   dn := 1.0 + ( c1 * tt0gm2 - ( c2 - c5 / w ) * tt0dm2 ) * tt0;
   rdndr := r * ( - c3 * tt0gm2 + ( c4 - c6 / tt0 ) * tt0dm2 );
end;


procedure atms ( rt, tt, dnt, gamal, r : Double;
                 Var dn, rdndr : Double );
(*
**
**   refractive index and derivative with respect to height for the
**   stratosphere.
**
**  Given:
**    rt      double   height of tropopause from centre of the Earth (metre)
**    tt      double   temperature at the tropopause (deg k)
**    dnt     double   refractive index at the tropopause
**    gamal   double   constant of the atmospheric model = g*md/r
**    r       double   current distance from the centre of the Earth (metre)
**
**  Returned:
**    *dn     double   refractive index at r
**    *rdndr  double   r * rate the refractive index is changing at r
**
**  This routine is derived from the ATMOSSTR routine (C.Hohenkerk, HMNAO).
*)
Var
   b, w:double ;
begin
   b := gamal / tt;
   w := ( dnt - 1.0 ) * exp ( - b * ( r - rt ) );
   dn := 1.0 + w;
   rdndr := - r * b * w;
end;



procedure slaRefro(zobs,hm,tdk,pmb,rh,wl,phi,tlr,eps: Double ; Var ref:Double);

(*  Ex: slaRefro
**  Atmospheric refraction for radio and optical/IR wavelengths.
**
**  Given:
**    zobs    double  observed zenith distance of the source (radian)
**    hm      double  height of the observer above sea level (metre)
**    tdk     double  ambient temperature at the observer (deg K)
**    pmb     double  pressure at the observer (millibar)
**    rh      double  relative humidity at the observer (range 0-1)
**    wl      double  effective wavelength of the source (micrometre)
**    phi     double  latitude of the observer (radian, astronomical)
**    tlr     double  tropospheric lapse rate (degK/metre)
**    eps     double  precision required to terminate iteration (radian)
**
**  Returned:
**    ref     double  refraction: in vacuo ZD minus observed ZD (radian)
**
**  Notes:
**
**  1  A suggested value for the tlr argument is 0.0065.  The
**     refraction is significantly affected by tlr, and if studies
**     of the local atmosphere have been carried out a better tlr
**     value may be available.
**
**  2  A suggested value for the eps argument is 1e-8.  The result is
**     usually at least two orders of magnitude more computationally
**     precise than the supplied eps value.
**
**  3  The routine computes the refraction for zenith distances up
**     to and a little beyond 90 deg using the method of Hohenkerk
**     and Sinclair (NAO Technical Notes 59 and 63, subsequently adopted
**     in the Explanatory Supplement, 1992 edition - see section 3.281).
**
**  4  The C code is an adaptation of the Fortran optical/IR refraction
**     subroutine AREF of C.Hohenkerk (HMNAO, September 1984), with
**     extensions to support the radio case.  The following modifications
**     to the original HMNAO optical/IR refraction algorithm have been made:
**
**     .  The angle arguments have been changed to radians.
**
**     .  Any value of zobs is allowed (see note 6, below).
**
**     .  Other argument values have been limited to safe values.
**
**     .  Murray's values for the gas constants have been used
**        (Vectorial Astrometry, Adam Hilger, 1983).
**
**     .  The numerical integration phase has been rearranged for
**        extra clarity.
**
**     .  A better model for Ps(T) has been adopted (taken from
**        Gill, Atmosphere-Ocean Dynamics, Academic Press, 1982).
**
**     .  More accurate expressions for Pwo have been adopted
**        (again from Gill 1982).
**
**     .  Provision for radio wavelengths has been added using
**        expressions devised by A.T.Sinclair, RGO (private
**        communication 1989), based on the Essen & Froome
**        refractivity formula adopted in Resolution 1 of the
**        13th International Geodesy Association General Assembly
**        (Bulletin Geodesique 70 p390, 1963).
**
**     .  Various small changes have been made to gain speed.
**
**     None of the changes significantly affects the optical/IR results
**     with respect to the algorithm given in the 1992 Explanatory
**     Supplement.  For example, at 70 deg zenith distance the present
**     routine agrees with the ES algorithm to better than 0.05 arcsec
**     for any reasonable combination of parameters.  However, the
**     improved water-vapour expressions do make a significant difference
**     in the radio band, at 70 deg zenith distance reaching almost
**     4 arcsec for a hot, humid, low-altitude site during a period of
**     low pressure.
**
**  5  The radio refraction is chosen by specifying wl > 100 micrometres.
**     Because the algorithm takes no account of the ionosphere, the
**     accuracy deteriorates at low frequencies, below about 30 MHz.
**
**  6  Before use, the value of zobs is expressed in the range +/- pi.
**     If this ranged zobs is -ve, the result ref is computed from its
**     absolute value before being made -ve to match.  In addition, if
**     it has an absolute value greater than 93 deg, a fixed ref value
**     equal to the result for zobs = 93 deg is returned, appropriately
**     signed.
**
**  7  As in the original Hohenkerk and Sinclair algorithm, fixed
**     values of the water vapour polytrope exponent, the height of the
**     tropopause, and the height at which refraction is negligible are
**     used.
**
**  8  The radio refraction has been tested against work done by
**     Iain Coulson, JACH, (private communication 1995) for the
**     James Clerk Maxwell Telescope, Mauna Kea.  For typical conditions,
**     agreement at the 0.1 arcsec level is achieved for moderate ZD,
**     worsening to perhaps 0.5-1.0 arcsec at ZD 80 deg.  At hot and
**     humid sea-level sites the accuracy will not be as good.
**
**  9  It should be noted that the relative humidity rh is formally
**     defined in terms of "mixing ratio" rather than pressures or
**     densities as is often stated.  It is the mass of water per unit
**     mass of dry air divided by that for saturated air at the same
**     temperature and pressure (see Gill 1982).
**
**  Called:  slaDrange, atmt, atms
*)

// Fixed parameters 
Const

   d93   = 1.623156204; // 93 degrees in radians        
   gcr   = 8314.32;     // Universal gas constant       
   dmd   = 28.9644;     // Molecular weight of dry air  
   dmw   = 18.0152;     // Molecular weight of water vapour 
   s     = 6378120.0;   // Mean Earth radius (metre)
   delta = 18.36;       // Exponent of temperature dependence of water vapour pressure 
   ht    = 11000.0;     // Height of tropopause (metre) 
   hs    = 80000.0;     // Upper limit for refractive effects (metre) 

Var
   // Variables used when calling the internal routine atmt 

   robs,   // height of observer from centre of Earth (metre) 
   tdkok,  // temperature at the observer (deg K) 
   alpha,  // alpha          |        
   gamm2,  // gamma minus 2  | see ES 
   delm2,  // delta minus 2  |        
   c1,c2,c3,c4,c5,c6 : double;  // various 

   // Variables used when calling the internal routine atms 
   rt,               // height of tropopause from centre of Earth (metre) 
   tt,               // temperature at the tropopause (deg k) 
   dnt,              // refractive index at the tropopause 
   gamal : Double ;  // constant of the atmospheric model = g*md/r 

   _is, k, n, i, j:Integer;
   optic          :Boolean;

   zobs1, zobs2, hmok, pmbok, rhok, wlok, tol, wlsq, gb,
   a, gamma, tdc, psat, pwo, w, tempo, dn0, rdndr0, sk0,
   f0, rdndrt, zt, ft, dnts, rdndrp, zts, fts, rs,
   dns, rdndrs, zs, fs, refold, z0, zrange, fb, ff, fo,
   fe,uu, h, r, sz, rg, dr, tg, dn, rdndr, t, f, refp, reft:Double;

   // The refraction integrand 
   function refi(DN,RDNDR:Double):Double;
   begin
    Result:=((RDNDR)/(DN+RDNDR));
   end;

Begin
   // Transform zobs into the normal range. 
   // Normalize angle into range +/- pi.

   zobs1 := remetPM_Pi( zobs );
   zobs1 := zobs;

   zobs2 := abs ( zobs1 );
   zobs2 := min ( zobs2, d93 );

// Keep other arguments within safe bounds. 
   hmok  := max ( hm, -1000.0   );
   hmok  := min ( hmok, 10000.0 );
   tdkok := max ( tdk, 100.0    );
   tdkok := min ( tdkok, 500.0  );
   pmbok := max ( pmb, 0.0      );
   pmbok := min ( pmbok, 10000.0);
   rhok  := max ( rh, 0.0       );
   rhok  := min ( rhok, 1.0     );
   wlok  := max ( wl, 0.1       );
   alpha := abs ( tlr           );
   alpha := max ( alpha, 0.001  );
   alpha := min ( alpha, 0.01   );

// Tolerance for iteration.
   w := abs ( eps );
   w := max ( w, 1e-12 );
   tol := min ( w, 0.1 ) / 2.0;

// Decide whether optical/IR or radio case - switch at 100 microns. 
   optic := ( wlok <= 100.0 );

// Set up model atmosphere parameters defined at the observer. 
   wlsq := wlok * wlok;
   gb := 9.784 * ( 1.0 - 0.0026 * cos ( 2.0 * phi ) - 2.8e-7 * hmok );

   if optic then
     a:= ( ( 287.604 + 1.6288 / wlsq + 0.0136 / ( wlsq * wlsq ) ) * 273.155 / 1013.25 ) * 1e-6
   else a:=77.624e-6;

   gamal := gb * dmd / gcr;
   gamma := gamal / alpha;
   gamm2 := gamma - 2.0;
   delm2 := delta - 2.0;
   tdc   := tdkok - 273.155;
   psat  := power ( 10.0, ( 0.7859 + 0.03477 * tdc ) /
                          ( 1.0 + 0.00412 * tdc ) ) *
                  ( 1.0 + pmbok * ( 4.5e-6 + 6e-10 * tdc * tdc ) );


   If (pmbok>0.0) then
     pwo :=rhok * psat / ( 1.0 - ( 1.0 - rhok ) * psat / pmbok ) else
     pwo :=0.0;

   w  := pwo * ( 1.0 - dmw / dmd ) * gamma / ( delta - gamma );
   c1 := a * ( pmbok + w ) / tdkok;

   If Optic then
    uu:=11.2684e-6
   else
    uu:=12.92e-6;

   c2 := ( a * w + ( uu ) * pwo ) / tdkok;
   c3 := ( gamma - 1.0 ) * alpha * c1 / tdkok;
   c4 := ( delta - 1.0 ) * alpha * c2 / tdkok;
   If optic then c5:=0.0  else c5 := 371897e-6 * pwo / tdkok;
   c6 := c5 * delm2 * alpha / ( tdkok * tdkok );

// Conditions at the observer. 
   robs := s + hmok;

   atmt ( robs, tdkok, alpha, gamm2, delm2, c1, c2, c3, c4, c5, c6, robs,
          tempo, dn0, rdndr0 );

   sk0 := dn0 * robs * sin ( zobs2 );
   f0  := refi ( dn0, rdndr0 );

// Conditions at the tropopause in the troposphere. 
   rt := s + ht;
   atmt ( robs, tdkok, alpha, gamm2, delm2, c1, c2, c3, c4, c5, c6, rt,
          tt, dnt, rdndrt );
   zt := arcsin ( sk0 / ( rt * dnt ) );
   ft := refi ( dnt, rdndrt );

// Conditions at the tropopause in the stratosphere. 
   atms ( rt, tt, dnt, gamal, rt,
         dnts, rdndrp );
   zts := arcsin ( sk0 / ( rt * dnts ) );
   fts := refi   ( dnts, rdndrp );

// Conditions at the stratosphere limit. 
   rs := s + hs;
   atms ( rt, tt, dnt, gamal, rs,
           dns, rdndrs );
   zs := arcsin ( sk0 / ( rs * dns ) );
   fs := refi   ( dns, rdndrs );

(* Integrate the refraction integral in two parts;  first in the
** troposphere (k=1), then in the stratosphere (k=2).
*)

// Initialize previous refraction to ensure at least two iterations. 
   refold := 1e6;

(*
** Start off with 8 strips for the troposphere integration, and then
** use the final troposphere value for the stratosphere integration,
** which tends to need more strips.
*)
   _is := 8;

  (* Troposphere then stratosphere. *)
   for k:=1 to 2 do
    begin
      // Start z, z range, and start and end values.
      if (k=1) then
       begin
         z0 := zobs2;
         zrange := zt - z0;
         fb := f0;
         ff := ft;
       end
       else
       begin
         z0 := zts;
         zrange := zs - z0;
         fb := fts;
         ff := fs;
       end;

      // Sums of odd and even values.
      fo := 0.0;
      fe := 0.0;

      // First time through the loop we have to do every point.
      n := 1;

      // Start of iteration loop (terminates at specified precision).
      repeat

         // Strip width
         h := zrange/_is;

         // Initialize distance from Earth centre for quadrature pass.
         If (k=1) then r:=robs else r:=rt;
         i:=1;

         // One pass (no need to compute evens after first time).
         While (i<_is) do    //for ( i = 1; i < is; i += n )
          begin
           // Sine of observed zenith distance.
            sz := sin ( z0 + h * i );

         // Find r (to nearest metre, maximum four iterations).
            if ( sz > 1e-20 ) then
            begin
               w  := sk0 / sz;
               rg := r;
               j  := 0;
               dr := 2;

               while (abs(dr)>1.0) and (j<=4) do
               begin

                  if (k=1) then
                     atmt ( robs, tdkok, alpha, gamm2, delm2,
                            c1, c2, c3, c4, c5, c6, rg,
                            tg, dn, rdndr )
                  else
                     atms ( rt, tt, dnt, gamal, rg, dn, rdndr );

                  dr := ( rg * dn - w ) / ( dn + rdndr );
                  rg := rg-dr;  // rg -= dr;
                  inc(j);
               end;

               r := rg;
            end;

         // Find refractive index and integrand at r.
            if (k=1) then
               atmt ( robs, tdkok, alpha, gamm2, delm2,
                      c1, c2, c3, c4, c5, c6, r,
                      t, dn, rdndr )
              else
               atms ( rt, tt, dnt, gamal, r, dn, rdndr );

            f := refi ( dn, rdndr );

         // Accumulate odd and (first time only) even values.
            if (n=1) and (i mod 2 = 0 ) then fe :=fe+f else fo :=fo+f;

          i:=i+n;
         end;

         // Evaluate the integrand using Simpson's Rule.
         refp := h * ( fb + 4.0 * fo + 2.0 * fe + ff ) / 3.0;

         // Has the required precision been reached?
         if ( abs ( refp - refold ) > tol ) then
          begin

            // No: prepare for next iteration.
            refold := refp;    // Save current value for convergence test
            _is :=_is+_is;     // Double the number of strips
            fe := fe+fo;       // Sum of all = sum of evens next time
            fo := 0.0;         // Reset odds accumulator
            n  := 2;           // Skip even values next time

          end
          else
          begin
           // Yes: save troposphere component and terminate loop.
            if (k=1) then reft := refp;
            break; // To kill the infinite loop
         end;

      until false; // infinite repeat

   end; // Loop

   // Result.
   ref := reft + refp;
   if (zobs1<0.0) then ref:= - ref;
end;



procedure TRADECtranfos.slaRefco ( hm,tdk,pmb,rh,wl,phi,tlr,eps :Double;
                                   var refa, refb : Double);
  (*
  **  Determine constants A and B in atmospheric refraction model
  **  dz = A tan z + B tan^3 z.
  **
  **  z is the "observed" zenith distance (i.e. affected by
  **  refraction) and dz is what to add to z to give the "topocentric"
  **  (i.e. in vacuo) zenith distance.
  **
  **  Given:
  **    hm    double    height of the observer above sea level (metre)
  **    tdk   double    ambient temperature at the observer (deg k)
  **    pmb   double    pressure at the observer (millibar)
  **    rh    double    relative humidity at the observer (range 0-1)
  **    wl    double    effective wavelength of the source (micrometre)
  **    phi   double    latitude of the observer (radian, astronomical)
  **    tlr   double    temperature lapse rate in the troposphere (degk/metre)
  **    eps   double    precision required to terminate iteration (radian)
  **
  **  Returned:
  **    *refa double    tan z coefficient (radian)
  **    *refb double    tan^3 z coefficient (radian)
  **
  **  Called:  slaRefro
  **
  **  Notes:
  **
  **  1  Typical values for the tlr and eps arguments might be 0.0065 and
  **     1e-10 respectively.
  **
  **  2  The radio refraction is chosen by specifying wl > 100 micrometres.
  **
  **  3  The routine is a slower but more accurate alternative to the
  **     slaRefcoq routine.  The constants it produces give perfect
  **     agreement with slaRefro at zenith distances arctan(1) (45 deg)
  **     and arctan(4) (about 76 deg).  It achieves 0.5 arcsec accuracy
  **     for ZD < 80 deg, 0.01 arcsec accuracy for ZD < 60 deg, and
  **     0.001 arcsec accuracy for ZD < 45 deg.
  *)

  Var
   r1,r2:Double;

  Const
  // Sample zenith distances: arctan(1) and arctan(4)
   atn1 = 0.7853981633974483;
   atn4 = 1.3258176636680330;

  begin
// Determine refraction for the two sample zenith distances.
   slaRefro ( atn1, hm, tdk, pmb, rh, wl, phi, tlr, eps, r1 );
   slaRefro ( atn4, hm, tdk, pmb, rh, wl, phi, tlr, eps, r2 );

// Solve for refraction constants.
   refa := ( 64.0 * r1 - r2 ) / 60.0;
   refb := ( r2 - 4.0 * r1 ) / 60.0;

end;


Procedure slaRefz(zu,refa,refb:Double;var zr:Double);
(*  ex: slaRefz
**
**  Adjust an unrefracted zenith distance to include the effect of
**  atmospheric refraction, using the simple A tan z + B tan^3 z
**  model.
**
**  Given:
**    zu    double    unrefracted zenith distance of the source (radian)
**    refa  double    A: tan z coefficient (radian)
**    refb  double    B: tan^3 z coefficient (radian)
**
**  Returned:
**    *zr   double    refracted zenith distance (radian)
**
**  Notes:
**
**  1  This routine applies the adjustment for refraction in the
**     opposite sense to the usual one - it takes an unrefracted
**     (in vacuo) position and produces an observed (refracted)
**     position, whereas the A tan Z + B tan^3 Z model strictly
**     applies to the case where an observed position is to have the
**     refraction removed.  The unrefracted to refracted case is
**     harder, and requires an inverted form of the text-book
**     refraction models;  the formula used here is based on the
**     Newton-Raphson method.  For the utmost numerical consistency
**     with the refracted to unrefracted model, two iterations are
**     carried out, achieving agreement at the 1D-11 arcseconds level
**     for a ZD of 80 degrees.  The inherent accuracy of the model
**     is, of course, far worse than this - see the documentation for
**     slaRefco for more information.
**
**  2  At ZD 83 degrees, the rapidly-worsening A tan Z + B tan^3 Z
**     model is abandoned and an empirical formula takes over.  Over a
**     wide range of observer heights and corresponding temperatures and
**     pressures, the following levels of accuracy (arcsec) are achieved,
**     relative to numerical integration through a model atmosphere:
**
**              ZR    error
**
**              80      0.4
**              81      0.8
**              82      1.5
**              83      3.2
**              84      4.9
**              85      5.8
**              86      6.1
**              87      7.1
**              88     10
**              89     20
**              90     40
**              91    100         } relevant only to
**              92    200         } high-elevation sites
**
**     The high-ZD model is scaled to match the normal model at the
**     transition point;  there is no glitch.
**
**
**  3  Beyond 93 deg zenith distance, the refraction is held at its
**     93 deg value.
**
**  4  See also the routine slaRefv, which performs the adjustment in
**     Cartesian Az/El coordinates, and with the emphasis on speed
**     rather than numerical accuracy.
**
*)

Var
   zu1, zl, s, c, t, tsq, tcu, ref, e, e2 : Double;

   // Coefficients for high ZD model (used beyond ZD 83 deg)
   const c1  =  0.55445;
         c2  = -0.01133;
         c3  =  0.00202;
         c4  =  0.28385;
         c5  =  0.02390;
         DR2D=  57.295779513082320876798154814105170332405472466564;


   // Largest usable ZD (deg)
         z93 = 93.0;

   // ZD at which one model hands over to the other (radians)
         z83 = 83.0 / DR2D;

   // High-ZD-model prediction (deg) for that point
         ref83 = ( c1 + c2 * 7.0 + c3 * 49.0 ) /
                 ( 1.0 + c4 * 7.0 + c5 * 49.0 );

 Begin
   // Perform calculations for zu or 83 deg, whichever is smaller
   zu1 := min ( zu, z83 );

   // Functions of ZD
   zl  := zu1;
   s   := sin ( zl );
   c   := cos ( zl );
   t   := s / c;
   tsq := t * t;
   tcu := t * tsq;

   // Refracted ZD (mathematically to better than 1mas at 70 deg)
   zl := zl-( refa * t + refb * tcu )
            / ( 1.0 + ( refa + 3.0 * refb * tsq ) / ( c * c ) );

   // Further iteration
   s := sin ( zl );
   c := cos ( zl );
   t := s / c;
   tsq := t * t;
   tcu := t * tsq;
   ref := zu1 - zl + ( zl - zu1 + refa * t + refb * tcu )
             / ( 1.0 + ( refa + 3.0 * refb * tsq ) / ( c * c ) );

   // Special handling for large zu
   if ( zu > zu1 ) then
   begin
      e   := 90.0 - min ( z93, zu * DR2D );
      e2  := e * e;
      ref := ( ref / ref83 ) * ( c1 + c2 * e + c3 * e2 ) /
                               ( 1.0 + c4 * e + c5 * e2 );
   end;

   // Refracted ZD
   zr := zu - ref;

end;


Function TRADECtranfos.Refraction(Altitude_vaccum:double):Double;
// refa and refb must be computed for a given state, ie : observatory, etc etc
// Altitude_vaccum  : elevation without no atmosphere

Var    zu,zr,dzd,dref:double;
       i:Integer;

       TCelcius:Double;
       Press_mb:Double;
       RH0_1   :Double;


Const  eps     = 1e-8;
       zbreak  = 0.242535625;

begin

  zu:=Pi/2-altitude_vaccum;
  slaRefz(zu,refa,refb,zr);

  GetAtmParams(TCelcius,Press_mb,RH0_1);

  // Large zenith distance?
  if ( cos ( zr ) < zbreak ) then
  begin
    // Yes: use rigorous algorithm
    // Initialize loop (maximum of 10 iterations)
    i := 1;
    repeat
       //Compute refraction using current estimate of observed ZD */
       slaRefro (zr,InitparamConstant_RADECtranfos.Elevation_meter,

                    TCelcius+zeroKabs,
                    Press_mb,
                    RH0_1,
                    InitparamVariables_RADECtranfos.Wavelength_microns,

                    geocentric_Latitude,
                    temp_lapse_rate_troposphere,
                    eps,
                    dref);

       // Remaining discrepancy
       dzd := zr + dref - zu;

       // Update the estimate */
       zr:=zr-dzd;
       inc(i);

    until (abs(dzd)<1e-10) or (i>=10);
  end;

  result:=zu-zr;
end;



Function TRADECtranfos.Refraction_inverse(Altitude_apparent:double):Double;
// refa and refb must be computed for a given state, ie : observatory, etc etc
// Altitude_apparent  : elevation at the object is observed thru the atmosphere

Const  eps     = 1e-8;

Var    zaeo,tz,dref:double;
       TCelcius    :Double;
       Press_mb    :Double;
       RH0_1       :Double;

begin
  zaeo:=Pi/2-altitude_apparent;

  // Large zenith distance?
  if (cos (zaeo)>=zbreak ) then
  begin
   // Fast algorithm using two constant model
   tz   := tan(zaeo);
   dref := ( Refa + Refb * tz * tz ) * tz;
  end
  else
  begin
   GetAtmParams(TCelcius,Press_mb,RH0_1);

   // Rigorous algorithm for large ZD
   slaRefro (zaeo,
             InitparamConstant_RADECtranfos.Elevation_meter,

             TCelcius+zeroKabs,
             Press_mb  ,
             RH0_1     ,
             InitparamVariables_RADECtranfos.Wavelength_microns,

             geocentric_Latitude,
             temp_lapse_rate_troposphere,
             eps,
             dref);
  end;

  result:=dref;
end;



Procedure TRADECtranfos.Apply_Refraction_Obs2Cat(local_apparent_sidereal_time,raObs,decObs:Double;
                                                 var raCat,decCat,Azimuth,Altitude,ApparentAltitude,RefractionCor:Double);

Var cosdec,sindec : Double;
    lha,x,y,z,N,D : Double;
    coslha,sinlha : Double;
    coslat        : Double;
    sinlat        : Double;

begin

  // Convert ra and dec to altitude and azimuth

  cosdec := cos(decObs);
  sindec := sin(decObs);
  lha    := local_apparent_sidereal_time - raObs;

  coslha := cos(lha);
  sinlha := sin(lha);

  // Use the geodetic latitude for altitude and azimuth
  x      := InitparamConstant_RADECtranfos.geodetic_Latitude;
  coslat := cos(x);
  sinlat := sin(x);

  N        := -cosdec * sinlha;
  D        :=  sindec * coslat  -  cosdec * coslha * sinlat;
  azimuth  :=  zatan2( D, N );

  ApparentAltitude :=  sindec * sinlat  +  cosdec * coslha * coslat;
  ApparentAltitude :=  arcsin(ApparentAltitude);


  If (ApparentAltitude>0) then
  begin
    RefractionCor:=Refraction_Inverse(ApparentAltitude);
    D:=-RefractionCor;

    // It produces the unrefracted altitude
    Altitude:=ApparentAltitude+D;

    // Convert back to R.A. and Dec.

    y := sin(Altitude);
    x := cos(Altitude);
    z := cos(azimuth);

    sinlha := -x * sin(azimuth);
    coslha := y*coslat - x*z*sinlat;
    sindec := y*sinlat + x*z*coslat;
    lha    := zatan2( coslha, sinlha );

    decCat := arcsin( sindec )                               ; // New dec !!
    raCat  := AddRA (local_apparent_sidereal_time,-lha)      ; // New ra !!

    Azimuth:=Remet2Pi(Azimuth);
  end
  else
  begin
    ApparentAltitude:=Altitude;
    RefractionCor   :=0;
    raCat           :=RaObs ;
    decCat          :=DecObs;
  end;
end;



Procedure TRADECtranfos.Apply_Refraction_Cat2Obs(local_apparent_sidereal_time,ra_Cat,dec_Cat:Double;
                                                 var raObs,decObs,Azimuth,Altitude,ApparentAltitude,RefractionCor:Double);

Var cosdec,sindec : Double;
    lha,x,y,z,N,D : Double;
    coslha,sinlha : Double;
    coslat        : Double;
    sinlat        : Double;

begin

  // Convert ra and dec to altitude and azimuth

  cosdec := cos(dec_Cat);
  sindec := sin(dec_Cat);
  lha    := local_apparent_sidereal_time - ra_Cat;
  coslha := cos(lha);
  sinlha := sin(lha);

  // Use the geodetic latitude for altitude and azimuth
  x      := InitparamConstant_RADECtranfos.geodetic_Latitude;
  coslat := cos(x);
  sinlat := sin(x);

  N   := -cosdec * sinlha;
  D   :=  sindec * coslat  -  cosdec * coslha * sinlat;
  azimuth  :=  zatan2( D, N );
  altitude :=  sindec * sinlat  +  cosdec * coslha * coslat;
  altitude :=  arcsin(altitude);


  If (Altitude>0) then
  begin
     // Correction for atmospheric refraction

    RefractionCor   := Refraction(altitude);
    D               := RefractionCor;

    // It produces the refracted altitude
    ApparentAltitude:=Altitude+D;

    // Convert back to R.A. and Dec.

    y := sin(ApparentAltitude);
    x := cos(ApparentAltitude);
    z := cos(azimuth);

    sinlha := -x * sin(azimuth);
    coslha := y*coslat - x*z*sinlat;
    sindec := y*sinlat + x*z*coslat;
    lha    := zatan2( coslha, sinlha );

    decObs  := arcsin( sindec )                               ; // New dec !!
    raObs  := AddRA (local_apparent_sidereal_time,-lha)      ; // New ra !!
    Azimuth:=Remet2Pi(Azimuth);
  end
  else
  begin
    raObs  :=Ra_Cat ;
    decObs :=Dec_Cat;
    ApparentAltitude:=Altitude;
    RefractionCor   :=0;
  end;
end;




/////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////  CORE CORE  /////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////


(* This method converts RA/DEC2000 from catalog to  RA/DEC observed with a perfect telescope, at a
   given location
*)

procedure  TRADECtranfos.ConvertRADEC2000_to_RADECobs(Const DateUT:TdateTime;
                                                      Const RA2000,DEC2000:Double;
                                                      Var   RA_app,DEC_app:Double);
Const
 ToJ2000  =True;
 TowardSky=True;

Var Jarr     : Double;
    Azimuth,Altitude,ApparentAltitude,RefractionCor:Double;
    local_apparent_sidereal_time:Double;

    Ra2000_P,Dec2000_P          : Double; // 2000 -> precessed
    Ra2000_N,Dec2000_N          : Double; // 2000 -> Nutation
    Ra2000_diab,Dec2000_diab    : Double; // 2000 -> Diurnal_AB
    Ra2000_R,Dec2000_R          : Double; // 2000 -> Refraction
    nutl,nuto                   : Double; // Nutation parameters for a given date

begin

 Jarr:=Convert_TdateTime2Julian_day(DateUT);
 local_apparent_sidereal_time:=CalculeTSL(DateUT,InitparamConstant_RADECtranfos.geodetic_Longitude);

 If Precession_Active then
  Precession_Apply_J2000ref(Ra2000,Dec2000,Jarr,not ToJ2000,Ra2000_P,Dec2000_P)
 else
 begin
  Ra2000_P := Ra2000;
  Dec2000_P:=Dec2000;
 end;

 Ra2000_N:=Ra2000_P ;
 Dec2000_N:=Dec2000_P;

 If nutation_Active then
 begin
  Nutation(Jarr,nutl,nuto);
  Apply_Nutation(nutl,nuto,Ra2000_N,Dec2000_N,TowardSky);
 end;

 Ra2000_diab :=Ra2000_N ;
 Dec2000_diab:=Dec2000_N;

 If diurnal_Active then
  Diurnal_aberration(local_apparent_sidereal_time,TowardSky,Ra2000_diab,Dec2000_diab);

 Ra2000_R :=Ra2000_diab ;
 Dec2000_R:=Dec2000_diab;

 If refraction_Active then
  Apply_Refraction_Cat2Obs(local_apparent_sidereal_time,Ra2000_diab,Dec2000_diab,
                           Ra2000_R,Dec2000_R,Azimuth,Altitude,ApparentAltitude,RefractionCor);

 RA_app :=Ra2000_R ;
 DEC_app:=Dec2000_R;

end;






procedure  TRADECtranfos.ConvertRADECobs_to_RADEC2000(Const DateUT:TdateTime;
                                                  Const RA_app,DEC_app:Double;
                                                  Var   RA2000,DEC2000:Double);
Const
 ToJ2000  =True;
 TowardCAT=False;

Var Jarr     : Double;
    Azimuth,Altitude,ApparentAltitude,RefractionCor:Double;
    local_apparent_sidereal_time:Double;

    RaP_2000,DecP_2000          : Double; // 2000 -> precessed
    RaN_2000,DecN_2000          : Double; // 2000 -> Nutation
    Radiab_2000,Decdiab_2000    : Double; // 2000 -> Diurnal_AB
    RaR_2000,DecR_2000          : Double; // 2000 -> Refraction

    nutl,nuto                   : Double; // Nutation parameters for a given date

begin

 RaR_2000   :=RA_app ;
 DecR_2000  :=DEC_app;
 Jarr:=Convert_TdateTime2Julian_day(DateUT);
 local_apparent_sidereal_time:=CalculeTSL(DateUT,InitparamConstant_RADECtranfos.geodetic_Longitude);

 If refraction_Active then
  Apply_Refraction_Obs2Cat(local_apparent_sidereal_time,Ra_app,Dec_app,
                           RaR_2000,DecR_2000,Azimuth,Altitude,ApparentAltitude,RefractionCor);

 Radiab_2000 :=RaR_2000 ;
 Decdiab_2000:=DecR_2000;

 If diurnal_Active then
  Diurnal_aberration(local_apparent_sidereal_time,TowardCAT,Radiab_2000,Decdiab_2000);

 RaN_2000 :=Radiab_2000 ;
 DecN_2000:=Decdiab_2000;

 If nutation_Active then
 begin
  Nutation(Jarr,nutl,nuto);
  Apply_Nutation(nutl,nuto,RaN_2000,DecN_2000,TowardCAT);
 end;

 RaP_2000 :=RaN_2000 ;
 DecP_2000:=DecN_2000;

 If Precession_Active then
  Precession_Apply_J2000ref(RaN_2000,DecN_2000,Jarr,ToJ2000,RaP_2000,DecP_2000);

 Ra2000 :=RaP_2000 ;
 Dec2000:=DecP_2000;

end;



Destructor TRADECtranfos.destroy;
Begin
 inherited destroy;
end;



end.







