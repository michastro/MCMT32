unit MCMT32_TLB;

// ************************************************************************ //
// AVERTISSEMENT
// -------
// Les types d�clar�s dans ce fichier ont �t� g�n�r�s � partir de donn�es lues
// depuis la biblioth�que de types. Si cette derni�re (via une autre biblioth�que de types
// s'y r�f�rant) est explicitement ou indirectement r�-import�e, ou la commande "Actualiser"
// de l'�diteur de biblioth�que de types est activ�e lors de la modification de la biblioth�que
// de types, le contenu de ce fichier sera r�g�n�r� et toutes les modifications
// manuellement apport�es seront perdues.
// ************************************************************************ //

// $Rev: 52393 $
// Fichier g�n�r� le 11/04/2013 15:53:53 depuis la biblioth�que de types ci-dessous.

// ************************************************************************  //
// Biblio. types : E:\ASCOM\MCMT32New\MCMT32_ASCOM (1)
// LIBID : {A5F49B3F-C4AC-4BBE-9415-837223494182}
// LCID : 0
// Fichier d'aide :
// Cha�ne d'aide :
// DepndLst :
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // L'unit� doit �tre compil�e sans pointeur � type contr�l�.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;

// *********************************************************************//
// GUIDS d�clar�s dans la biblioth�que de types. Pr�fixes utilis�s:
//   Biblioth�ques de types : LIBID_xxxx
//   CoClasses              : CLASS_xxxx
//   Interfaces DISP        : DIID_xxxx
//   Interfaces Non-DISP    : IID_xxxx
// *********************************************************************//
const
  // Versions mineure et majeure de la biblioth�que de types
  MCMT32MajorVersion = 1;
  MCMT32MinorVersion = 0;

  LIBID_MCMT32: TGUID = '{A5F49B3F-C4AC-4BBE-9415-837223494182}';

  IID_ITelescope: TGUID = '{1DBD9AC9-BF28-4F0E-8196-ACA18339536B}';
  CLASS_Telescope: TGUID = '{210FA956-1844-4C7B-AC40-E22DC5A48A4F}';
type

// *********************************************************************//
// D�claration Forward des types d�finis dans la biblioth�que de types
// *********************************************************************//
  ITelescope = interface;
  ITelescopeDisp = dispinterface;

// *********************************************************************//
// D�claration de CoClasses d�finies dans la biblioth�que de types
// (REMARQUE: On affecte chaque CoClasse � son Interface par d�faut)
// *********************************************************************//
  Telescope = ITelescope;


// *********************************************************************//
// Interface :   ITelescope
// Indicateurs : (4416) Dual OleAutomation Dispatchable
// GUID :        {1DBD9AC9-BF28-4F0E-8196-ACA18339536B}
// *********************************************************************//
  ITelescope = interface(IDispatch)
    ['{1DBD9AC9-BF28-4F0E-8196-ACA18339536B}']
  end;

// *********************************************************************//
// DispIntf :    ITelescopeDisp
// Indicateurs : (4416) Dual OleAutomation Dispatchable
// GUID :        {1DBD9AC9-BF28-4F0E-8196-ACA18339536B}
// *********************************************************************//
  ITelescopeDisp = dispinterface
    ['{1DBD9AC9-BF28-4F0E-8196-ACA18339536B}']
  end;

// *********************************************************************//
// La classe CoTelescope fournit une m�thode Create et CreateRemote pour
// cr�er des instances de l'interface par d�faut ITelescope expos�e
// par la CoClasse Telescope. Les fonctions sont destin�es � �tre utilis�es par
// les clients d�sirant automatiser les objets CoClasse expos�s par
// le serveur de cette biblioth�que de types.
// *********************************************************************//
  CoTelescope = class
    class function Create: ITelescope;
    class function CreateRemote(const MachineName: string): ITelescope;
  end;

implementation

uses System.Win.ComObj;

class function CoTelescope.Create: ITelescope;
begin
  Result := CreateComObject(CLASS_Telescope) as ITelescope;
end;

class function CoTelescope.CreateRemote(const MachineName: string): ITelescope;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Telescope) as ITelescope;
end;

end.

