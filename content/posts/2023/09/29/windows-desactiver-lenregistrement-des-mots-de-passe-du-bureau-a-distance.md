---
title: Désactiver l'enregistrement des mots de passe du Bureau à distance
date: 2023-09-29T16:27:20+02:00
draft: false
author: jr0w3
tags:
    - Windows
    - RDP
slug: desactiver-enregistrement-des-mots-de-passe-du-bureau-a-distance
categories:
    - Windows
---
Pour des raisons de sécurité, il peutêtre utiles sur Windows d'empêcher les utilisateurs de mémoriser le mot de passe de leur compte pour une connexion Bureau à distance.

#### Désactiver la mémorisation depuis l'éditeur de stratégie de groupe local
Pour désactiver la mémorisation depuis l'éditeur de stratégie de groupe local, il vous suffit de vous rendre dans: **Configuration ordinateur** > **Composants Windows** > **Service Bureau à distance** > **Client Connexion Bureau à distance**, il ne vous restera plus alors qu'à activer le paramètre "**Ne pas autoriser l'enregistrement des mots de passe"**.

Dans cet exemple, nous activons le paramètre pour tous les utilisateurs, car nous l'avons fait depuis **Configuration ordinateur**, mais sachez que c'est également possible depuis **Configuration utilisateur** en suivant le même chemin.

#### Désactiver la mémorisation depuis l'éditeur de registre
Pour arriver au même résultat depuis l'éditeur de registre, il suffit de créer une valeur DWORD32 "**DisablePasswordSaving**" avec "**1**" en donnée dans le chemin suivant:

    HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\

Ou pour un utilisateur spécifique:

    HKEY_USERS\SID-DE-LUTILISATEUR\Software\Policies\Microsoft\Windows NT\Terminal Services\

Pour utiliser cette deuxième commande, vous aurez besoin du SID de l'utilisateur, récupérable avec cette commande:

    wmic useraccount where name='NomDElUtilisateur' get sid

Ce qui retourne par exemple:

    C:\>wmic useraccount where name='jean' get sid
    SID
    S-1-5-11-6852149846-6841273211-8436548939-3895

Dans cet exemple le chemin du registre pour l'utilisateur "**jean**" sera alors:

    HKEY_USERS\S-1-5-11-6852149846-6841273211-8436548939-3895\Software\Policies\Microsoft\Windows NT\Terminal Services\
