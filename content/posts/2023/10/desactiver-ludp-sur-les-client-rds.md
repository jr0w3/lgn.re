---
title: "Désactiver l'UDP Sur Les Clients RDS Windows"
date: 2023-10-19T12:11:20+02:00
draft: false
author: jr0w3
tags: ["UDP", "RDS"]
categories: ["Windows"]
---

L'utilisation du protocole UDP avec le RDS (Remote Desktop Service) peut parfois poser des problèmes de stabilité dans certaines conditions.
Il peut être nécessaire de déactiver cette possibilité afin de forcer les clients RDS à n'utiliser que le protocole TCP.

### Désactivation via l'éditeur de stratégie de groupe local:

1. Ouvrir l'éditeur de stratégie de groupe local depuis panneaux de configuration ou via le **Éxécuter** avec `gpedit.msc`

2. Se rendre dans **Configuration ordinateur** > **Modèle d'administration** > **Composants Windows** > **Services Bureau à distance** > **Client Connexion Bureau à distance**

3. Sélectionner **Désactiver UDP sur le client** et changer la valeur en **Activé**
