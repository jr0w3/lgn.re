---
title: "Comment Obtenir Le Lien De La Derniere Release Dun Repo Github"
date: 2023-10-08T18:42:55+02:00
draft: false
author: jr0w3
tags: ["GitHub"]
category: ["GitHub", "HowTo"]
---

## Introduction

Lorsque vous souhaitez télécharger la dernière version d’un logiciel open-source à partir de son repository Github, vous devez d’abord trouver le lien de téléchargement pour la dernière release disponible. Dans cet article, nous allons vous montrer comment trouver ce lien de téléchargement à l’aide de l’API Github.

## Utilisation de l’API Github pour récupérer les informations de version

La première étape consiste à utiliser l’API Github pour récupérer les informations sur la dernière release du repository. Pour ce faire, nous pouvons utiliser l’URL suivante :

`https://api.github.com/repos/OWNER/PROJECT/releases/latest`

Remplacez « OWNER » par le nom du propriétaire du repository, et « PROJECT » par le nom du repository lui-même. Par exemple, si vous souhaitez télécharger la dernière version de GLPI, le lien sera le suivant :

`https://api.github.com/repos/glpi-project/glpi/releases/latest`

L’API Github renvoie un fichier JSON contenant de nombreuses informations sur la dernière release. Dans ce fichier, vous pouvez trouver le lien de téléchargement dans la section « assets » de l’objet JSON.

## Extraire le lien de téléchargement à l’aide de jq

Pour extraire le lien de téléchargement de l’objet JSON, nous allons utiliser la commande jq, qui est un outil de manipulation de JSON en ligne de commande.

Sur la plupart des distributions Linux, jq est disponible dans les dépôts officiels. Vous pouvez donc l’installer à l’aide de votre gestionnaire de paquets :

Debian et Ubuntu :

```bash
sudo apt-get install jq
```

CentOS, Fedora et RHEL :

```bash
sudo dnf install jq
```

Voici la commande à exécuter :

```bash
curl -s https://api.github.com/repos/OWNER/PROJECT/releases/latest | jq -r '.assets[0].browser_download_url'
```

Encore une fois, remplacez « OWNER » et « PROJECT » par les noms appropriés. Par exemple, pour GLPI, la commande serait la suivante :

```bash
curl -s https://api.github.com/repos/glpi-project/glpi/releases/latest | jq -r '.assets[0].browser_download_url'
```

Cette commande utilise curl pour effectuer une requête à l’API Github pour récupérer les informations sur la dernière release du repository. L’option « -s » de curl signifie que le processus se déroule en mode silencieux, c’est-à-dire qu’aucune information de progression ne sera affichée dans la console.

Ensuite, la sortie de la commande curl est passée en pipeline à la commande jq, qui filtre les informations JSON pour extraire l’URL de téléchargement du premier fichier « asset » de la release. L’option « -r » de jq signifie que le résultat sera affiché sans guillemets.

En utilisant ces commandes, vous pouvez facilement récupérer le lien de téléchargement de la dernière version d’un logiciel open-source à partir de son repository Github dans un script bash.
