Unit PAP_math;

{$N+,S-}
{$R+}

Interface

Uses SysUtils;

Type

  Complexe= Record
   Re:Single;
   Im:Single;     {= 8 Octets}
  end;

Const
  NULLComplex       :Complexe=(Re:0;Im:0);

Type

  TPtXY=record
        X:Double;
        Y:Double;
  end;

  ATPtXY=Array of TPtXY;


Type

   Coef_Pol= Array [0..3] of Double;


   Vecteur_math  = Array of Double;
   Matrice_math  = Array of Array of Double;
   Champ_vecteurs= Array of Array of Vecteur_math;


Type TstatInfos=record
                   Min,
                   Max,
                   Mean,
                   Rms,
                   Median:Double;
                end;

Procedure  Return_Droite_From_Points       (X1,Y1,X2,Y2:Double;Var A,B:Double);        // renvoie AX+B coefs de X1,X2,Y1,Y2.
Procedure  Return_Droite_Perpen_From_Points(X1,Y1,X2,Y2:Double;Var A,B:Double);

Const                                            //0 1      2      3          4           5           6                7                   8                    9
   MaxPolyAbsolute=55;
   DegreX :Array[1..MaxPolyAbsolute] of Integer = (0,0,1, 1,2,0, 2,1,0,3, 1,2,3,0,4, 4,3,2,1,0,5, 5,4,3,2,1,0,6, 6,5,4,3,2,1,0,7,  7,6,5,4,3,2,1,0,8,  8,7,6,5,4,3,2,1,0,9);
   DegreY :Array[1..MaxPolyAbsolute] of Integer = (0,1,0, 1,0,2, 1,2,3,0, 3,2,1,4,0, 1,2,3,4,5,0, 1,2,3,4,5,6,0, 1,2,3,4,5,6,7,0,  1,2,3,4,5,6,7,8,0,  1,2,3,4,5,6,7,8,9,0);
   // Written as X^0Y^0 + X^0Y^1 + X^1Y^0 + X^1Y^1 + X^0Y^2 + X^2Y^0 + X^1Y^2 + ...

Type
   TVectSolAstromStatic=Array [1..MaxPolyAbsolute] of Double;


function  PolyElem     (X,Y:Double;Xn,Yn:Integer):Double;
function  PolyN        (X,Y:Double;N:integer    ):Double;
Function  RacinePoly_1D(Xo,CST:Double;CoefP:Array of Double;DegrePoly:Integer):Double;

//////////////////////////

Procedure  AllocVectM(N  :Integer;Var Vecteur:Vecteur_math);
Procedure  AllocMatM (N,M:Integer;Var Matrice:Matrice_math);

Procedure  AllocvectFieldM(N,M:Integer;Var Matrice:Champ_vecteurs);

Procedure  AllocVectandCopy(VecteurIn:Vecteur_math;Var VecteurOut:Vecteur_math);

Procedure  UnAllocVectM(Var Vecteur:Vecteur_math);
Procedure  UnAllocMatM (Var Matrice:Matrice_math);
Procedure  UnAllocvectFieldM(Var Matrice:Champ_vecteurs);


function   CalculePolyXY(X,Y:Double;N:Integer;V:Vecteur_math):Double;

procedure  InverseMatrice     (N:Integer;M:Matrice_math;Var InvM:Matrice_math;var Bon:boolean);
procedure  InverseMatrice_NoEx(N:integer;M:Matrice_math;Var InvM:Matrice_math;var Bon:Boolean);
procedure  ProdMatVec         (N:Integer;M:Matrice_math;V:Vecteur_math;Var W:Vecteur_math);

Procedure  FillMatriceZero(Var Matrice:Matrice_math;Elements:Integer);  //Square
Procedure  FillvectZero   (Var Vecteur:Vecteur_math;Elements:Integer);

//////////////////////////

Function  CalculePolyXY_AstromX(Xc,Yc,X,Y:Double;N:Integer;V:TVectSolAstromStatic):Double;
Function  CalculePolyXY_AstromY(Xc,Yc,X,Y:Double;N:Integer;V:TVectSolAstromStatic):Double;

function  ProdScalaire        (X1,Y1,XBase,YBase:Single):Single;

Function  AH_2_rad(AH:Double):Double;
Function  RAD_2_AH(RD:Double):Double;


procedure Remet2Pi (Var Angle:Double);
procedure RemetMPPi(Var Angle:Double);
procedure BoundDelta_CheckAlpha(Var Delta,Alpha:Double); // -Pi/2 to Pi/2

Procedure AddRADec(Var RA:Double;Const  OffsetRA:Double;
                   Var Dec:Double;Const OffsetDec:Double);

{ renvoie le module de x et y }
Function  Modul    (x,y:Double):Double;
Procedure Pol      (x,y:Double;Var r,teta:Double);
procedure PolDouble(x,y:Double;Var    r,teta:Double);
procedure ExtraPol (x,y:Double;Const  r,teta:Double;Var Xp,Yp:Double);


Function  HexadecStringAlpha(d:Double):ShortString;
Function  HexadecStringDelta(d:Double):ShortString;
Function  HexadecStringDeltaWEB(d:Double):ShortString;
Function  HexadecStringAZWEB(d:Double):ShortString;
Function  HexadecStringDeltaAstrom(d:Double):ShortString;
Function  HexadecStringDeltaAstromAladin(d:Double):ShortString;
Function  HexadecStringAlphaAstrom(d:Double):ShortString;
Function  HexadecStringAlphaAstromAladin(d:Double):ShortString;
Function  HmsToAlphaRad(dd,mm,ss:Double):Double;
Function  HmsToDeltaRad(dd,mm,ss:Double;Neg:Boolean):Double;
Function  HexadecStringDeltaNO_SIGN(d:Double):ShortString;
Function  HexadecStringDeltaAstromNO_SIGN(d:Double):ShortString;
Function  HexadecStringAngleHorSimplex(d:Double):ShortString;
Function  HexadecStringAngleHORAstrom(d:Double):ShortString;
Function  SimpleAngleStr(d:Double):ShortString;

Procedure Recta   (r,teta:Double;var x,y:Double);
Function  Modulcar(x,y:Double):Double;

function  RealModulo(E1,E2:Double):Double;


function  Multi   (p,q:complexe)       :complexe;
function  conj    (p:complexe)         :complexe;
function  MultReal(p:complexe;s:Double):complexe;
function  Som     (p,q:complexe)       :complexe;
function  Module  (p:complexe)         :Double;
function  divi    (p,q:complexe)       :complexe;

function  NewtonRaphsonResolution(pf,pg:Double;var X,Y:Double;Dimpoly:Integer;Pl1,Pl2:Vecteur_math;
                                  Epsilon:Double;MaxIteration:Integer):Integer;

function  NormalNoise(Ec:Double):Double;

function  ArctanPoly(Dx,Dy:Double):Double;

Procedure ComputeArraySTD_Mean(Var Ad:Array of Double;Taille:Integer;Var Mean,Stddev:Double);
Procedure computeMedianDouble (Var D :Array of double;
                               precision:Double;
                               Var Median,Moyen,MostProba,RMS:double);


Function ComputeMagFromFlux (Fref,FMes,Mref:Double):Double;
Function ComputeFluxFromMagn(Mref,MMes,Fref:Double):Double;

Function ArrayDoubleMax(Var A:Array of Double ):Double;
Function ArrayDoubleMin(Var A:Array of Double ):Double;
Function ArrayIntMin   (Var A:Array of Integer):Integer;


Function ArrayDoubleMean    (Var A:Array of Double):Double;                    overload;
Function ArrayDoubleMean    (Var A:Array of Double;Const Nbre:Integer):Double; overload;
Function ArrayDoubleMeanSign(Var A:Array of Double):Double;


Function ArrayDoubleRMS   (Var A:Array of Double):Double;
Function ArrayDoubleMedian(Var A:Array of Double):Double;  overload;
Function ArrayDoubleMedian(Var A:Array of Double;Const Nbre:Integer):Double; overload;


Function  ArrayDoubleStats(Var A:Array of Double):TstatInfos;

Function  Less_Square_Poly1D(Const DegrePoly:Word;M:Array of TPtXY;var A:array of Double): Boolean ;


Procedure RegressionLin(M:Array of TPtXY;Var a,b,r:Double);

Function  GaussFIT_1D         (M:Array of TPtXY;var Io,xo,Sigma,Fond,Ecart:Double): Boolean ;
Function  GaussFIT_1D_NLS     (M:Array of TPtXY;var Io,xo,Sigma,Fond,Ecart:Double): Boolean ;
Function  GaussFIT_1D_NLSPente(M:Array of TPtXY;var Io,xo,Sigma,FondMoyen,Pente,Ecart:Double): Boolean ;
Function  LargeFitCOSH_1D_NLS (M:Array of TPtXY;var Io,xo,Sigma,Fond,Ecart:Double): Boolean ;

Function  HyperBolaFIT_1D_NLS(M:Array of TPtXY;var xo,Fond,a,b,Ecart:Double): Boolean ;
Function  Hyperbola(x,xo,Fond,a,b:Double):Double;

Procedure PolyGenFit(X,Y,Z:Array of double;Ordre:Integer;Var correlation:Double;Var Coefs:Array of Double);
Function  ComputeSizePoly(Ordre:Integer):Integer;
function  CalculePolyXY_(X,Y:Double;Ordre:Integer;Coef:Array of Double):Double;

Function  Monotone_cubic_Hermite_interpolation(M:ATPtXY;Epsilon:Double):ATPtXY;

Function  Random_un_mun:Double;

Function  DegToKelv(TempDeg:Double):Double;
Function  KelvToDeg(TempK  :Double):Double;


Function  CalPolRadialImpair(r:Double;DimPolyVect:Word;Coef:Array of Double):Double;

Function  R_Ellipse(a,b:Double;Theta,Theta0:Double):Double;

Function  Rad_To_Mas(Angle:Double):Double;
Function  Mas_To_Rad(Angle:Double):Double;

function  Signe(Val:Double):Integer;
function  Sign_(Val:Double):Double;


function  ComplexMag  (const C: Complexe): Double;
function  ComplexPhase(const C: Complexe): Double;

procedure ForwardFFT(const Source: array of Complexe; var Dest: array of Complexe; Count: integer);

Function AngleSinCos(SinA,CosA:Double):Double;

Function FRand:Double; // Return -1 to +1 random number

Function Inverse_DimPoly(N:Word):Word;


const   { Ranges of the IEEE floating point types, including denormals }

  MaxSingle        =      3.4e+38;
  MinSingleMoins   =     -3.4e+38;
  MinSingleZero    =      1.5e-45;

  MinDoubleZero    =      5.0e-324;
  MinDoubleMoins   =     -1.7e+308;
  MaxDouble        =      1.7e+308;

  MinExtendedZero  =      3.4e-4932;
  MaxExtended      =      1.1e+4932;
  MinExtendedMoins =     -1.1e+4932;

  MinComp          =     -9.223372036854775807e+18;
  MaxComp          =      9.223372036854775807e+18;

  MaxSmallInt      =      32767;
  MinSmallInt      =     -32768;

  MaxByte          =      255;
  MinByte          =      0  ;

  MaxWord          =      65535;

  TORAD            =      Pi/180;
  TODEG            =      180/Pi;

{-----------------------------------------------------------------------
References:

1) P.J. Plauger, "The Standard C Library", Prentice-Hall, 1992, Ch. 7.
2) W.J. Cody, Jr., and W. Waite, "Software Manual For the Elementary
   Functions", Prentice-Hall, 1980.
3) Namir Shammas, "C/C++ Mathematical Algorithms for Scientists and Engineers",
   McGraw-Hill, 1995, Ch 8.
4) H.T. Lau, "A Numerical Library in C for Scientists and Engineers",
   CRC Press, 1994, Ch. 6.
5) "Pentium(tm) Processor User's Manual, Volume 3: Architecture
   and Programming Manual", Intel, 1994

All angle parameters and results of trig functions are in radians.

Most of the following trig and log routines map directly to Intel 80387 FPU
floating point machine instructions.  Input domains, output ranges, and
error handling are determined largely by the FPU hardware.
Routines coded in assembler favor the Pentium FPU pipeline architecture.
-----------------------------------------------------------------------}

{ Trigonometric functions }
function ArcCos(X: Extended): Extended;  { IN: |X| <= 1  OUT: [0..PI] radians }
function ArcSin(X: Extended): Extended;  { IN: |X| <= 1  OUT: [-PI/2..PI/2] radians }

{ ArcTan2 calculates ArcTan(Y/X), and returns an angle in the correct quadrant.
  IN: |Y| < 2^64, |X| < 2^64, X <> 0   OUT: [-PI..PI] radians }
function ArcTan2(Y, X: Extended): Extended;

{ SinCos is 2x faster than calling Sin and Cos separately for the same angle }
procedure SinCos(Theta: Extended; var Sin, Cos: Extended) register;
function  Tan(X: Extended): Extended;
function  Cotan(X: Extended): Extended;           { 1 / tan(X), X <> 0 }
function  Hypot(X, Y: Extended): Extended;        { Sqrt(X**2 + Y**2) }

{ Angle unit conversion routines }
function DegToRad(Degrees: Extended): Extended;  { Radians := Degrees * PI / 180}
function RadToDeg(Radians: Extended): Extended;  { Degrees := Radians * 180 / PI }
function GradToRad(Grads: Extended): Extended;   { Radians := Grads * PI / 200 }
function RadToGrad(Radians: Extended): Extended; { Grads := Radians * 200 / PI }
function CycleToRad(Cycles: Extended): Extended; { Radians := Cycles * 2PI }
function RadToCycle(Radians: Extended): Extended;{ Cycles := Radians / 2PI }

{ Hyperbolic functions and inverses }
function Cosh(X: Extended): Extended;
function Sinh(X: Extended): Extended;
function Tanh(X: Extended): Extended;
function ArcCosh(X: Extended): Extended;   { IN: X >= 1 }
function ArcSinh(X: Extended): Extended;
function ArcTanh(X: Extended): Extended;   { IN: |X| <= 1 }

{ Logorithmic functions }
function LnXP1(X: Extended): Extended;   { Ln(X + 1), accurate for X near zero }
function Log10(X: Extended): Extended;                     { Log base 10 of X}
function Log2(X: Extended): Extended;                      { Log base 2 of X }
function LogN(Base, X: Extended): Extended;                { Log base N of X }

{ Exponential functions }

function IntegerPower(Base,Exponent:Integer):Integer;


{ IntPower: Raise base to an integral power.  Fast. }
function IntPower(Base: Extended; Exponent: Integer): Extended register;

{ Power: Raise base to any power.
  For fractional exponents, or exponents > MaxInt, base must be > 0. }
function Power(Base, Exponent: Extended): Extended;


{ Miscellaneous Routines }

{ Frexp:  Separates the mantissa and exponent of X. }
//procedure Frexp(X: Extended; var Mantissa: Extended; var Exponent: Integer) register;

{ Ldexp: returns X*2**P }
//function  Ldexp(X: Extended; P: Integer): Extended register;

{ Ceil: Smallest integer >= X, |X| < MaxInt }
function  Ceil(X: Extended):Integer;

{ Floor: Largest integer <= X,  |X| < MaxInt }
function  Floor(X: Extended): Integer;

{ Poly: Evaluates a uniform polynomial of one variable at value X.
    The coefficients are ordered in increasing powers of X:
    Coefficients[0] + Coefficients[1]*X + ... + Coefficients[N]*(X**N) }
function Poly(X: Extended; const Coefficients: array of Double): Extended;

procedure SwapVar(Var var1,var2:Integer);overload;
procedure SwapVar(Var var1,var2:Double );overload;


type
  EInvalidArgument = class(EMathError) end;

////////////// IMPLEMENTATION //////////////////

Implementation

{$IFDEF WIN64}
Uses System.Math;
{$ENDIF}


// START resource string wizard section
Resourcestring
  R_InvalidArgumentInMathFunction     = 'Argument incorrect dans la fonction de maths...';
  R_ProcComputemedianDoubleOutOfRange = 'Proc.  computemedianDouble : hors du Domaine';
  R_ProcComputemedianDoubleOutOfBound = 'Proc.  computemedianDouble : hors de la Limite';
  R_ProcComputemedianDoubleIndex      = 'Proc.  computemedianDouble, Index= ';

// END resource string wizard section



Function CalculePolyXY_AstromX(Xc,Yc,X,Y:Double;N:Integer;V:TVectSolAstromStatic):Double;
var M  :Integer;
    Som:Double ;
begin
 Som:=0;
 for M:=1 to N do
  Som:=Som+(V[M]*PolyN(X-Xc,Y-Yc,M));
 CalculePolyXY_AstromX:=Som+Xc;
end;


Function CalculePolyXY_AstromY(Xc,Yc,X,Y:Double;N:Integer;V:TVectSolAstromStatic):Double;
var M  :Integer;
    Som:Double ;
begin
 Som:=0;
 for M:=1 to N do
  Som:=Som+(V[M]*PolyN(X-Xc,Y-Yc,M));
 CalculePolyXY_AstromY:=Som+Yc;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function NewtonRaphsonResolution(pf,pg:Double;var X,Y:Double;Dimpoly:Integer;Pl1,Pl2:Vecteur_math;
                                 Epsilon:Double;MaxIteration:Integer):Integer;

  procedure NewtonParametres(X,Y:Double;var f,g,fx,gx,fy,gy:double);
  var I:Integer;
  begin

   f:=0;
   for I:=1 to Dimpoly do
    f:=f+pl1[I]*PolyElem(X,Y,DegreX[I],DegreY[I]);

   g:=0;
   for I:=1 to Dimpoly do
    g:=g+pl2[I]*PolyElem(X,Y,DegreX[I],DegreY[I]);

   //derivee selon les X
   fx:=0;
   for I:=1 to Dimpoly do
   begin
    if (DegreX[I]<>0) then
     fx:=fx+DegreX[I]*pl1[i]*PolyElem(X,Y,DegreX[I]-1,DegreY[I]);
   end;

   gx:=0;
   for I:=1 to Dimpoly do
   begin
    if (DegreX[I]<>0) then
     gx:=gx+DegreX[I]*pl2[i]*PolyElem(X,Y,DegreX[I]-1,DegreY[I]);
   end;

   //derivee selon les Y
   fy:=0;
   for I:=1 to Dimpoly do
   begin
    if (DegreY[I]<>0) then
     fy:=fy+DegreY[I]*pl1[i]*PolyElem(X,Y,DegreX[I],DegreY[I]-1);
   end;

   gy:=0;
   for I:=1 to Dimpoly do
   begin
    if (DegreY[I]<>0) then
     gy:=gy+DegreY[I]*pl2[i]*PolyElem(X,Y,DegreX[I],DegreY[I]-1);
   end;
  end;


 var I:Integer;
     f,g,fx,gx,fy,gy:Double;
     DeltaX,DeltaY:Double;
 begin

  I:=0;
  repeat
   NewTonParametres(X,Y,f,g,fx,gx,fy,gy);
   f:=f-pf;
   g:=g-pg;
   DeltaX:=(-f*gy+g*fy)/(fx*gy-fy*gx);
   DeltaY:=(-g*fx+f*gx)/(fx*gy-fy*gx);
   X:=X+DeltaX;
   Y:=Y+DeltaY;
   inc(I);
  until (I=MaxIteration) or ((abs(DeltaX)<Epsilon) and (abs(DeltaY)<Epsilon));
  result:=I;
 end;




 function Multi(p,q:complexe):complexe;
 begin
  Multi.re:=(p.re*q.re)-(q.im*p.im);
  Multi.im:=(p.re*q.im)+(p.im*q.re);
 end;

 function conj(p:complexe):complexe;
 begin
  conj.re:= p.re;
  conj.im:=-p.im;
 end;

 function MultReal(p:complexe;s:Double):complexe;
 begin
  MultReal.re:=s*p.re;
  MultReal.im:=s*p.im;
 end;

 function Som(p,q:complexe):complexe;
 begin
  Som.re:=p.re+q.re;
  Som.im:=p.im+q.im;
 end;

 function Module(p:complexe):Double;
 begin
  module:=modul(p.re,p.im);
 end;

 function divi(p,q:complexe):complexe;
 begin
  divi:=MultReal(Multi(p,conj(q)),Sqr(1.0/Module(q)));
 end;


function PolyElem(X,Y:Double;Xn,Yn:Integer):Double;
 var N  :Integer;
     A,B:Double;

begin
 A:=1;
 B:=1;

 If (Xn<>0) then
 for N:=1 to Xn do
   A:=A*X;

 If (Yn<>0) then
  For N:=1 to Yn do
   B:=B*Y;

 PolyElem:=A*B;
end;



function PolyN(X,Y:Double;n:Integer):Double;
begin
 PolyN:=PolyElem(X,Y,DegreX[N],DegreY[N]);
end;


function CalculePolyXY_(X,Y:Double;Ordre:Integer;Coef:Array of Double):Double;
var M,N:Integer;
    Som:Double ;

begin
 Som:=0;

 N:=ComputeSizePoly(Ordre);

 for M:=1 to N do
  Som:=Som+(Coef[M-1]*PolyN(X,Y,M));

 CalculePolyXY_:=Som;
end;



function ProdScalaire(X1,Y1,Xbase,Ybase:Single):Single;
begin
 result:=(X1*XBase+Y1*YBase)/(sqr(XBase)+Sqr(YBase));
end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////


Procedure  AllocVectM(N  :Integer;Var Vecteur:Vecteur_math);
begin
 Setlength(Vecteur,N+1); // 0,1 .. -> N
 Vecteur[0]:=0;
end;

Procedure  AllocVectandCopy(VecteurIn:Vecteur_math;Var VecteurOut:Vecteur_math);
Var k:Integer;
Begin
 Setlength(VecteurOut,length(VecteurIn)); // 0,1 .. -> N
 For k:=0 to length(VecteurIn)- 1 do VecteurOut[k]:=VecteurIn[k];
end;

Procedure  AllocMatM (N,M:Integer;Var Matrice:Matrice_math);
Var i:Integer;
begin

 Setlength(Matrice,N+1); // 0,1 .. -> N

 for i := 0 to N do
   Setlength(Matrice[i],M+1); // 0,1 .. -> M

 for i := 0 to N do
  Matrice[i,0]:=0;

 for i := 0 to M do
  Matrice[0,i]:=0;

end;

Procedure  AllocvectFieldM(N,M:Integer;Var Matrice:Champ_vecteurs);
Var i,j:Integer;
begin
  Setlength(Matrice,N+1); // 0,1 .. -> N

  for i := 0 to N do
   Setlength(Matrice[i],M+1); // 0,1 .. -> M

  For j:=0 to length(Matrice)-1 do
  For i:=0 to length(Matrice[j])-1 do
    Setlength(Matrice[j][i],0);

end;


Procedure  UnAllocVectM(Var Vecteur:Vecteur_math);
begin
 Setlength(Vecteur,0);
end;

Procedure  UnAllocMatM (Var Matrice:Matrice_math);
Var i:Integer;
begin
 For i:=0 to length(Matrice)-1 do
   Setlength(Matrice[i],0);
 Setlength(Matrice,0); // 0,1 .. -> N
end;

Procedure  UnAllocvectFieldM(Var Matrice:Champ_vecteurs);
Var i,j:Integer;
begin
 For j:=0 to length(Matrice)-1 do
 For i:=0 to length(Matrice[j])-1 do
   Setlength(Matrice[j][i],0);

 For i:=0 to length(Matrice)-1 do
   Setlength(Matrice[i],0);
 Setlength(Matrice,0); // 0,1 .. -> N
end;


Function CalculePolyXY(X,Y:Double;N:Integer;V:Vecteur_math):Double;
var M  :Integer;
    Som:Double ;
begin
 Som:=0;
 for M:=1 to N do
  Som:=Som+(V[M]*PolyN(X,Y,M));
 CalculePolyXY:=Som;
end;


{calcule le produit W d'une mat carree M n,n par un vect V}
{********************}
procedure ProdMatVec(N:Integer;M:Matrice_math;V:Vecteur_math;Var W:Vecteur_math);
var
  I,J   : Integer ;

begin
 For I:=1 to N do
 begin
   W[I]:=0;
   for J:=1 to N do
    W[I]:=W[I]+(M[I,J]*V[J]);  // I=ligne J=col
 end
end;

Procedure  FillvectZero   (Var Vecteur:Vecteur_math;Elements:Integer);
Var i:Integer;
begin
 Try
 For i:=0 to Elements do Vecteur[i]:=0;
 Except
 end;
end;


Procedure  FillMatriceZero(Var Matrice:Matrice_math;Elements:Integer);  //Square
Var i,j:Integer;
begin
 Try
 For i:=0 to Elements do
  For j:=0 to Elements do Matrice[i,j]:=0;
 Except
 end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


procedure  InverseMatrice     (N:Integer;M:Matrice_math;Var InvM:Matrice_math;var Bon:boolean);
const Seuil=1E-20;

type
  TLig_Double = array[1..Maxint div sizeof(Double)] of Double;
  PVect_double= ^TLig_double;

  TMat_double = array[1..Maxint div sizeof(Pointer)] of PVect_double;
  PMat_double = ^TMat_double;

  //$R+

var
  Inversible      : Boolean     ;
  I, J, K, Pos    : Integer     ;
  Max, Pivot, Mult: Double      ;
  Q               : PMat_double ;
  InterVirt       : PVect_double;
  InterVirt2      : PVect_double;
  Inter3          : PVect_double;
  InterD          : Double      ;

begin
  Bon:=False;

  // initialisation de la matrice Q a n lignes et 2n colonnes
  Try                    { Q = [ M | I ] }

  Getmem(Q,N*sizeof(Pointer));

  For i:=1 to N do
   Getmem(Q^[i],sizeof(Double)*2*N);

  Getmem(Inter3,2*N*sizeof(Double));

  Try

  For I:=1 to N do
  begin
   InterVirt := Q[I] ;

   For J:=1 to N do
     Q[I,J]:=M[I,J];


   For j:=1 to N do
     Q[I,N+j]:=0;


   For j:=N+1 to 2*N do
    if  (J=I+N) then
     InterVirt^[J]:=1
    else
     InterVirt^[J]:=0;

  end;


  {inversion par methode de Gauss}
  Inversible:=True;
  K         :=1;


  While (K<=N) and Inversible do
  begin

   InterVirt:=Q^[K];
   Max      :=Abs(InterVirt^[k]);

   {recherche de max ds col k}
   Pos:=k;

   For I:=K+1 to N do
   If abs(Q^[I,K])>Max then
   begin
    Max:=abs(Q^[I,K]);
    pos:=I;
   end;
   {max trouve en ligne pos}

   If (Max<seuil) then
    inversible:=false
   else
   begin

    {echange Lk et Lpos}
    If Pos<>K then
    begin
     Move(InterVirt^[1],Inter3^[1] , 2*N*SizeOf(Double));
     Move(Q^[pos,1] ,InterVirt^[1] , 2*N*SizeOf(Double));
     Move(Inter3^[1],Q^[pos,1]     , 2*N*SizeOf(Double));
    end;

    For J:=1 to 2*N do
    begin
      InterD       := InterVirt^[j];
      InterVirt^[j]:= Q^[pos,j];
      Q^[pos,j]    := InterD;
    end;

    {pivot: Q[k,k] . ligne du pivot : Lk}
    {division de la ligne du pivot par le pivot}
    pivot := InterVirt^[k];

    If (pivot=0) then
    begin
     inversible:=False;
     Exit;               // Exec finally
    end;

    For J:=1 to 2*N do
     If (J<>K) then
      InterVirt^[J]:=InterVirt^[J]/pivot;

    InterVirt^[k] := 1 ;

    {reduction des lignes Li # Lk}

    For I:=1 to K-1 do
    begin

     InterVirt2    := Q^[I] ;
     mult          := InterVirt2^[k] ;
     InterVirt2^[k]:= 0 ;

     For J:=K+1 to 2*N do
      InterVirt2^[J]:=InterVirt2^[J]-Mult*InterVirt^[J];

    end;

    For I:=K+1 to N do
    begin
     InterVirt2:=Q^[I] ;
     Mult      :=InterVirt2^[K]  ;
     InterVirt2^[K]:=0 ;

     For J:=K+1 to 2*N do
      InterVirt2^[J]:=InterVirt2^[J]-Mult*InterVirt^[J];

    end;
   end;

   inc(K);
  end;

  {methode de Gauss terminee}
  {fabrication de InvM, partie droite de Q}

  if Inversible then
  begin
     For I:=1 to N do
     For J:=1 to N do
      InvM[I,J]:=Q[I,N+J];
     Bon:=True;
  end;


  Finally
  For i:=1 to N do Freemem(Q^[i],sizeof(Double)*2*N);

  Freemem(Q     ,N  *sizeof(Pointer));
  Freemem(Inter3,N*2*sizeof(Double ));
  end;

  Except
   On EinvalidOp do raise EinvalidOp.create('Inversion de matrice -> Opération invalide!');
   On EOverflow  do raise EOverflow.create ('Inversion de matrice -> Débordement !')
   else raise Exception.create('Inversion de matrice -> Autre exception !')
  end;

end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



procedure  InverseMatrice_NoEx(N:integer;M:Matrice_math;Var InvM:Matrice_math;var Bon:Boolean);
Begin
 Try
   InverseMatrice(N,M,InvM,Bon);
 Except
 end;
end;


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

procedure Remet2Pi(Var Angle:Double); // Bound to 0 to 2Pi
Var
  NbTours:Double;

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

procedure RemetMPPi(Var Angle:Double); //  Bound to -Pi to Pi
begin
  If (Abs(Angle)>100) then
  Begin
    Remet2Pi (Angle); //  0  -> 2*Pi
    RemetMPPi(Angle); // -Pi -> Pi
  end
  else
  begin
    Try
     While Angle <  -Pi    do Angle:=Angle+(2*Pi);
     While Angle >=  Pi    do Angle:=Angle-(2*Pi);
    Except
    end;
  end;
end;


procedure BoundDelta_CheckAlpha(Var Delta,Alpha:Double); // -Pi/2 to Pi/2
begin
 // Other side of the sphere
 If Delta>Pi/2 then
 begin
  Alpha:=Alpha+Pi;
  Remet2Pi(Alpha);
  Delta:=Pi-Delta;
 end
 else
 If Delta<-Pi/2 then
 begin
  Alpha:=Alpha+Pi;
  Remet2Pi(Alpha);
  Delta:=-Pi-Delta;
 end;
end;


Procedure AddRADec(Var RA :Double;Const  OffsetRA:Double;
                   Var Dec:Double;Const OffsetDec:Double);

begin
 RA:=RA+OffsetRA;
 Remet2Pi(RA);

 Dec:=Dec+OffsetDec;
 BoundDelta_CheckAlpha(Dec,Ra);
end;


{ renvoie le module de x et y }
Function Modul(x,y:Double):Double;
begin
 Modul:=Hypot(X,Y);
end;

{ renvoie le module de x et y }
Function Modulcar(x,y:Double):Double;
begin
 Modulcar:=Sqr(x)+Sqr(y);
end;

function RealModulo(E1,E2:Double):Double;
begin
 // Modulo 0 to E2

 while E1>E2 do E1:=E1-E2;
 while E1<0  do E1:=E1+E2;
 result:=E1;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Function HexadecStringAngleHorSimplex(d:Double):ShortString;
 // -hhHmmM -12 to +12, entre -Pi et Pi
var
 Inter:Double;
 S,Ch:String;

Begin
  
  If d>Pi  then d:=d-2*Pi;
  If d<-Pi then d:=d+2*Pi;

  Inter:=Abs(d);
  Inter:=(Inter/pi)*12;
  ch:=intToStr(Trunc(Inter));

  If length(ch)=1 then Ch:='0'+Ch;
  S:=ch+'h';

  inter:=Frac(Inter)*60;
  ch:=intToStr(round(Inter));

  If length(ch)=1 then Ch:='0'+Ch;
  S:=S+ch+'m';

  If d<0 then S:='-'+S else S:='+'+S;
  Result:=S;
end;


Function HexadecStringAngleHORAstrom(d:Double):ShortString;

var
 decim,
 Inter,Mem,Eps:Double;
 h,s          :ShortString;

begin
     RemetMPPi(d);
     Mem     :=d;

     if d<0 then h:='-'
            else h:='+';

     d:=abs(d);
     Inter:=d;

     d:=(RadToDeg(Inter)/180.0)*12.0;

     If d<10 then h:=h+'0';
     h     :=h+IntToStr(Trunc(d))+'h';

     decim := (frac(d) * 60.0);

     s :=IntToStr(Trunc(decim));
     If s[0]=#1 then s:='0'+s;


     h := h + s + 'm';

     decim:=frac(decim)*60.0;
     s := FloatToStrF(decim,ffFixed,4,3);
     //2.366
     If (s[2]='.') or (s[2]=',') then s:='0'+s;

     h := h + s + 's';

     if (s='60.000') then // +12h00m60.000499s
      begin
       Eps:=degtorad(15.0*(0.00049999/3600.0));
       If (Mem>0) then Mem:=Mem+Eps
                  else Mem:=Mem-Eps;
       h:=HexadecStringAngleHORAstrom(Mem);
     end;

     HexadecStringAngleHORAstrom:=h;
end;




Function HexadecStringAlpha(d:Double):ShortString;
 // hhHmmMssS
var
 decim,
 Inter,Mem,Eps:Double;
 h,s          :ShortString;

begin
     Remet2Pi(d);
     Inter:=d;
     Mem  :=d;
     d:=(RadToDeg(Inter)/180.0)*12;

     h     := IntToStr(Trunc(d))+'h';
     If d <10 then h:='0'+h;

     decim := (frac(d) * 60);

     s :=IntToStr(Trunc(decim));
     If s[0]=#1 then s:='0'+s;

     h := h + s + 'm';

     s := IntToStr(Round (frac (decim) * 60));

     If s[0]=#1 then s:='0'+s;

     h := h + s + 's';

     if (s='60') then  // 12h20m60s
      begin
       Eps:=degtorad(15.0*(0.49999/3600.0));
       If Mem>0 then Mem:=Mem+Eps
                else Mem:=Mem-Eps;
       h:=HexadecStringAlpha(Mem);
     end;
     HexadecStringAlpha:=h;

end;

// Modif le 04/04/2000
// HHhMMmSS.ZZZs
Function HexadecStringAlphaAstrom(d:Double):ShortString;

var
 decim,
 Inter,Mem,Eps:Double;
 h,s          :ShortString;

begin
     Remet2Pi(d);
     Inter:=d;
     Mem  :=d;
     d:=(RadToDeg(Inter)/180.0)*12.0;

     h     := IntToStr(Trunc(d))+'h';
     If d<10 then h:='0'+h;

     decim := (frac(d) * 60.0);

     s :=IntToStr(Trunc(decim));
     If s[0]=#1 then s:='0'+s;


     h := h + s + 'm';

     decim:=frac(decim)*60.0;
     s := FloatToStrF(decim,ffFixed,5,3);
     //2.366
     If (s[2]='.') or (s[2]=',') then s:='0'+s;

     h := h + s + 's';

     if (s='60.000') then // !! OURPS
      begin
       Eps:=degtorad(15.0*(0.49999/3600.0));
       If Mem>0 then Mem:=Mem+Eps
                else Mem:=Mem-Eps;
       h:=HexadecStringAlphaAstrom(Mem);
     end;
     HexadecStringAlphaAstrom:=h;
end;

// Copie de "HexadecStringAlphaAstrom"
Function HexadecStringAlphaAstromAladin(d:Double):ShortString;

var
 decim,
 Inter,Mem,Eps:Double;
 h,s          :ShortString;

begin
     Remet2Pi(d);
     Inter:=d;
     Mem  :=d;
     d:=(RadToDeg(Inter)/180.0)*12.0;

     h     := IntToStr(Trunc(d))+' ';
     If d<10 then h:='0'+h;

     decim := (frac(d) * 60.0);

     s :=IntToStr(Trunc(decim));
     If s[0]=#1 then s:='0'+s;


     h := h + s + ' ';

     decim:=frac(decim)*60.0;
     s := FloatToStrF(decim,ffFixed,4,2);
     //2.366
     If (s[2]='.') or (s[2]=',') then s:='0'+s;

     h := h + s;

     if (s='60.00') then // !! OURPS
      begin
       Eps:=degtorad(15.0*(0.49999/3600.0));
       If Mem>0 then Mem:=Mem+Eps
                else Mem:=Mem-Eps;
       h:=HexadecStringAlphaAstrom(Mem);
     end;
     HexadecStringAlphaAstromAladin:=h;
end;


Function HexadecStringDelta(d:Double):ShortString;
 // +dd°dd'dd"
var
 decim,
 Inter,mem,Eps:Double;
 h,s          :ShortString;

begin
     Mem  :=d;
     Inter:=d;
     d:=RadTodeg(Inter);

     If d<0  then h:='-' else h:='+';
     d:=Abs(d);
     If d<10.0 then h:=h+'0';


     h     :=h+IntToStr(Trunc(d))+'°';
     decim := (frac(d) * 60);

     s := IntToStr(Trunc (decim));
     If s[0]=#1 then s:='0'+s;

     h := h + s + '''';
     s:=IntToStr(Round (frac(decim)*60.0));

     If s[0]=#1 then s:='0'+s;

     h := h + s + '''''';

     if (s='60') then
      begin
       Eps:=degtorad((0.49999/3600.0));
       If Mem>0 then Mem:=Mem+Eps
                else Mem:=Mem-Eps;
       h:=HexadecStringDelta(Mem);
     end;
     HexadecStringDelta:=h;

end;

Function HexadecStringDeltaWEB(d:Double):ShortString;
 // +dd&deg;dd'dd"
var
 decim,
 Inter,mem,Eps:Double;
 h,s          :ShortString;

begin
     Mem  :=d;
     Inter:=d;
     d:=RadTodeg(Inter);

     If d<0  then h:='-' else h:='+';
     d:=Abs(d);
     If d<10.0 then h:=h+'0';


     h     :=h+IntToStr(Trunc(d))+'&deg;';
     decim := (frac(d) * 60);

     s := IntToStr(Trunc (decim));
     If s[0]=#1 then s:='0'+s;

     h := h + s + '''';
     s:=IntToStr(Round (frac(decim)*60.0));

     If s[0]=#1 then s:='0'+s;

     h := h + s + '''''';

     if (s='60') then
      begin
       Eps:=degtorad((0.49999/3600.0));
       If Mem>0 then Mem:=Mem+Eps
                else Mem:=Mem-Eps;
       h:=HexadecStringDelta(Mem);
     end;
     HexadecStringDeltaWEB:=h;

end;

Function HexadecStringAZWEB(d:Double):ShortString;
 // dd.mm&deg;
var
 decim,
 Inter,mem:Double;
 h        :ShortString;

begin
     Mem  :=d;
     Inter:=d;
     d:=RadTodeg(Inter);

     If d<0  then h:='-' else h:='+';
     d:=Abs(d);
     If d<10.0 then h:=h+'0';
     h     :=h+IntToStr(Trunc(d))+'.';
     decim := (frac(d) * 100);
     h := h + IntToStr(Trunc(decim)) + '&deg;';
     HexadecStringAZWEB:=h;

end;


Function HexadecStringDeltaNO_SIGN(d:Double):ShortString;
Var S:String;
Begin
 S:=HexadecStringDelta(d);
 result:=Copy(S,2,length(S)-1);
end;


Function HexadecStringDeltaAstrom(d:Double):ShortString;
 // +dd°dd'dd.dd"
var
 decim,
 Inter,Mem,Eps:Double;
 h,s          :ShortString;

begin
     Mem:=d;
     Inter:=d;
     d:=RadTodeg(Inter);

     If d<0 then h:='-' else h:='+';
     d:=Abs(d);
     If d<10 then h:=h+'0';

     h     :=h+IntToStr(Trunc(d))+'°';
     decim := (frac(d) * 60.0);

     s := IntToStr(Trunc (decim));
     If s[0]=#1 then s:='0'+s;

     h := h + s + '''';
     s:=FloatToStrF((frac(decim)*60.0),ffFixed,5,2);
     //2.366
     If (s[2]='.') or (s[2]=',') then s:='0'+s;

     h := h + s + '''''';

     if (s='60.00') then
      begin
       Eps:=degtorad((0.0049999/3600.0));
       if (Mem>0) then Mem:=Mem+Eps
                  else Mem:=Mem-Eps;
       h:=HexadecStringDeltaAstrom(Mem);
     end;
     HexadecStringDeltaAstrom:=h;

end;

// Copie de "HexadecStringDeltaAstrom"
Function HexadecStringDeltaAstromAladin(d:Double):ShortString;

var
 decim,
 Inter,Mem,Eps:Double;
 h,s          :ShortString;

begin
     Mem:=d;
     Inter:=d;
     d:=RadTodeg(Inter);

     If d<0 then h:='-' else h:='+';
     d:=Abs(d);
     If d<10 then h:=h+'0';

     h     :=h+IntToStr(Trunc(d))+' ';
     decim := (frac(d) * 60.0);

     s := IntToStr(Trunc (decim));
     If s[0]=#1 then s:='0'+s;

     h := h + s + ' ';
     s:=FloatToStrF((frac(decim)*60.0),ffFixed,3,1);
     //2.366
     If (s[2]='.') or (s[2]=',') then s:='0'+s;

     h := h + s;

     if (s='60.0') then
      begin
       Eps:=degtorad((0.0049999/3600.0));
       if (Mem>0) then Mem:=Mem+Eps
                  else Mem:=Mem-Eps;
       h:=HexadecStringDeltaAstrom(Mem);
     end;
     HexadecStringDeltaAstromAladin:=h;

end;



Function HexadecStringDeltaAstromNO_SIGN(d:Double):ShortString;
Var S:String;
Begin
 S:=HexadecStringDeltaAstrom(d);
 result:=Copy(S,2,length(S)-1);
end;


Function  SimpleAngleStr(d:Double):ShortString;
begin
   d:=RadToDeg(d);
   if (d>10) then
    result:=Format('%1.0f °',[d]) else
   if (d>1) then
    result:=Format('%1.1f °',[d]) else
   begin
    d:=d*60;
    if (d>10) then
     result:=Format('%1.0f ''',[d]) else
    if (d>1) then
     result:=Format('%1.1f ''',[d]) else
    begin
      d:=d*60;
      if (d>10) then
       result:=Format('%1.0f ''''',[d]) else
      if (d>1) then
       result:=Format('%1.1f ''''',[d]);
    end;
   end;
end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


{ renvoie la valeur pour x et y des coordonnees polaires r et teta  }
procedure Pol(x,y:Double;Var r,teta:Double);
var a,b,c,d:Double;
begin
 a:=x;
 b:=y;
 c:=Modul(a,b);
 d:=0;
 if (x = 0) and (y > 0)  then d:=    pi/2 else
 if (x = 0) and (y < 0)  then d:=(3*pi)/2 else
 if (x > 0) and (y >= 0) then d:=arctan(y/x) else
 if (x < 0) and (y >= 0) then d:=arctan(y/x)+pi else
 if (x < 0) and (y < 0)  then d:=arctan(y/x)+pi else
 if (x > 0) and (y < 0)  then d:=arctan(y/x)+(2*pi);
 Teta:=d;
 R   :=c;
 Remet2Pi(Teta);
end;


procedure PolDouble(x,y:Double;Var r,teta:Double);
begin
 R:=Hypot(x,y);
 Teta:=arctan2(y,x)
end;

procedure ExtraPol(x,y:Double;Const r,teta:Double;Var Xp,Yp:Double);
begin
 Xp:=x+r*cos(teta);
 Yp:=y+r*sin(teta);
end;

{ renvoie la valeur pour r et teta des coordonnees cartesiennes x et y  }
procedure Recta(r,teta:Double;var x,y:Double);
var c,d:Extended;
begin
 SinCos(Teta,d,c);
 x:=r*c;
 y:=r*d;
end;



type
  TPoly = record
    Neg, Pos, DNeg, DPos: Extended
  end;

const
  MaxIterations = 15;

procedure ArgError;
begin
  raise EInvalidArgument.Create(R_InvalidArgumentInMathFunction);
end;

function DegToRad(Degrees: Extended): Extended;  { Radians := Degrees * PI / 180 }
begin
  Result := Degrees * (PI / 180);
end;

function RadToDeg(Radians: Extended): Extended;  { Degrees := Radians * 180 / PI }
begin
  Result := Radians * (180 / PI);
end;

function GradToRad(Grads: Extended): Extended;   { Radians := Grads * PI / 200 }
begin
  Result := Grads * (PI / 200);
end;

function RadToGrad(Radians: Extended): Extended; { Grads := Radians * 200 / PI}
begin
  Result := Radians * (200 / PI);
end;

function CycleToRad(Cycles: Extended): Extended; { Radians := Cycles * 2PI }
begin
  Result := Cycles * (2 * PI);
end;

function RadToCycle(Radians: Extended): Extended;{ Cycles := Radians / 2PI }
begin
  Result := Radians / (2 * PI);
end;

function LnXP1(X: Extended): Extended;
{$IFDEF WIN32}
{ Return ln(1 + X).  Accurate for X near 0. }
asm
        FLDLN2
        MOV     AX,WORD PTR X+8               { exponent }
        FLD     X
        CMP     AX,$3FFD                      { .4225 }
        JB      @@1
        FLD1
        FADD
        FYL2X
        JMP     @@2
@@1:
        FYL2XP1
@@2:
        FWAIT
{$ENDIF}

{$IFDEF WIN64}
Begin
Result:=ln(X+1.0);
{$ENDIF}
end;


function IntegerPower(Base,Exponent:Integer):Integer;
var I,J:Integer;
begin
 J:=1;
 for I:=1 to Exponent do
  J:=Base*J;
 result:=J; 
end;


function IntPower(Base: Extended; Exponent: Integer): Extended;
{$IFDEF WIN32}
asm
        push    eax
        push    ebx
        push    ecx
        push    edx

        mov     ecx, eax
        cdq
        fld1                      { Result := 1 }
        xor     eax, edx
        sub     eax, edx          { eax := Abs(Exponent) }
        jz      @@3
        fld     Base
        jmp     @@2
@@1:    fmul    ST, ST            { X := Base * Base }
@@2:    shr     eax,1
        jnc     @@1
        fmul    ST(1),ST          { Result := Result * X }
        jnz     @@1
        fstp    st                { pop X from FPU stack }
        cmp     ecx, 0
        jge     @@3
        fld1
        fdivrp                    { Result := 1 / Result }
@@3:
        fwait

        pop    edx
        pop    ecx
        pop    ebx
        pop    eax
{$ENDIF}

{$IFDEF WIN64}
// Invariant: Y >= 0 & Result*X**Y = X**Exponent.  Init Y = Exponent and Result = 1.
var
  Y: Integer;

begin
  Y      := Abs(Exponent);
  Result := 1.0;

  while (Y>0) do
  begin
    while not Odd(Y) do
    begin
      Y    := Y shr 1    ;
      Base := Base * Base;
    end;
    Dec(Y);
    Result := Result * Base;
  end;

  if (Exponent<0) then Result := 1.0/Result;
{$ENDIF}

end;

function Compound(R: Extended; N: Integer): Extended;
{ Return (1 + R)**N. }
begin
  Result := IntPower(1.0 + R, N)
end;


procedure PolyX(const A: array of Double; X: Extended; var Poly: TPoly);
{ Compute A[0] + A[1]*X + ... + A[N]*X**N and X * its derivative.
  Accumulate positive and negative terms separately. }
var
  I: Integer;
  Neg, Pos, DNeg, DPos: Extended;
begin
  Neg := 0.0;
  Pos := 0.0;
  DNeg := 0.0;
  DPos := 0.0;
  for I := Low(A) to High(A) do
  begin
    DNeg := X * DNeg + Neg;
    Neg := Neg * X;
    DPos := X * DPos + Pos;
    Pos := Pos * X;
    if A[I] >= 0.0 then Pos := Pos + A[I] else Neg := Neg + A[I]
  end;
  Poly.Neg := Neg;
  Poly.Pos := Pos;
  Poly.DNeg := DNeg * X;
  Poly.DPos := DPos * X;
end;

function RelSmall(X, Y: Extended): Boolean;
{ Returns True if X is small relative to Y }
const
  C1: Double = 1E-15;
  C2: Double = 1E-12;
begin
  Result := Abs(X) < (C1 + C2 * Abs(Y))
end;

{ Math functions. }

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


function CoTan(X: Extended): Extended;
{$IFDEF WIN32}
asm
        FLD   X
        FPTAN
        FDIVRP
{$ENDIF}
{$IFDEF WIN64}
begin
 Result := Cos(X)/Sin(X) ;
{$ENDIF}
end;



function Hypot(X, Y: Extended): Extended;
//  formula: Sqrt(X*X + Y*Y)
//  Implemented as:  |Y|*Sqrt(1+Sqr(X/Y)), |X| < |Y| for greater precision
var
  Temp: Extended;

begin
  X := Abs(X);
  Y := Abs(Y);
  if X > Y then
  begin
    Temp := X;
    X := Y;
    Y := Temp;
  end;
  if X = 0 then
    Result := Y
  else         // Y > X, X <> 0, so Y > 0
    Result := Y * Sqrt(1 + Sqr(X/Y));
end;


procedure SinCos(Theta: Extended; var Sin, Cos: Extended);
{$IFDEF WIN32}
asm
        FLD     Theta
        FSINCOS
        FSTP    tbyte ptr [edx]    // Cos
        FSTP    tbyte ptr [eax]    // Sin
{$ENDIF}
{$IFDEF WIN64}
Begin
 Sin := System.Sin(Theta);
 Cos := System.Cos(Theta);
 {$ENDIF}
end;



function Ceil(X: Extended): Integer;
begin
  Result := Trunc(X);
  if (Frac(X)>0) then
    Inc(Result);
end;

function Floor(X: Extended): Integer;
begin
  Result := Trunc(X);
  if Frac(X) < 0 then
    Dec(Result);
end;

{ Conversion of bases:  Log.b(X) = Log.a(X) / Log.a(b)  }

function Log10(X: Extended): Extended;
  { Log.10(X) := Log.2(X) * Log.10(2) }
{$IFDEF WIN32}
asm
        FLDLG2     { Log base ten of 2 }
        FLD     X
        FYL2X
        FWAIT
{$ENDIF}
{$IFDEF WIN64}
const
  InvLn10 : UInt64 = $3FDBCB7B1526E50E; // 1/Ln(10)
begin
  Result := Ln(X) * PDouble(@InvLn10)^;
{$ENDIF}
end;


function Log2(X: Extended): Extended;
{$IFDEF WIN32}
asm
        FLD1
        FLD     X
        FYL2X
        FWAIT
{$ENDIF}
{$IFDEF WIN64}
const
  InvLn2 : UInt64 = $3FF71547652B82FE; // 1/Ln(2)
begin
  Result := Ln(X) * PDouble(@InvLn2)^;
{$ENDIF}
end;

function LogN(Base, X: Extended): Extended;
{ Log.N(X) := Log.2(X) / Log.2(N) }
{$IFDEF WIN32}
asm
        FLD1
        FLD     X
        FYL2X
        FLD1
        FLD     Base
        FYL2X
        FDIV
        FWAIT
{$ENDIF}
{$IFDEF WIN64}
begin
  Result := Ln(X) / Ln(Base);
{$ENDIF}
end;


function Poly(X: Extended; const Coefficients: array of Double): Extended;
{ Horner's method }
var
  I: Integer;
begin
  Result := Coefficients[High(Coefficients)];
  for I := High(Coefficients)-1 downto Low(Coefficients) do
    Result := Result * X + Coefficients[I];
end;

function Power(Base, Exponent: Extended): Extended;
begin
  { Make special cases of Exponent = 0 and Exponent = integer.
    Error if Base < 0 and Exponent not integer. }
  if Exponent = 0.0 then
    Result := 1.0               { By fiat, 0**0 = 1 }
  else if (Frac(Exponent) = 0.0) and (Exponent < MaxInt) then
    Result := IntPower(Base, Trunc(Exponent))
  else
  begin
    if Base < 0.0 then ArgError;
    Result := Exp(Exponent * Ln(Base))
  end
end;

{ Hyperbolic functions }

function CoshSinh(X: Extended; Factor: Double): Extended;
begin
  Result := Exp(X) / 2;
  Result := Result + Factor / Result;
end;

function Cosh(X: Extended): Extended;
begin
  Result := CoshSinh(X, 0.25)
end;

function Sinh(X: Extended): Extended;
begin
  Result := CoshSinh(X, -0.25)
end;

const
  MaxTanhDomain = 5678.22249441322; // Ln(MaxExtended)/2

function Tanh(X: Extended): Extended;
begin
  if X > MaxTanhDomain then
    Result := 1.0
  else if X < -MaxTanhDomain then
    Result := -1.0
  else
  begin
    Result := Exp(X);
    Result := Result * Result;
    Result := (Result - 1.0) / (Result + 1.0)
  end;
end;

function ArcCosh(X: Extended): Extended;
begin
  if X <= 1.0 then
    Result := 0.0
  else if X > 1.0e10 then
    Result := Ln(2) + Ln(X)
  else
    Result := Ln(X + Sqrt((X - 1.0) * (X + 1.0)));
end;

function ArcSinh(X: Extended): Extended;
var
  Neg: Boolean;
begin
  if X = 0 then
    Result := 0
  else
  begin
    Neg := (X < 0);
    X := Abs(X);
    if X > 1.0e10 then
      Result := Ln(2) + Ln(X)
    else
    begin
      Result := X*X;
      Result := LnXP1(X + Result / (1 + Sqrt(1 + Result)));
    end;
    if Neg then Result := -Result;
  end;
end;

function ArcTanh(X: Extended): Extended;
var
  Neg: Boolean;
begin
  if X = 0 then
    Result := 0
  else
  begin
    Neg := (X < 0);
    X := Abs(X);
    if X >= 1 then
      Result := MaxExtended
    else
      Result := 0.5 * LnXP1((2.0 * X) / (1.0 - X));
    if Neg then Result := -Result;
  end;
end;

Function HmsToAlphaRad(dd,mm,ss:Double):Double;
begin
 result:=DegToRad((dd+mm/60.0+ss/3600.0)*15.0);
end;

Function HmsToDeltaRad(dd,mm,ss:Double;Neg:Boolean):Double;
begin
 If Neg then result:=-DegToRad((dd+mm/60.0+ss/3600.0))
        else result:=+DegToRad((dd+mm/60.0+ss/3600.0));
end;


function ArctanPoly(Dx,Dy:Double):Double;
var Angle:Double;
begin
 if Dx>=0 then
 begin
  if Dx=0 then
  begin
   if Dy>=0 then
    Angle:=Pi/2.0
   else
    Angle:=3.0*Pi/2.0;
  end
  else
  begin
   if Dy<0 then
    Angle:=Arctan(Dy/abs(Dx))+2.0*Pi
   else
    Angle:=Arctan(Dy/abs(Dx));
  end;
 end
 else
  Angle:=-Arctan(Dy/Abs(Dx))+Pi;
 ArctanPoly:=angle;
end;

Procedure Return_Droite_From_Points(X1,Y1,X2,Y2:Double;Var A,B:Double);
begin
 If Y1-Y2<>0 then
  A:=(X1-X2)/(Y1-Y2)
 else
  A:=1E308;
 If X1<>0 then
  B:=Y1/A*X1
 else
 If X2<>0 then
  B:=Y2/A*X2
 else B:=1E308;

end;

Procedure Return_Droite_Perpen_From_Points(X1,Y1,X2,Y2:Double;Var A,B:Double);
begin
 Return_Droite_From_Points(X1,Y1,X2,Y2,A,B);
 If A<>0 then A:=1/A else A:=1E308;
 If X1<>0 then
  B:=Y1/A*X1
 else B:=1E308;
end;


procedure ComputeArraySTD_Mean(var Ad:Array of Double;Taille:Integer;Var Mean,Stddev:Double);
Var
 T,T2:Extended;
 i:Integer;

Begin
 T :=0;
 T2:=0;

 For i:=0 to Taille-1 do
  begin
    T :=T +Ad[i];
    T2:=T2+Sqr(Ad[i]);
 end;

 Try

  Mean   :=T /Taille;
  T2     :=T2/Taille;

  Stddev :=Sqrt(T2-Sqr(Mean));

 Except
  Stddev :=0;
 end;

end;


function NormalNoise(Ec:Double):Double;
const Definition=12;

var I  :Integer;
    Val:Double;

begin
 Val:=0;

 For I:=1 to Definition do
  Val:=Val+Random;

 val:=Val-(Definition div 2);

 Result:=(Val*Ec);
end;




Function ComputeMagFromFlux(Fref,FMes,Mref:Double):Double;
// m2-m1 = 2.5 log (F1/F2)
// M     = 2.5 log (Fref/F) + mref
begin
 Result:=(2.500*Log10(Fref/FMes)) - Mref ;
end;

Function ComputeFluxFromMagn(Mref,MMes,Fref:Double):Double;
// F1/F2 = 2.512^(m2-m1)
// F     = 2.512^(mref-mmes) * Fref
begin
 Result:=Power(Power(100,1/5),MRef-Mmes)*Fref;
end;



Procedure computemedianDouble(Var D:Array of double;
                              precision:Double;
                              Var Median,Moyen,MostProba,RMS:double);
Const
 MaxDouble = 1.7E308;
 MinDouble = -MaxDouble;
 maxHisto  = 10000;
 MinHisto  = 10;

 var
  Min,Max  : Extended;
  Histo    : Array of Integer;
  i,J      : Integer;
  MaxI     : Integer;
  Nbrehisto: Integer;
  index    : Integer;
  Inter    : Double;
  MinD     : Double;
  Moyen2   : Double;
  NbreE    : Integer;

begin
 Min:=MaxDouble;
 Max:=MinDouble;
 Moyen:=0;
 Moyen2:=0;

 NbreE:=Length(D);

 For i:=0 to NbreE-1 do
 begin
  if Min>D[i] then Min:=D[i];
  if Max<D[i] then Max:=D[i];
  Moyen:=Moyen+D[i];
  Moyen2:=Moyen2+D[i]*D[i];
 end;

 Moyen :=Moyen /NbreE;
 Moyen2:=Moyen2/NbreE;
 RMS   :=sqrt(Moyen2-Moyen*Moyen);

 If max=Min then
 begin
  Median:=Min;
  Exit;
 end;

 i:=0;
 repeat
  inc(i);
  Nbrehisto:=Round((Max-Min)/precision);
  If (Nbrehisto<=MinHisto) then precision:=precision/2;
  If (Nbrehisto>=maxHisto) then precision:=precision*2;
  if i=MaxInt then raise Ematherror.Create(R_ProcComputemedianDoubleOutOfRange);
 until (Nbrehisto>MinHisto) and (Nbrehisto<=maxHisto);

 Setlength(Histo,Nbrehisto+1);
 {$R+}
 MinD:=(Min*(1/precision));

 For i:=0 to Nbrehisto-1 do Histo[i]:=0;

 For i:=0 to NbreE-1 do
 begin
   Inter:=(D[i]*(1/precision));
   Try
   If (Round(Inter-MinD)>=0) and (Round(Inter-MinD)<=Nbrehisto) then
    inc(Histo[Round(Inter-MinD)])
   else raise Ematherror.Create(R_ProcComputemedianDoubleOutOfBound);
   Except
    On E:Exception do raise ERangeError.create(R_ProcComputemedianDoubleIndex+IntToStr(Round(Inter-MinD)))
   end;
 end;

 //index:=0;
 //For i:=0 to Nbrehisto-1 do index:=index+Histo[i];

 // Most likely variable
 maxI :=0;
 index:=0;

 For i:=0 to  Nbrehisto-1 do
  if Histo[i]>maxI then
  begin
   maxI:=Histo[i];
   index:=i;
  end;

 MostProba:=(Index+MinD)*precision;
 {$R-}
 Setlength(Histo,0);


 // Sort
 for I:=0 to NbreE-1 do
  for J:=NbreE-1 downto I do
  begin
   if D[I]>D[J] then
   begin
    Inter:=D[I];
    D[I]:=D[J];
    D[J]:=Inter;
   end;
  end;

  If odd(NbreE) then  //Impair
   median:=D[NbreE div 2 ]
  else
   median:=(D[(NbreE div 2)]+D[(NbreE div 2)-1])/2.0;

end;


var
  HasRandomNormal : Boolean = False;
  ARandomNormal   : Extended;

function RandomNormalF: Extended;
var fac, r, v1, v2: Extended;
begin
    if not HasRandomNormal then
    begin
      Repeat
        v1 := 2.0 * Random - 1.0;
        v2 := 2.0 * Random - 1.0;
        r := Sqr(v1) + Sqr(v2);
      Until r < 1.0;
      fac := Sqrt(-2.0 * ln(r) / r);
      ARandomNormal   := v1 * fac;
      Result          := v2 * fac;
      HasRandomNormal := True;
    end else
    begin
      Result := ARandomNormal;
      HasRandomNormal := False;
    end;
end;

Function ArrayDoubleMax(Var A:Array of Double):Double;
// passage par var, sinon stackOverflow possible !
Var i:Integer;
Begin
 Result:=-1E307;
 For i:=1 to Length(A) do
  if Result<A[i-1] then Result:=A[i-1];
end;

Function ArrayDoubleMin(Var A:Array of Double):Double;
// passage par var, sinon stackOverflow possible !
Var i:Integer;
Begin
 Result:=1E307;
 For i:=1 to Length(A) do
  if Result>A[i-1] then Result:=A[i-1];
end;

Function ArrayIntMin(Var A:Array of Integer):Integer;
Var i:Integer;
Begin
 Result:=Maxint;
 For i:=1 to Length(A) do
  if Result>A[i-1] then Result:=A[i-1];
end;


Function ArrayDoubleMean(Var A:Array of Double):Double;
// passage par var, sinon stackOverflow possible !
Var i:Integer;

Begin
 Result:=0;
 For i:=1 to Length(A) do
  Result:=Result+(A[i-1]/Length(A));
end;

Function ArrayDoubleMeanSign(Var A:Array of Double):Double;
Var i  :Integer;
    Ref:Double;

Begin
 Result:=0   ;
 Ref   :=A[0];

 For i:=1 to Length(A) do
 begin
  if ((Ref * A[i-1])>=0) then
   Result:=Result+(A[i-1]/Length(A))
  else
   Result:=Result-(A[i-1]/Length(A))
 end;


End;



Function ArrayDoubleMean(Var A:Array of Double;Const Nbre:Integer):Double;
// passage par var, sinon stackOverflow possible !
Var i:Integer;
Begin
 Result:=0;
 For i:=1 to Nbre do
  Result:=Result+A[i-1];
 Result:=Result/Nbre;
end;



Function ArrayDoubleRMS(Var A:Array of Double):Double;
// passage par var, sinon stackOverflow possible !

Var i:Integer;
    M1,M2:Double;
Begin

 M1:=0;
 M2:=0;

 For i:=1 to Length(A) do
 begin
  M1:=M1+A[i-1];
  M2:=M2+A[i-1]*A[i-1];
 end;

 M1:=M1/Length(A);
 M2:=M2/Length(A);

 Result:=sqrt(M2-(M1*M1));
end;


Function ArrayDoubleMedian(Var A:Array of Double):Double;
// passage par var, sinon stackOverflow possible !
Var Inter:Double;
    NbreE,I,J:Integer;
Begin
  NbreE := Length(A);

  for I:=0 to NbreE-1 do
  for J:=NbreE-1 downto I do
  begin
   if A[I]>A[J] then
   begin
    Inter:=A[I];
    A[I]:=A[J];
    A[J]:=Inter;
   end;
  end;

  If odd(NbreE) then Result:=A[NbreE div 2] else
                     Result:=(A[NbreE div 2]+A[(NbreE div 2)+1])/2;

end;

Function ArrayDoubleMedian(Var A:Array of Double;Const Nbre:Integer):Double;
// passage par var, sinon stackOverflow possible !
Var Inter:Double;
    I,J:Integer;
Begin
  for I:=0 to Nbre-1 do
  for J:=Nbre-1 downto I do
  begin
   if A[I]>A[J] then
   begin
    Inter:=A[I];
    A[I]:=A[J];
    A[J]:=Inter;
   end;
  end;

  If odd(Nbre) then Result:=A[Nbre div 2] else
                    Result:=(A[Nbre div 2]+A[(Nbre div 2)+1])/2;

end;



Function ArrayDoubleStats(Var A:Array of Double):TstatInfos;
// passage par var, sinon stackOverflow possible !
Begin
 Result.Max   := ArrayDoubleMax(A);
 Result.Min   := ArrayDoubleMin(A);
 Result.Mean  := ArrayDoubleMean(A);
 Result.RMS   := ArrayDoubleRMS(A);
 Result.Median:= ArrayDoubleMedian(A);
end;


// Simple regression lineaire, simple et rapide !
// y=ax+b, r: coef de convergence

Procedure RegressionLin(M:Array of TPtXY;Var a,b,r:Double);
Var i,n:Integer;
    SXY,SY,SX,SX2,SY2:Double;

Begin
 SXY:=0;SX2:=0;
 SY :=0;SY2:=0;
 SX :=0;
 n:=length(M);

 For i:=0 to n-1 do
 begin
  SY:=SY+M[i].Y;
  SX:=SX+M[i].X;
  SXY:=SXY+(M[i].X*M[i].Y);
  SY2:=SY2+(M[i].Y*M[i].Y);
  SX2:=SX2+(M[i].X*M[i].X);
 end;

 a:=(n*SXY-SX*SY)/(n*SX2-(SX*SX));
 b:=(SY-a*SX)/n;

 Try
 r:=(n*SXY-SX*SY)/(sqrt((n*SX2-SX*SX)*(n*SY2-SY*SY)));
 Except
 r:=1.0;
 End;

end;

Function Less_Square_Poly1D(Const DegrePoly:Word;M:Array of TPtXY;var A:array of Double): Boolean ;
//////////////////////////////////////////////////
//
//    FIT par moindres carrés avec une fonction en Y(x)=A0 + A1.X^1 + A2.X^2 + A3.X^3 + ....
//    DegrePoly determine le degre du Polynome
//    A sont les coefs de retour, ATTENTION : non alloués par cette fonction
//    http://kr.cs.ait.ac.th/~radok/math/mat7/step26.htm
//
/////////////////////////////////////////////////

Var
 Matfunc    : matrice_math;
 InvFunc    : matrice_math;
 VectSol    : vecteur_math;
 VectY      : Vecteur_math;

 Inversible : Boolean ;
 i,j        : Integer ;
 DimRe      : Word;
 S          : Double;
 NP,k       : LongWord;
 P          : Double;

begin
 DimRe:=DegrePoly+1;
 NP   :=Length(M);

 AllocMatM (DimRe,DimRe,MatFunc);  // Local
 AllocMatM (DimRe,DimRe,InvFunc);
 AllocVectM(DimRe,VectSol);
 AllocVectM(DimRe,VectY  );

 Try
 // ligne - colonne
 // Remplissage de la matrice

 MatFunc[1,1]:=NP;

 For j:=1 to DimRe do
  For i:=1 to DimRe do
  begin
    If (i<>1) or (j<>1) then
    begin
      P:=(j-1)+(i-1);
      S:=0;
      For k:=1 to NP do
       S:=S+Power(M[k-1].X,P);

      MatFunc[j,i]:=S;
    end;
  end;

 /////

 For j:=1 to DimRe do
 begin
  P:=J-1;

  S:=0;
  For k:=1 to NP do
   S:=S+(M[k-1].Y*Power(M[k-1].X,P));

  VectY[j]:=S;
 end;

 // Inverse la matrice de fonctions
 InverseMatrice(DimRe,MatFunc,InvFunc,Inversible);
 Result:=Inversible;

 For k:=1 to DimRe do A[k-1]:=0;

 if Inversible then
 begin
  ProdMatVec(DimRe,InvFunc,VectY,VectSol);
  For k:=1 to DimRe do A[k-1]:=VectSol[k];
 end;

 Finally
 UnAllocMatM (MatFunc);  // Local
 UnAllocMatM (InvFunc);
 UnAllocVectM(VectSol);
 UnAllocVectM(VectY  );
 End;
end;

Function GaussFIT_1D(M:Array of TPtXY;var Io,xo,Sigma,Fond,Ecart:Double): Boolean ;
//////////////////////////////////////////////////////////////////////////////////////////
//  FIT sur GAUSS 1D                                                                    //
//  Methode iterative multivariable a partir de points de departs des parametres        //
//  Y=I*exp((x-x0)²/Sigma))+Fond  : I,x0,Sigma et Fond sont les 4 variables             //
//  Attention : Xo ne doit pas etre trop eloigné de sa solution                         //
//                                                                                      //
//  Ici methode non lineaire de resolution par moindres carres, non utilises            //
//  http://mathworld.wolfram.com/NonlinearLeastSquaresFitting.html                      //
//////////////////////////////////////////////////////////////////////////////////////////

Const
 nbvar=4;   // nombre d'inconnues

var
 nbmax,Iter,n:Integer;
 OldSum,Sum,a0:double;
 e,er1,x, y0:double;

 m0,m1     :double;
 e1:Array [0..nbvar-1] of Double;
 p :Array [0..nbvar-1] of Double;

 i,j:Integer;

Begin
  Result:=False;

  ecart:= 1.0;
  e    := 0.005;     // Erreur maxi.
  er1  := 0.5;       // Dumping factor
  nbmax:= 300;       // Nombre maximum d'iterations
  n    := length(M);

  If (n-nbVar)<=0 then raise Exception.create('GaussFIT_1D Error : (n-nbVar)<0 !');

  for i:=0 to nbVar-1 do e1[i]:=er1;

  Iter   :=0;
  OldSum :=1e10;
  Sum    :=0;

  p[0]:=Io    ;
  p[1]:=xo    ;
  p[2]:=Sigma ;
  p[3]:=Fond  ;

  Repeat
     If iter>0 then OldSum:=Sum;

     for i:=0 to nbVar-1 do
     begin
         a0:=p[i];

         Repeat
             Sum:=0;

             for j:=0 to n-1 do
             begin
                x:=M[j].X;
                y0:=p[0]*exp(-(x-p[1])*(x-p[1])/p[2])+p[3];
                Sum:=Sum+(M[j].Y-y0)*(M[j].Y-y0);
             end;

             m0  :=Sum;
             p[i]:=a0*(1-e1[i]);
             Sum :=0;

             for j:=0 to n-1 do
             begin
                x:=M[j].X;
                y0:=p[0]*exp(-(x-p[1])*(x-p[1])/p[2])+p[3];
                Sum:=Sum+(M[j].Y-y0)*(M[j].Y-y0);
             end;

             ecart:=sqrt(Sum/(n-nbVar));  //Erreur

             m1:=Sum;

             if (m1>m0) then e1[i]:=-e1[i]/2.0;
             if (m1<m0) then e1[i]:=1.2*e1[i];
             if (m1>m0) then p[i] :=a0;

         until (m1<=m0);

     end;

     inc(Iter);

  Until (Iter=nbmax) or (Sum=0) or (abs((oldSum-Sum)/Sum)<e);

  If (Iter<>nbmax) and (Sum<>0) then
  begin
   Io     := p[0];
   xo     := p[1];
   Sigma  := p[2];
   Fond   := p[3];
   Result := True;
  end;

end;


//////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////

Function GaussFIT_1D_NLS(M:Array of TPtXY;var Io,xo,Sigma,Fond,Ecart:Double): Boolean ;
(*
 Use NON LINEAR FITTING OF

  Y = Fond + Io*exp-( (x-xo)^2 /(2*Sigma^2) )
  4 Parameters

    Fond
    Io
    xo
    Sigma

    Ecart : Erreur moyenne par echantillon
*)

 Function gauss(x,Io,xo,Sigma,Fond:Double):Double;
 begin
  result:= Fond + Io*exp(-((x-xo)*(x-xo))/(2*Sigma*Sigma));
 end;

 // 4 Parameters

 Function dgauss_dfond(x,Io,xo,Sigma,Fond:Double):Double; // Derivee partielle par rapport a Fond
 begin
  result:= 1;
 end;

 Function dgauss_dIo(x,Io,xo,Sigma,Fond:Double):Double;  // Derivee partielle par rapport a Io
 begin
  result:= exp(-((x-xo)*(x-xo))/(2*Sigma*Sigma));
 end;

 Function dgauss_dxo(x,Io,xo,Sigma,Fond:Double):Double;  // Derivee partielle par rapport a xo
 begin
  result:= ((Io*(x-xo))/(Sigma*Sigma))*exp(-((x-xo)*(x-xo))/(2*Sigma*Sigma));
 end;

 Function dgauss_dsigma(x,Io,xo,Sigma,Fond:Double):Double;  // Derivee partielle par rapport a Sigma
 begin
  result:= ((Io*(x-xo)*(x-xo))/(Sigma*Sigma*Sigma))*exp(-((x-xo)*(x-xo))/(2*Sigma*Sigma));
 end;


VAR

  Normale, Inverse                      :Matrice_math ;
  Variation, Resultat, Derive, Standard :Vecteur_math ;

  InversionMat      : Boolean;
  MaxIter,TailleMat : Integer;
  Iteration,i,K,L   : Integer;
  IterTerminated    : Boolean;
  TestX, TestSig,
  TestI,TestF       : Double;
  NbreEch           : Integer;
  Cf                : Double;


Begin

  TailleMat     := 4 ; // Nbre de parametres a trouver
  MaxIter       := 300;
  IterTerminated:= False;
  InversionMat  := False;
  NbreEch       := length(M);
  Ecart         := 0;
  Cf            := 0.75; // Moderateur!

  AllocMatM (TailleMat,TailleMat,Normale);  // Local
  AllocMatM (TailleMat,TailleMat,Inverse);
  AllocVectM(TailleMat,Variation);
  AllocVectM(TailleMat,Resultat );
  AllocVectM(TailleMat,Derive   );
  AllocVectM(TailleMat,Standard );

  Try

  For Iteration:=1 to MaxIter do
  begin

    // Les parametres
    TestX  := xo;
    TestSig:= Sigma;
    TestI  := Io;
    TestF  := Fond;

    For K:=1 to TailleMat do Variation[K]:=0;
    For K:=1 to TailleMat do Resultat[K] :=0;
    For K:=1 to TailleMat do Derive[K]   :=0;

    For K:=1 to TailleMat do
     for L:=1 to TailleMat do
       Normale[K,L]:=0;

    For i:=1 to NbreEch do
    begin

     Derive[1]:=dgauss_dfond (M[i-1].X,Io,xo,Sigma,Fond);
     Derive[2]:=dgauss_dIo   (M[i-1].X,Io,xo,Sigma,Fond);
     Derive[3]:=dgauss_dxo   (M[i-1].X,Io,xo,Sigma,Fond);
     Derive[4]:=dgauss_dsigma(M[i-1].X,Io,xo,Sigma,Fond);

     For K:=1 to TailleMat do
       Resultat[K]:=Resultat[K] + (M[i-1].Y - Gauss(M[i-1].X,Io,xo,Sigma,Fond)) * Derive[K];

     For K:=1 to TailleMat do
      For L:=1 to TailleMat do
         Normale[K,L]:=Normale[K,L]+Derive[K]*Derive[L];

    end;

    Try
    InverseMatrice(TailleMat,Normale,Inverse,InversionMat);
    except
    InversionMat:=False;
    end;


    If InversionMat Then
    begin
      ProdMatVec(TailleMat,Inverse,Resultat,Variation);

      Fond :=Fond  + Variation[1]*cf;
      Io   :=Io    + Variation[2]*cf;
      Xo   :=Xo    + Variation[3]*cf;
      Sigma:=Sigma + Variation[4]*cf;

      IterTerminated:=
       (abs(TestX   - xo     )<0.01) and
       (abs(TestSig - Sigma  )<0.01) and
       (abs(TestI   - Io     )<10  ) and
       (abs(TestF   - Fond   )<2   );

      If IterTerminated then
      begin
        Ecart:=0;
        For i:=1 to NbreEch do
        begin
          Ecart:=Ecart + Abs(M[i-1].Y - Gauss(M[i-1].X,Io,xo,Sigma,Fond));
        end;
        Ecart:=Ecart/NbreEch;
      end;

    end
    else break;

    If IterTerminated then Break;

  end; // For

  Result:=IterTerminated;

  Finally
  UnAllocMatM (Normale);  // Local
  UnAllocMatM (Inverse);
  UnAllocVectM(Variation);
  UnAllocVectM(Resultat );
  UnAllocVectM(Derive   );
  UnAllocVectM(Standard );
  end;
end;

Function GaussFIT_1D_NLSPente(M:Array of TPtXY;var Io,xo,Sigma,FondMoyen,Pente,Ecart:Double): Boolean ;
(*
 Use NON LINEAR FITTING OF

  Y = FondMoyen + Pente*x + Io*exp-( (x-xo)^2 /(2*Sigma^2) )
  5 Parameters

    FondMoyen
    Pente
    Io
    xo
    Sigma

    Ecart : Erreur moyenne par echantillon
*)

 Function gauss(x,Io,xo,Sigma,FondMoyen,Pente:Double):Double;
 begin
  result:= FondMoyen + Pente*x + Io*exp(-((x-xo)*(x-xo))/(2*Sigma*Sigma));
 end;

 // 5 Parameters

 Function dgauss_dfond (x,Io,xo,Sigma,FondMoyen,Pente:Double):Double; // Derivee partielle par rapport a FondMoyen
 begin
  result:= 1;
 end;

 Function dgauss_dpente(x,Io,xo,Sigma,FondMoyen,Pente:Double):Double; // Derivee partielle par rapport a Pente
 begin
   result:=x;
 end;

 Function dgauss_dIo(x,Io,xo,Sigma,FondMoyen,Pente:Double):Double;  // Derivee partielle par rapport a Io
 begin
  result:= exp(-((x-xo)*(x-xo))/(2*Sigma*Sigma));
 end;

 Function dgauss_dxo(x,Io,xo,Sigma,FondMoyen,Pente:Double):Double;  // Derivee partielle par rapport a xo
 begin
  result:= ((Io*(x-xo))/(Sigma*Sigma))*exp(-((x-xo)*(x-xo))/(2*Sigma*Sigma));
 end;

 Function dgauss_dsigma(x,Io,xo,Sigma,FondMoyen,Pente:Double):Double;  // Derivee partielle par rapport a Sigma
 begin
  result:= ((Io*(x-xo)*(x-xo))/(Sigma*Sigma*Sigma))*exp(-((x-xo)*(x-xo))/(2*Sigma*Sigma));
 end;


VAR

  Normale, Inverse                      :Matrice_math ;
  Variation, Resultat, Derive, Standard :Vecteur_math ;

  InversionMat      : Boolean;
  MaxIter,TailleMat : Integer;
  Iteration,i,K,L   : Integer;
  IterTerminated    : Boolean;
  TestX, TestSig,
  TestI,TestF,TestP : Double;
  NbreEch           : Integer;
  Cf                : Double;


Begin

  TailleMat     := 5 ; // Nbre de parametres a trouver
  MaxIter       := 300;
  IterTerminated:= False;
  InversionMat  := False;
  NbreEch       := length(M);
  Ecart         := 0;
  Cf            := 0.75; // Moderateur!

  AllocMatM (TailleMat,TailleMat,Normale);  // Local
  AllocMatM (TailleMat,TailleMat,Inverse);
  AllocVectM(TailleMat,Variation);
  AllocVectM(TailleMat,Resultat );
  AllocVectM(TailleMat,Derive   );
  AllocVectM(TailleMat,Standard );

  Try

  For Iteration:=1 to MaxIter do
  begin

    // Les parametres
    TestX  := xo;
    TestSig:= Sigma;
    TestI  := Io;
    TestF  := FondMoyen;
    TestP  := Pente;

    For K:=1 to TailleMat do Variation[K]:=0;
    For K:=1 to TailleMat do Resultat[K] :=0;
    For K:=1 to TailleMat do Derive[K]   :=0;

    For K:=1 to TailleMat do
     for L:=1 to TailleMat do
       Normale[K,L]:=0;

    For i:=1 to NbreEch do
    begin

     Derive[1]:=dgauss_dfond (M[i-1].X,Io,xo,Sigma,FondMoyen,Pente);
     Derive[2]:=dgauss_dpente(M[i-1].X,Io,xo,Sigma,FondMoyen,Pente);
     Derive[3]:=dgauss_dIo   (M[i-1].X,Io,xo,Sigma,FondMoyen,Pente);
     Derive[4]:=dgauss_dxo   (M[i-1].X,Io,xo,Sigma,FondMoyen,Pente);
     Derive[5]:=dgauss_dsigma(M[i-1].X,Io,xo,Sigma,FondMoyen,Pente);

     For K:=1 to TailleMat do
       Resultat[K]:=Resultat[K] + (M[i-1].Y - Gauss(M[i-1].X,Io,xo,Sigma,FondMoyen,Pente)) * Derive[K];

     For K:=1 to TailleMat do
      For L:=1 to TailleMat do
         Normale[K,L]:=Normale[K,L]+Derive[K]*Derive[L];

    end;

    Try
    InverseMatrice(TailleMat,Normale,Inverse,InversionMat);
    except
    InversionMat:=False;
    end;


    If InversionMat Then
    begin
      ProdMatVec(TailleMat,Inverse,Resultat,Variation);

      FondMoyen :=FondMoyen  + Variation[1]*cf;
      Pente     :=Pente      + Variation[2]*cf;
      Io        :=Io         + Variation[3]*cf;
      Xo        :=Xo         + Variation[4]*cf;
      Sigma     :=Sigma      + Variation[5]*cf;

      IterTerminated:=
       (abs(TestX      - xo        )<0.01) and
       (abs(TestSig    - Sigma     )<0.01) and
       (abs(TestI      - Io        )<10  ) and
       (abs(TestP      - Pente     )<1   ) and
       (abs(TestF      - FondMoyen )<0.01   );

      If IterTerminated then
      begin
        Ecart:=0;
        For i:=1 to NbreEch do
        begin
          Ecart:=Ecart + Abs(M[i-1].Y - Gauss(M[i-1].X,Io,xo,Sigma,FondMoyen,Pente));
        end;
        Ecart:=Ecart/NbreEch;
      end;

    end
    else break;

    If IterTerminated then Break;

  end; // For

  Result:=IterTerminated;

  Finally
  UnAllocMatM (Normale);  // Local
  UnAllocMatM (Inverse);
  UnAllocVectM(Variation);
  UnAllocVectM(Resultat );
  UnAllocVectM(Derive   );
  UnAllocVectM(Standard );
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


Function LargeFitCOSH_1D_NLS(M:Array of TPtXY;var Io,xo,Sigma,Fond,Ecart:Double): Boolean ;
(*
 Use NON LINEAR FITTING OF

  Y = Fond + Io/cosh((x-xc)/(sigma/k)))
  4 Parameters

    Fond
    Io
    xc ou xo
    Sigma

    k=1.368
    Ecart : Erreur moyenne par echantillon
*)

Const
 ku=1.368;

     Function Ucosh(x,Io,xo,Sigma,Fond:Double):Double;
     begin
      result:= Fond + Io/cosh((x-xo)/(sigma/ku));
     end;

     // 4 Parameters

     Function dUcosh_dfond(x,Io,xo,Sigma,Fond:Double):Double; // Derivee partielle par rapport a Fond
     begin
      result:= 1;
     end;

     Function dUcosh_dIo(x,Io,xo,Sigma,Fond:Double):Double;  // Derivee partielle par rapport a Io
     begin
      result:=1/cosh((x-xo)/(sigma/ku)) ;
     end;

     Function dUcosh_dxo(x,Io,xo,Sigma,Fond:Double):Double;  // Derivee partielle par rapport a xo
     begin
      result:=(Io/sqr(cosh((x-xo)/(sigma/ku)))) * ((ku/sigma)*sinh((x-xo)/(sigma/ku)));
     end;

     Function dUcosh_dsigma(x,Io,xo,Sigma,Fond:Double):Double;  // Derivee partielle par rapport a Sigma
     begin
      result:=(Io/sqr(cosh((x-xo)/(sigma/ku)))) * (sinh((x-xo)/(sigma/ku))) * (x-xo)*ku/(sigma*sigma) ;
     end;


VAR

  Normale, Inverse                      :Matrice_math ;
  Variation, Resultat, Derive, Standard :Vecteur_math ;

  InversionMat      : Boolean;
  MaxIter,TailleMat : Integer;
  Iteration,i,L,k   : Integer;
  IterTerminated    : Boolean;
  TestX, TestSig,
  TestI,TestF       : Double;
  NbreEch           : Integer;
  Cf                : Double;


Begin
  Cf            := 0.5; // Moderator
  TailleMat     := 4 ;  // Nbre de parametres a trouver
  MaxIter       := 300;
  IterTerminated:= False;
  InversionMat  := False;
  NbreEch       := length(M);
  Ecart         := 0;

  AllocMatM (TailleMat,TailleMat,Normale);  // Local
  AllocMatM (TailleMat,TailleMat,Inverse);
  AllocVectM(TailleMat,Variation);
  AllocVectM(TailleMat,Resultat );
  AllocVectM(TailleMat,Derive   );
  AllocVectM(TailleMat,Standard );

  Try
  For Iteration:=1 to MaxIter do
  begin

    // Les parametres
    TestX  := xo;
    TestSig:= Sigma;
    TestI  := Io;
    TestF  := Fond;

    For K:=1 to TailleMat do Variation[K]:=0;
    For K:=1 to TailleMat do Resultat[K] :=0;
    For K:=1 to TailleMat do Derive[K]   :=0;

    For K:=1 to TailleMat do
     for L:=1 to TailleMat do
       Normale[K,L]:=0;

    For i:=1 to NbreEch do
    begin

     Derive[1]:=dUcosh_dfond (M[i-1].X,Io,xo,Sigma,Fond);
     Derive[2]:=dUcosh_dIo   (M[i-1].X,Io,xo,Sigma,Fond);
     Derive[3]:=dUcosh_dxo   (M[i-1].X,Io,xo,Sigma,Fond);
     Derive[4]:=dUcosh_dsigma(M[i-1].X,Io,xo,Sigma,Fond);

     For K:=1 to TailleMat do
       Resultat[K]:=Resultat[K] + (M[i-1].Y - Ucosh(M[i-1].X,Io,xo,Sigma,Fond)) * Derive[K];

     For K:=1 to TailleMat do
      For L:=1 to TailleMat do
         Normale[K,L]:=Normale[K,L]+Derive[K]*Derive[L];

    end;

    Try
    InverseMatrice(TailleMat,Normale,Inverse,InversionMat);
    except
    InversionMat:=False;
    end;


    If InversionMat Then
    begin
      ProdMatVec(TailleMat,Inverse,Resultat,Variation);

      Fond :=Fond  + Variation[1]*cf;
      Io   :=Io    + Variation[2]*cf;
      Xo   :=Xo    + Variation[3]*cf;
      Sigma:=Sigma + Variation[4]*cf;

      IterTerminated:=
       (abs(TestX   - xo     )<0.01) and
       (abs(TestSig - Sigma  )<0.01) and
       (abs(TestI   - Io     )<10  ) and
       (abs(TestF   - Fond   )<2   );

      If IterTerminated then
      begin
        Ecart:=0;
        For i:=1 to NbreEch do
        begin
          Ecart:=Ecart + Abs(M[i-1].Y - Ucosh(M[i-1].X,Io,xo,Sigma,Fond));
        end;
        Ecart:=Ecart/NbreEch;
        Sigma:=Abs(Sigma);
      end;

    end
    else
    begin
     IterTerminated:=False;
     break;
    end;

    If IterTerminated then Break;

  end; // For

  Result:=IterTerminated;

  Finally
  UnAllocMatM (Normale  );  // Local
  UnAllocMatM (Inverse  );
  UnAllocVectM(Variation);
  UnAllocVectM(Resultat );
  UnAllocVectM(Derive   );
  UnAllocVectM(Standard );
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


Function Hyperbola(x,xo,Fond,a,b:Double):Double;
begin
  result:= Fond + Sqrt ( (1 + (((x-xo)*(x-xo))/(b*b)))*(a*a) );
end;



Function HyperBolaFIT_1D_NLS(M:Array of TPtXY;var xo,Fond,a,b,Ecart:Double): Boolean ;
(*
 Use NON LINEAR FITTING OF

  Y = Fond  + sqrt  (1+(x-xo)^2/b^2).a^2
  4 Parameters

    Fond
    a
    b
    x0

    Ecart : Erreur moyenne par echantillon

    ATTENTION : Xo et FOND se doivent d'etre TRES BIEN estimés avant de faire le FIT !
*)


 Function Hyperbola_Gen(x,xo,a,b:Double):Double;
 begin
  result:= Sqrt ( (1 + sqr((x-xo)/b) ) * sqr(a));
 end;

 Function Hyperbola(x,xo,Fond,a,b:Double):Double;
 begin
  result:= Fond + Hyperbola_Gen(x,xo,a,b);
 end;


 // 4 Parameters

 Function dHyperbola_dfond(x,xo,Fond,a,b:Double):Double; // Derivee partielle par rapport a Fond
 begin
  result:= 1;
 end;

 Function dHyperbola_dxo(x,xo,Fond,a,b:Double):Double;  // Derivee partielle par rapport a xo
 begin
  result:=( -1.0 / Hyperbola_Gen(x,xo,a,b)) * sqr(a) * ((x-xo)/sqr(b))   ;
 end;

 Function dHyperbola_da(x,xo,Fond,a,b:Double):Double;  // Derivee partielle par rapport a A
 begin
  result:=(  1.0 / Hyperbola_Gen(x,xo,a,b)) * (1 +  sqr((x-xo)/b)) * a;
 end;

 Function dHyperbola_db(x,xo,Fond,a,b:Double):Double;  // Derivee partielle par rapport a B
 begin
  result:=( -1.0 / Hyperbola_Gen(x,xo,a,b)) * ( ( sqr(x-xo)/(b*b*b) ) * sqr(a) );
 end;



VAR

  Normale, Inverse                      :Matrice_math ;
  Variation, Resultat, Derive, Standard :Vecteur_math ;

  InversionMat      : Boolean;
  MaxIter,TailleMat : Integer;
  Iteration,i,K,L   : Integer;
  IterTerminated    : Boolean;
  TestX, TestA,
  TestB,TestF       : Double ;
  NbreEch           : Integer;
  DY                : Double ;


Begin

  TailleMat     := 4 ; // Nbre de parametres a trouver
  MaxIter       := 300;
  IterTerminated:= False;
  InversionMat  := False;
  NbreEch       := length(M);
  Ecart         := 0;

  AllocMatM (TailleMat,TailleMat,Normale);  // Local
  AllocMatM (TailleMat,TailleMat,Inverse);
  AllocVectM(TailleMat,Variation);
  AllocVectM(TailleMat,Resultat );
  AllocVectM(TailleMat,Derive   );
  AllocVectM(TailleMat,Standard );

  Try
  For Iteration:=1 to MaxIter do
  begin

    // Les parametres
    TestX  := xo;
    TestA  := A;
    TestB  := B;
    TestF  := Fond;

    For K:=1 to TailleMat do Variation[K]:=0;
    For K:=1 to TailleMat do Resultat[K] :=0;
    For K:=1 to TailleMat do Derive[K]   :=0;

    For K:=1 to TailleMat do
     for L:=1 to TailleMat do
       Normale[K,L]:=0;

    For i:=1 to NbreEch do
    begin

     Try
     Derive[1]:=dHyperbola_dfond(M[i-1].X,xo,Fond,a,b);
     Derive[2]:=dHyperbola_dxo  (M[i-1].X,xo,Fond,a,b);
     Derive[3]:=dHyperbola_da   (M[i-1].X,xo,Fond,a,b);
     Derive[4]:=dHyperbola_db   (M[i-1].X,xo,Fond,a,b);
     Except
      Raise Exception.create(Format('HyperBolaFIT_1D_NLS FAILED -> X= %2.2f xo= %2.2f  Fond= %2.2f  a= %2.2f  b= %2.2f',[M[i-1].X,xo,Fond,a,b]));
     end;

     DY:=(M[i-1].Y - Hyperbola(M[i-1].X,xo,Fond,a,b));

     For K:=1 to TailleMat do
       Resultat[K]:=Resultat[K] +  DY * Derive[K];

     For K:=1 to TailleMat do
      For L:=1 to TailleMat do
         Normale[K,L]:=Normale[K,L]+Derive[K]*Derive[L];

    end;

    Try
    InverseMatrice(TailleMat,Normale,Inverse,InversionMat);
    except
    InversionMat:=False;
    end;


    If InversionMat Then
    begin
      ProdMatVec(TailleMat,Inverse,Resultat,Variation);

      Fond :=Fond  + Variation[1];
      Xo   :=Xo    + Variation[2];
      A    :=A     + Variation[3];
      B    :=B     + Variation[4];


      IterTerminated:=
       (abs(TestX   - xo     )<0.01) and
       (abs(TestA   - A      )<0.01) and
       (abs(TestB   - B      )<0.01) and
       (abs(TestF   - Fond   )<2   );

      If IterTerminated then
      begin
        Ecart:=0;
        For i:=1 to NbreEch do
        begin
          Ecart:=Ecart + Abs(M[i-1].Y - Hyperbola(M[i-1].X,xo,Fond,a,b));
        end;
        Ecart:=Ecart/NbreEch;
      end;

    end
    else break;

    If IterTerminated then Break;

  end; // For

  Result:=IterTerminated;

  Finally
  UnAllocMatM (Normale  );  // Local
  UnAllocMatM (Inverse  );
  UnAllocVectM(Variation);
  UnAllocVectM(Resultat );
  UnAllocVectM(Derive   );
  UnAllocVectM(Standard );
  end;
end;


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//   Fit X,Y to Z data
//   According to PRISM standard polynoms !
//   Z:=Coef[0] + Coef[1]*X + Coef[2]*Y + ....
//
//   Coefs : Must be allocated before
//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Function ComputeSizePoly(Ordre:Integer):Integer;
begin
  result:=Round(((Ordre+1)*(Ordre+2))/2);
end;


Procedure PolyGenFit(X,Y,Z:Array of double;Ordre:Integer;Var correlation:Double;Var Coefs:Array of Double);

Type TTabSingle=array[1..MaxInt div sizeof(Single)] of single;
     PTabSingle=^TTabSingle;
     TTabPolyN=array[1..MaxInt div sizeof(PTabSingle)] of PTabSingle;
     PTabPolyN=^TTabPolyN;

var
  MatFunc,InvFunc:Matrice_math;
  Vect           :Vecteur_math;
  Solution       :Vecteur_math;

  I,J,K:Integer;
  Somm:Double;
  Inversible:Boolean;
  NbEch:Integer;

  TabPolyN:PTabPolyN;
  Dim:Integer;

begin
 Dim  :=ComputeSizePoly(Ordre);

 AllocMatM (Dim,Dim,MatFunc);
 AllocMatM (Dim,Dim,InvFunc);

 AllocVectM(Dim,Vect       );
 AllocVectM(Dim,Solution   );

 Try

 NbEch:=Length(X);

 Getmem(TabPolyN,Dim*SizeOf(Pointer));

 for I:=1 to Dim do
  getmem(TabPolyN^[I],NbEch*SizeOf(Single));

 try

 For I:=1 to Dim do
  For K:=1 to NbEch do
   TabPolyN^[I]^[K]:=PolyN(X[K-1],Y[K-1],I);


 For I:=1 to Dim do
  For J:=1 to Dim do
  begin
    Somm:=0;
    for K:=1 to NbEch do
     Somm:=Somm+(TabPolyN^[I]^[K]
                *TabPolyN^[J]^[K]);
    MatFunc[I,J]:=Somm/NbEch;
  end;

 Finally
  for I:=1 to Dim do
   freemem(TabPolyN^[I],NbEch*SizeOf(Single));
  freemem(TabPolyN,Dim*SizeOf(Pointer));
 end;


 for J:=1 to Dim do
 begin
  Somm:=0;
  for K:=1 to NbEch do
    Somm:=Somm+(PolyN(X[K-1],Y[K-1],J)*Z[K-1]);
  Vect[J]:=Somm/NbEch;
 end;

 InverseMatrice_NoEx(Dim,MatFunc,InvFunc,Inversible);

 if Inversible then
 begin

  ProdMatVec(Dim,InvFunc,Vect,Solution);

  Somm:=0;
  For K:=1 to NbEch do
    Somm:=Somm+Sqr(Z[k-1]-CalculePolyXY(X[k-1],Y[k-1],Dim,Solution));

  Correlation:=Sqrt(Somm/NbEch); //en UA

  For J:=1 to Dim do
    Coefs[J-1]:=Solution[j];

 end;

 finally
 UnAllocMatM (MatFunc  );
 UnAllocMatM (InvFunc  );
 UnAllocVectM(Vect     );
 UnAllocVectM(Solution );
 end;

end;


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Resoud les racines du polynome p(X)=CST ou P(X)-CST=0
//
// Le polynome est p(x):=CoefP0+CoefP1*x+
// Newton–Raphson method
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Function RacinePoly_1D(Xo,CST:Double;CoefP:Array of Double;DegrePoly:Integer):Double;

 Function Poly(X:Double;CoefP:Array of Double;Degre:Integer):Double;
 Var i:Integer;
 begin
  Result:=0;
  For i:=0 to degre do
    Result:=Result+CoefP[i]*Power(X,i);
 end;

 Function PolyDerive(X:Double;CoefP:Array of Double;Degre:Integer):Double;
 Var i:Integer;
 begin
  Result:=0;
  For i:=1 to degre do
    Result:=Result+CoefP[i]*Degre*Power(X,i-1);
 end;


Const MaxIter=100;
      Epsilon=1E-10;

Var   Xp,XX,xd : Double ;
      Iter     : Integer;
begin
 Try
 CoefP[0]:=CoefP[0]-CST;
 Xp  :=Xo;
 Iter:=0;

 Repeat
  XX:=Xp-(Poly(Xp,CoefP,DegrePoly)/PolyDerive(Xp,CoefP,DegrePoly));
  xd:=Xp;
  Xp:=XX;

  Inc(Iter);
  If (Iter>maxIter) then Exception.create('');
 Until (Abs(XX-Xd)<Epsilon);

 Result:=XX;

 Except
  Raise Exception.create('RacinePoly_1D Error !!');
 end;
end;


(*

 http://en.wikipedia.org/wiki/Monotone_cubic_interpolation
 Entree : Donnee de base
 Sortie : Donnee interpolee (plus de points)
          Xo a Xn-1   X(t)=Xo+Epsilon*t, t entier, on cree des espilons entre Xk et Xk+1
*)

Function Monotone_cubic_Hermite_interpolation(M:ATPtXY;Epsilon:Double):ATPtXY;

    Function h00(t:Double):Double;
    begin
      Result:=(2*t*t*t)-(3*t*t)+1;
    end;

    Function h10(t:Double):Double;
    begin
      Result:=(t*t*t)-(2*t*t)+t;
    end;

    Function h01(t:Double):Double;
    begin
      Result:=-(2*t*t*t)+(3*t*t);
    end;


    Function h11(t:Double):Double;
    begin
      Result:=(t*t*t)-(t*t);
    end;

    Function _M_(k,length:Integer):Double;
    begin

      If k=0 then
       Result:=(M[1].Y-M[0].Y) / (M[1].X-M[0].X)
      else
      if (k=length-1) then
       Result:=(M[length-1].Y-M[length-2].Y)/(M[length-1].X-M[length-2].X)
      else
       Result:=(M[k].Y-M[k-1].Y)/(2*(M[k].X-M[k-1].X))  +  (M[k+1].Y-M[k].Y)/(2*(M[k+1].X-M[k].X));

    end;

Var Nb,NbOut,zz,k,u : Integer;
    Xt,t:Double;
    m1,m0:Double;

begin

  Nb   :=length(M);
  NbOut:=Round((M[Nb-1].X-M[0].X)/Epsilon);
  Setlength(Result,NbOut);


  Try

  Xt:=M[0].X;

  For zz:=0 to NbOut-1 do
  begin
    // Cherche l'intervalle Xk, Xk+1 ou l'on se trouve
    k:=-1;
    For u:=0 to Nb-2 do
    begin
      If (M[u].X<=Xt) and (M[u+1].X>Xt) then
      begin
        k:=u;
        Break;
      end;
    end;

    If k=-1 then raise Exception.create('Monotone_cubic_Hermite_interpolation : out of range');

    // Interpole entre Xk et Xk+1
    m0:=_M_(k  ,Nb);
    m1:=_M_(k+1,Nb);

    t:=(Xt-M[k].X)/(M[k+1].X-M[k].X);

    Result[zz].X:=Xt;
    Result[zz].Y:=h00(t)*M[k].Y + h10(t)*m0 + h01(t)*M[k+1].Y + h11(t)*m1;

    Xt:=Xt+Epsilon;
  end;

  Finally
  end;

end;

Function  Random_un_mun:Double;
begin
 result:=((Random(1000)-500)/500);
end;


Function CalPolRadialImpair(r:Double;DimPolyVect:Word;Coef:Array of Double):Double;
Var I,P:Integer;
Begin
  Result:=0;
  for I := 1 to DimPolyVect do
  begin
    P:=(2*(i-1)+1);
    Result:=Result+power(r,P)*Coef[i-1];
  end;
End;

Function  DegToKelv(TempDeg:Double):Double;
begin
 Result:=TempDeg+273.15;
end;

Function  KelvToDeg(TempK  :Double):Double;
Begin
 Result:=TempK-273.15;
End;


procedure SwapVar(Var var1,var2:Integer);
Var InterI:Integer;
Begin
   InterI := var1;
   Var1   := var2;
   Var2   := InterI;
End;

procedure SwapVar(Var var1,var2:Double);
Var Inter:Double;

Begin
   Inter  := var1;
   Var1   := var2;
   Var2   := Inter;
End;



// depuis le centre, l'équation polaire d'une ellipse est :
// r = b^2/(1-e^2*cos^2(theta-theta0))
Function R_Ellipse(a,b:Double;Theta,Theta0:Double):Double;
Var
   e    : Double;
Begin
   e := sqrt(1-Power(b,2)/Power(a,2));
   R_Ellipse := sqrt(Power(b,2)/(1-Power(e,2)*Power(cos(Theta-Theta0),2)));
End;

Function Rad_To_Mas(Angle:Double):Double;
begin
  result:=((Angle/Pi)*180)*3600*1000;
end;

Function Mas_To_Rad(Angle:Double):Double;
begin
  result:=(Angle/(3600*1000*180))*Pi;
end;

/////////////////////

Function  AH_2_rad(AH:Double):Double;
Begin
 result:=(AH/12.0)*Pi;
End;

Function  RAD_2_AH(RD:Double):Double;
Begin
 result:=(RD/Pi)*12.0;
End;


/////////////////////////
function Signe(Val:Double):Integer;
Begin
  if (Val=0.0) then
    Signe:=0
  else
    if ((abs(Val)*Val)<0) then Signe:=-1 else Signe:=1;
End;

function Sign_(Val:Double):Double;
begin
  if (Val>=0) then result:= 1.0
              else result:=-1.0;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 1D FFT

function Complex(Re: Double; Im: Double): Complexe;
// Set a complex number
begin
  Result.Re := Re;
  Result.Im := Im;
end;

function ComplexAdd(const C1, C2: Complexe): Complexe;
// Add complex numbers (Result = C1 + C2)
begin
  Result.Re := C1.Re + C2.Re;
  Result.Im := C1.Im + C2.Im;
end;

function ComplexSub(const C1, C2: Complexe): Complexe;
// Substract complex numbers (Result = C1 - C2)
begin
  Result.Re := C1.Re - C2.Re;
  Result.Im := C1.Im - C2.Im;
end;

function ComplexMul(const C1, C2: Complexe): Complexe;
// Multiply complex numbers (Result = C1 * C2)
begin
  Result.Re := C1.Re * C2.Re - C1.Im * C2.Im;
  Result.Im := C1.Im * C2.Re + C1.Re * C2.Im;
end;

function ComplexScl(Scale: Double; const C: Complexe): Complexe;
// Scale complex numbers (Result = Scale * C)
begin
  Result.Re := Scale * C.Re;
  Result.Im := Scale * C.Im;
end;

function ComplexMag(const C: Complexe): Double;
// Get the magnitude of the complex number C
begin
  Result := sqrt(sqr(C.Re) + sqr(C.Im));
end;

function ComplexPhase(const C: Complexe): Double;
// Get the phase of the complex number C (in radians, between -pi and pi)
const
  c2Pi  = 2   * pi;
  cPid2 = 0.5 * pi;

begin
  // Both zero
  if (C.Re = 0) and (C.Im = 0) then begin
    Result := 0;
    exit;
  end;

  // Non-zero case
  if abs(C.Re) > abs(C.Im) then begin
    Result := ArcTan(C.Im / C.Re); {-45 to 45 deg, 135 to -135 deg}
    if C.Re < 0 then Result := Result + pi;
  end else begin
    Result := cPid2 - ArcTan(C.Re / C.Im); {45 to 135, -45 to -135}
    if C.Im < 0 then Result := Result + pi;
  end;
  if Result > pi then Result := Result - c2pi;
end;

(*

 This unit provides a forward and inverse FFT pascal implementation
  for complex number series.

  The formal definition of the complex DFT is:
    y[k] = sum(x[m]*exp(-i*2*pi*k*m/n), m = 0..n-1), k = 0..n-1

  This unit requires these other units:
  - Complexs: Complex number unit
  - Types:    Additional mathematical variable types
  - SysUtils: Delphi system utilities

*)

const

  //cMaxPrimeFactor     = 5987 ;
  cMaxPrimeFactor     = 25111;   // Must be a prime number
  cMaxPrimeFactorDiv2 = (cMaxPrimeFactor + 1) div 2;
  cMaxFactorCount     = 20;

resourcestring

  sErrPrimeTooLarge = 'Prime factor for FFT length too large. Change value for cMaxPrimeFactor in FFTs unit';

{ ForwardFFT:

  Perform a complex FFT on the data in Source, put result in Dest. This routine
  works best for Count as a power of 2, but also works usually faster than DFT
  by factoring the series. Only in cases where Count is a prime number will this
  method be identical to regular complex DFT.

  The largest prime factor in Count should be less or equal to cMaxPrimeFactor.

  The remaining factors are handled by optimised partial FFT code, that can be
  found in the FFT_X procedures

  Inputs:
    Source: this can be any zero-based array type of Complexe
    Count: The number of elements in the array.

  Outputs:
    Dest: this can be any zero-based array type of Complexe, and will contain
      the FFT transformed data (frequency spectrum). Source may be equal to
      Dest. In this case, the original series will be overwritten with the new
      fourier-transformed series.
}

{ Perform the inverse FFT on the Source data, and put result in Dest. This is based
  on the forward FFT with some additional customisation. The result of a forward
  FFT followed by an inverse FFT should yield the same data, except for rounding
  errors.
}

const
  // Some helper constants for the FFT optimisations
  c31: Double = -1.5000000000000E+00; //  cos(2*pi / 3) - 1;
  c32: Double =  8.6602540378444E-01; //  sin(2*pi / 3);

  u5:  Double =  1.2566370614359E+00; //  2*pi / 5;
  c51: Double = -1.2500000000000E+00; // (cos(u5) + cos(2*u5))/2 - 1;
  c52: Double =  5.5901699437495E-01; // (cos(u5) - cos(2*u5))/2;
  c53: Double = -9.5105651629515E-01; //- sin(u5);
  c54: Double = -1.5388417685876E+00; //-(sin(u5) + sin(2*u5));
  c55: Double =  3.6327126400268E-01; // (sin(u5) - sin(2*u5));
  c8:  Double =  7.0710678118655E-01; //  1 / sqrt(2);

type
  // Base 1 and Base 0 arrays
  TIdx0FactorArray = array[0..cMaxFactorCount] of integer;
  TIdx1FactorArray = array[1..cMaxFactorCount] of integer;

// Factorise the series with length Count into FactorCount factors, stored in Fact
procedure Factorize(Count: integer; var FactorCount: integer; var Fact: TIdx1FactorArray);
var
  i      : integer;
  Factors: TIdx1FactorArray;

const

  // Define specific FFT lengths (radices) that we can process with optimised routines
  cRadixCount                      = 6;
  cRadices: array[1..6] of integer = (2, 3, 4, 5, 8, 10);

begin

  if Count = 1 then
  begin
    FactorCount := 1;
    Factors[1]  := 1;
  end
  else
  begin
    FactorCount := 0;
  end;

  // Factorise the original series length Count into known factors and rest value
  i := cRadixCount;
  while (Count > 1) AND (i > 0) do
  begin
    if Count mod cRadices[i] = 0 then begin
      Count := Count div cRadices[i];
      inc(FactorCount);
      Factors[FactorCount] := cRadices[i];
    end else
      dec(i);
  end;

  // substitute factors 2*8 with more optimal 4*4
  if Factors[FactorCount] = 2 then
  begin
    i := FactorCount - 1;
    while (i > 0) AND (Factors[i] <> 8) do
      dec(i);
    if i > 0 then
    begin
      Factors[FactorCount] := 4;
      Factors[i] := 4;
    end;
  end;

  // Analyse the rest value and see if it can be factored in primes
  if Count > 1 then
  begin
    for i := 2 to trunc(sqrt(Count)) do begin
      while Count mod i = 0 do begin
        Count := Count div i;
        inc(FactorCount);
        Factors[FactorCount] := i;
      end;
    end;

    if (Count > 1) then begin
      inc(FactorCount);
      Factors[FactorCount] := Count;
    end;
  end;

  // Reverse factors so that primes are first
  for i := 1 to FactorCount do
    Fact[i] := Factors[FactorCount - i + 1];

end;

{ Reorder the series in X to a permuted sequence in Y so that the later step can
  be done in place, and the final FFT result is in correct order.
  The series X and Y must be different series!
}

procedure ReorderSeries(Count: integer; var Factors: TIdx1FactorArray; var Remain: TIdx0FactorArray; const X: array of Complexe; var Y: array of Complexe);
var
  i, j, k: integer;
  Counts : TIdx1FactorArray;

begin
  FillChar(Counts, SizeOf(Counts), 0);

  k := 0;
  for i := 0 to Count - 2 do begin
    Y[i] := X[k];
    j := 1;
    k := k + Remain[j];
    Counts[1] := Counts[1] + 1;
    while Counts[j] >= Factors[j] do begin
      Counts[j] := 0;
      k := k - Remain[j - 1] + Remain[j + 1];
      inc(j);
      inc(Counts[j]);
    end;
  end;

  Y[Count - 1] := X[Count - 1];
end;



procedure FFT_2(var Z: array of Complexe);
var
  T1: Complexe;

begin
  T1   := ComplexAdd(Z[0], Z[1]);
  Z[1] := ComplexSub(Z[0], Z[1]);
  Z[0] := T1;
end;

procedure FFT_3(var Z: array of Complexe);
var
  T1, M1, M2, S1: Complexe;

begin
  T1   := ComplexAdd(Z[1], Z[2]);
  Z[0] := ComplexAdd(Z[0], T1);
  M1   := ComplexScl(c31, T1);
  M2.Re := c32 * (Z[1].Im - Z[2].Im);
  M2.Im := c32 * (Z[2].Re - Z[1].Re);
  S1   := ComplexAdd(Z[0], M1);
  Z[1] := ComplexAdd(S1, M2);
  Z[2] := ComplexSub(S1, M2);
end;

procedure FFT_4(var Z: array of Complexe);
var
  T1, T2, M2, M3: Complexe;

begin
  T1 := ComplexAdd(Z[0], Z[2]);
  T2 := ComplexAdd(Z[1], Z[3]);

  M2 := ComplexSub(Z[0], Z[2]);
  M3.Re := Z[1].Im - Z[3].Im;
  M3.Im := Z[3].Re - Z[1].Re;

  Z[0] := ComplexAdd(T1, T2);
  Z[2] := ComplexSub(T1, T2);
  Z[1] := ComplexAdd(M2, M3);
  Z[3] := ComplexSub(M2, M3);
end;

procedure FFT_5(var Z: array of Complexe);
var
  T1, T2, T3, T4, T5: Complexe;
  M1, M2, M3, M4, M5: Complexe;
  S1, S2, S3, S4, S5: Complexe;

begin
  T1 := ComplexAdd(Z[1], Z[4]);
  T2 := ComplexAdd(Z[2], Z[3]);
  T3 := ComplexSub(Z[1], Z[4]);
  T4 := ComplexSub(Z[3], Z[2]);

  T5   := ComplexAdd(T1, T2);
  Z[0] := ComplexAdd(Z[0], T5);
  M1   := ComplexScl(c51, T5);
  M2   := ComplexScl(c52, ComplexSub(T1, T2));

  M3.Re := -c53 * (T3.Im + T4.Im);
  M3.Im :=  c53 * (T3.Re + T4.Re);
  M4.Re := -c54 * T4.Im;
  M4.Im :=  c54 * T4.Re;
  M5.Re := -c55 * T3.Im;
  M5.Im :=  c55 * T3.Re;

  S3 := ComplexSub(M3, M4);
  S5 := ComplexAdd(M3, M5);;
  S1 := ComplexAdd(Z[0], M1);
  S2 := ComplexAdd(S1, M2);
  S4 := ComplexSub(S1, M2);

  Z[1] := ComplexAdd(S2, S3);
  Z[2] := ComplexAdd(S4, S5);
  Z[3] := ComplexSub(S4, S5);
  Z[4] := ComplexSub(S2, S3);
end;

procedure FFT_8(var Z: array of Complexe);
var
  A, B: array[0..3] of Complexe;
  Gem : Double;

begin
  A[0] := Z[0]; B[0] := Z[1];
  A[1] := Z[2]; B[1] := Z[3];
  A[2] := Z[4]; B[2] := Z[5];
  A[3] := Z[6]; B[3] := Z[7];

  FFT_4(A);
  FFT_4(B);

  Gem     := c8 * (B[1].Re + B[1].Im);
  B[1].Im := c8 * (B[1].Im - B[1].Re);
  B[1].Re := Gem;
  Gem     := B[2].Im;
  B[2].Im :=-B[2].Re;
  B[2].Re := Gem;
  Gem     := c8 * (B[3].Im - B[3].Re);
  B[3].Im :=-c8 * (B[3].Re + B[3].Im);
  B[3].Re := Gem;

  Z[0] := ComplexAdd(A[0], B[0]); Z[4] := ComplexSub(A[0], B[0]);
  Z[1] := ComplexAdd(A[1], B[1]); Z[5] := ComplexSub(A[1], B[1]);
  Z[2] := ComplexAdd(A[2], B[2]); Z[6] := ComplexSub(A[2], B[2]);
  Z[3] := ComplexAdd(A[3], B[3]); Z[7] := ComplexSub(A[3], B[3]);
end;

procedure FFT_10(var Z: array of Complexe);
var
  A, B: array[0..4] of Complexe;

begin
   A[0] := Z[0];  B[0] := Z[5];
   A[1] := Z[2];  B[1] := Z[7];
   A[2] := Z[4];  B[2] := Z[9];
   A[3] := Z[6];  B[3] := Z[1];
   A[4] := Z[8];  B[4] := Z[3];

   FFT_5(A);
   FFT_5(B);

   Z[0] := ComplexAdd(A[0], B[0]); Z[5] := ComplexSub(A[0], B[0]);
   Z[6] := ComplexAdd(A[1], B[1]); Z[1] := ComplexSub(A[1], B[1]);
   Z[2] := ComplexAdd(A[2], B[2]); Z[7] := ComplexSub(A[2], B[2]);
   Z[8] := ComplexAdd(A[3], B[3]); Z[3] := ComplexSub(A[3], B[3]);
   Z[4] := ComplexAdd(A[4], B[4]); Z[9] := ComplexSub(A[4], B[4]);
end;

{
  Synthesize the FFT by taking the even factors and the odd factors multiplied by
  complex sinusoid
}
procedure SynthesizeFFT(Sofar, Radix, Remain: integer; var Y: array of Complexe);
var
  GroupOffset,
  DataOffset,
  Position        : integer;
  GroupNo,
  DataNo,
  BlockNo, SynthNo: integer;
  Omega           : double;
  S, CosSin       : Complexe;
  Synth, Trig, Z  : array[0..cMaxPrimeFactor - 1] of Complexe;

  // Local function
  procedure InitializeTrigonomials(Radix: integer);
  // Initialize trigonomial coefficients
  var
    i: integer;
    W: double;
    X: Complexe;
  begin
    W := 2 * pi / Radix;
    Trig[0] := Complex(1.0, 0.0);
    X := Complex(cos(W), -sin(W));
    Trig[1] := X;
    for i := 2 to Radix - 1 do
      Trig[i] := ComplexMul(X, Trig[i - 1]);
  end;

  // Local Function
  procedure FFT_Prime(Radix: integer);
  // This is the general DFT, which can't be made any faster by factoring because
  // Radix is a prime number
  var
    i, j, k, N, AMax: integer;
    Re, Im: Complexe;
    V, W  : array[0..cMaxPrimeFactorDiv2 - 1] of Complexe;

  begin
    N    := Radix;
    AMax := (N + 1) div 2;

    for j := 1 to AMax - 1 do begin
      V[j].Re := Z[j].Re + Z[n-j].Re;
      V[j].Im := Z[j].Im - Z[n-j].Im;
      W[j].Re := Z[j].Re - Z[n-j].Re;
      W[j].Im := Z[j].Im + Z[n-j].Im;
    end;

    for j := 1 to AMax - 1 do begin
      Z[j]   := Z[0];
      Z[N-j] := Z[0];
      k := j;
      for i := 1 to AMax - 1 do begin
        Re.Re := Trig[k].Re * V[i].Re;
        Im.Im := Trig[k].Im * V[i].Im;
        Re.im := Trig[k].Re * W[i].Im;
        Im.Re := Trig[k].Im * W[i].Re;

        Z[N-j].Re := Z[N-j].Re + Re.Re + Im.Im;
        Z[N-j].Im := Z[N-j].Im + Re.Im - Im.Re;
        Z[j].Re   := Z[j].Re   + Re.Re - Im.Im;
        Z[j].Im   := Z[j].Im   + Re.Im + Im.Re;

        k := k + j;
        if k >= N then
          k := k - N;
      end;
    end;

    for j := 1 to AMax - 1 do begin
      Z[0].Re := Z[0].Re + V[j].Re;
      Z[0].Im := Z[0].Im + W[j].Im;
    end;
  end;

// main
begin
  // Initialize trigonomial coefficients
  InitializeTrigonomials(Radix);

  Omega       := 2 * pi / (Sofar * Radix);
  CosSin      := Complex(cos(Omega), -sin(Omega));
  S           := Complex(1.0, 0.0);
  DataOffset  := 0;
  GroupOffset := 0;
  Position    := 0;

  for DataNo := 0 to Sofar - 1 do begin

    if Sofar > 1 then begin

      Synth[0] := Complex(1.0, 0.0);
      Synth[1] := S;
      for SynthNo := 2 to Radix - 1 do
        Synth[SynthNo] := ComplexMul(S, Synth[SynthNo - 1]);
      S := ComplexMul(CosSin, S);

    end;

    for GroupNo := 0 to Remain - 1 do begin

      if (Sofar > 1) AND (DataNo > 0) then begin

        Z[0]    := Y[Position];
        BlockNo := 1;
        repeat
          inc(Position, Sofar);
          Z[BlockNo] := ComplexMul(Synth[BlockNo], Y[Position]);
          inc(BlockNo);
        until BlockNo >= Radix;

      end else begin

        for BlockNo := 0 to Radix - 1 do begin
          Z[BlockNo] := Y[Position];
          inc(Position, Sofar);
        end;

      end;

      case Radix of
      2:  FFT_2(Z);
      3:  FFT_3(Z);
      4:  FFT_4(Z);
      5:  FFT_5(Z);
      8:  FFT_8(Z);
      10: FFT_10(Z);
      else
        // Any larger prime number than 5 (so 7, 11, 13, etc, up to cMaxPrimeFactor)
        FFT_Prime(Radix);
      end; //case

      Position := GroupOffset;
      for BlockNo := 0 to Radix - 1 do begin
        Y[Position] := Z[blockNo];
        Inc(Position, Sofar);
      end;
      GroupOffset := GroupOffset + Sofar * Radix;
      Position    := GroupOffset;
    end;

    inc(DataOffset);
    GroupOffset := DataOffset;
    Position    := DataOffset;
  end;
end;


procedure ForwardFFT(const Source: array of Complexe; var Dest: array of Complexe; Count: integer);
// Perform a FFT on the data in Source, put result in Dest. This routine works best
// for Count as a power of 2, but also works usually faster than DFT by factoring
// the series. Only in cases where Count is a prime number will this method be
// identical to regular DFT.

Type
  PComplexArray = ^ComplexeArray;
  ComplexeArray = array[0..0] of Complexe;


Var
  i          : integer;
  FactorCount: integer;
  SofarRadix : TIdx1FactorArray;
  ActualRadix: TIdx1FactorArray;
  RemainRadix: TIdx0FactorArray;
  TmpDest    : PComplexArray;


begin
  if Count=0 then
    exit;

  // Decompose the series with length Count into FactorCount factors in ActualRadix
  Factorize(Count, FactorCount, ActualRadix);

  // Check if our biggest prime factor is not too large
  if (ActualRadix[1] > cMaxPrimeFactor) then
    raise EMathError.Create(sErrPrimeTooLarge);

  // Setup Sofar and Remain tables
  RemainRadix[0] := Count;
  SofarRadix[1]  := 1;
  RemainRadix[1] := Count div ActualRadix[1];
  for i := 2 to FactorCount do begin
    SofarRadix[i]  := SofarRadix[i-1] * ActualRadix[i-1];
    RemainRadix[i] := RemainRadix[i-1] div ActualRadix[i];
  end;

  // Make temp copy if dest = source (otherwise the permute procedure will completely
  // ruin the structure
  if @Dest = @Source then begin
    GetMem(TmpDest, SizeOf(Complexe) * Count);;
    Move(Dest, TmpDest^, SizeOf(Complexe) * Count);
  end else begin
    TmpDest := @Dest;
  end;

  // Reorder the series so that the elements are already in the right place for
  // synthesis
  ReorderSeries(Count{, FactorCount}, ActualRadix, RemainRadix, Source, TmpDest^);

  // Free the temporary copy (if any)
  if @Dest = @Source then begin
    Move(TmpDest^, Dest, SizeOf(Complexe) * Count);
    FreeMem(TmpDest);
  end;

  // Synthesize each of the FFT factored series
  for i := 1 to FactorCount do
    SynthesizeFFT(SofarRadix[i], ActualRadix[i], RemainRadix[i], Dest);

end;


procedure InverseFFT(const Source: array of Complexe; var Dest: array of Complexe; Count: integer);
// Perform the inverse FFT on the Source data, and put result in Dest. It performs
// the forward FFT and then divides elements by N
var
  i: integer;
  S: Double;
  TmpSource: array of Complexe;

begin
  if Count = 0 then exit;

  // Since TmpSource is local, we do not have to free it again,
  // it will be freed automatically when out of scope
  SetLength(TmpSource, Count);

  // Create a copy with inverted imaginary part.
  for i := 0 to Count - 1 do
    with Source[i] do
      TmpSource[i] := Complex(Re, -Im);
  ForwardFFT(TmpSource, Dest, Count);

  // Scale by 1/Count, and inverse the imaginary part
  S := 1.0 / Count;
  for i := 0 to Count - 1 do begin
    Dest[i].Re :=   S * Dest[i].Re;
    Dest[i].Im := - S * Dest[i].Im;
  end;

end;

Function AngleSinCos(SinA,CosA:Double):Double;
begin
  Result:=Arccos(CosA);
  if (SinA<0) then Result:=-Result;
end;

Function FRand:Double; // Return -1 to +1 random number
Var r:Double;
begin
  r     :=random(2000)/1000; // 0 -> 2
  result:=r-1.0;
end;


Function Inverse_DimPoly(N:Word):Word;
begin
 // Inverse de N=(x+1)*(x+2)/2 qui donne le degré du polynome

 result:=Round(sqrt(8*N+1)/2 - 3/2);

end;


END.
























