unit MCMT32_TLB;

// ************************************************************************ //
// AVERTISSEMENT
// -------
// Les types déclarés dans ce fichier ont été générés à partir de données lues
// depuis la bibliothèque de types. Si cette dernière (via une autre bibliothèque de types
// s'y référant) est explicitement ou indirectement ré-importée, ou la commande "Actualiser"
// de l'éditeur de bibliothèque de types est activée lors de la modification de la bibliothèque
// de types, le contenu de ce fichier sera régénéré et toutes les modifications
// manuellement apportées seront perdues.
// ************************************************************************ //

// $Rev: 52393 $
// Fichier généré le 11/04/2013 15:53:53 depuis la bibliothèque de types ci-dessous.

// ************************************************************************  //
// Biblio. types : E:\ASCOM\MCMT32New\MCMT32_ASCOM (1)
// LIBID : {A5F49B3F-C4AC-4BBE-9415-837223494182}
// LCID : 0
// Fichier d'aide :
// Chaîne d'aide :
// DepndLst :
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // L'unité doit être compilée sans pointeur à type contrôlé.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;

// *********************************************************************//
// GUIDS déclarés dans la bibliothèque de types. Préfixes utilisés:
//   Bibliothèques de types : LIBID_xxxx
//   CoClasses              : CLASS_xxxx
//   Interfaces DISP        : DIID_xxxx
//   Interfaces Non-DISP    : IID_xxxx
// *********************************************************************//
const
  // Versions mineure et majeure de la bibliothèque de types
  MCMT32MajorVersion = 1;
  MCMT32MinorVersion = 0;

  LIBID_MCMT32: TGUID = '{A5F49B3F-C4AC-4BBE-9415-837223494182}';

  IID_ITelescope: TGUID = '{1DBD9AC9-BF28-4F0E-8196-ACA18339536B}';
  CLASS_Telescope: TGUID = '{210FA956-1844-4C7B-AC40-E22DC5A48A4F}';
type

// *********************************************************************//
// Déclaration Forward des types définis dans la bibliothèque de types
// *********************************************************************//
  ITelescope = interface;
  ITelescopeDisp = dispinterface;

// *********************************************************************//
// Déclaration de CoClasses définies dans la bibliothèque de types
// (REMARQUE: On affecte chaque CoClasse à son Interface par défaut)
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
// La classe CoTelescope fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut ITelescope exposée
// par la CoClasse Telescope. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
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

