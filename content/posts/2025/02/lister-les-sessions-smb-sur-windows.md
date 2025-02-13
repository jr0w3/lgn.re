---
title: "Lister Les Sessions Smb Sur Windows"
date: 2025-02-13T17:04:39+01:00
draft: true
author: jr0w3
tags: ["Windows", "SMB"]
categories: ["Windows", "SMB"]
---


## `Get-SmbSession`
Cette commande permet d'afficher les sessions SMB actives sur un serveur Windows. Elle liste les utilisateurs connectés ainsi que des informations comme le nom du client et l'état de la connexion.

## `(Get-SmbSession | Measure-Object).Count`
Cette commande compte le nombre total de sessions SMB actives. Elle utilise `Measure-Object` pour mesurer le nombre d'objets retournés par `Get-SmbSession` et affiche uniquement le nombre total.

## `while ($true) {Clear-Host; Get-SmbSession | Measure-Object | Select-Object -ExpandProperty Count; Start-Sleep -Seconds 2}`
Ce script exécute une boucle infinie qui :
- Efface l'écran (`Clear-Host`).
- Affiche en continu le nombre de sessions SMB actives (`Get-SmbSession | Measure-Object | Select-Object -ExpandProperty Count`).
- Attend 2 secondes avant de recommencer (`Start-Sleep -Seconds 2`).

Cela permet de surveiller en temps réel l'évolution du nombre de sessions SMB.

