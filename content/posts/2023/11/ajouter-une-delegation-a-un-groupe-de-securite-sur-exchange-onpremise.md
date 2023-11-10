---
title: "Ajouter Une Délégation à Un Groupe De Sécurité Sur Exchange OnPremise"
date: 2023-11-10T16:43:37+01:00
draft: false
author: jr0w3
tags: ["Exchange","Powershell"]
categories: ["Exchange","Powershell"]
---

## Récupération du GUID du groupe
Pour commencer, il faut trouver le GUID du groupe.
Depuis une console **Exchange Mananagent Shell**:

```powershell
Get-Group -Identity "Techniciens" | Select-Object Name, GUID
```

Cela retourne :
```powershell
Name        Guid
----        ----
Techniciens 1aXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXX
```

*info: pour lister tous les groupes, il faut utiliser la commande sans préciser le `-Identity "Nom"`*:
```powershell
Get-Group | Select-Object Name, GUID
```

## Récupération du ExchangeGUID de la boite sur laquelle mettre la délégation
Comme pour le GUID, nous allons rechercher la boite et filtrer le **ExchangeGUID**.
Nous utilisons le `-Identity` pour rechercher notre boite. On peut également rechercher avec le *sAMAccountName**:
```powershell
Get-mailbox -Identity "UtilisateurOuMail" | Select-Object DisplayName, ExchangeGUID
```

Ce qui nous retourne le GUID de notre boite mail :
```powershell
DisplayName ExchangeGuid
----------- ------------
MaBoite     81XXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
```

## Lister les droits de la boite mail:
Pour lister les droits, on utilise **Get-MailboxPermission** :
```powershell 
Get-MailboxPermission 81XXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
```

Cela va nous lister les permissions actuelles sur la boite :
```powershell
Identity             User                 AccessRights                                                                                                                                                                IsInherite
d Deny
--------             ----                 ------------                                                                                                                                                                ----------- ----
domain.local/M... AUTORITE NT\SELF  {FullAccess, ReadPermission}                                                                                                                                                False       False
domain.local/M... DOMAIN\Adminis... {FullAccess}                                                                                                                                                                True        True
domain.local/M... DOMAIN\Admins ... {FullAccess}                                                                                                                                                                True        True
domain.local/M... DOMAIN\Adminis... {FullAccess}                                                                                                                                                                True        True
domain.local/M... DOMAIN\Organiz... {FullAccess}                                                                                                                                                                True        True
```

## Attribuer l'autorisation Accès total à une boîte aux lettres
Pour attribuer l'autorisation Accès total à notre groupe sur la boite :
```powershell
Add-MailboxPermission -Identity 81XXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX -User 1aXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXX -AccessRights FullAccess
```

Pour retirer l'autorisation Accès total à notre groupe sur la boite :
```powershell
Remove-MailboxPermission -Identity 81XXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX -User 1aXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXX -AccessRights FullAccess   
```
