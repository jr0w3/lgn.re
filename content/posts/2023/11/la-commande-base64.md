---
title: "La Commande Base64"
date: 2023-11-08T06:41:27+01:00
draft: false
author: jr0w3
tags: ["Linux","Base64"]
categories: ["Linux","HowTo"]
---

# Comment utiliser le base64 avec fichier ou en ligne de commande direct

Le base64 est un système de codage qui permet de représenter des données binaires sous forme de chaînes de caractères ASCII. Il est souvent utilisé pour transmettre des données qui ne sont pas compatibles avec certains protocoles ou formats, comme les images, les fichiers PDF, les courriels, etc.

Pour utiliser le base64 avec fichier ou en ligne de commande direct, vous pouvez utiliser la commande base64 qui fait partie du paquet coreutils sur les systèmes Linux. Cette commande permet de coder ou de décoder des données en base64 en utilisant des options et des arguments.

## Encoder des données en base64

Pour encoder des données en base64, vous pouvez utiliser la commande base64 avec l'option -w 0 pour éviter les retours à la ligne. Par exemple, pour encoder la chaîne "test" sans pipe, vous pouvez utiliser la commande suivante :

```bash
base64 -w 0 <<< "test"
```

Cette commande utilise la redirection d'entrée (<<<) pour passer la chaîne à la commande base64 avec l'option -w 0 pour écrire le résultat sur une seule ligne. Le résultat sera affiché sur la sortie standard.

Vous pouvez également utiliser l'option -i pour spécifier le nom d'un fichier contenant les données à encoder, et l'option -o pour spécifier le nom d'un fichier où écrire le résultat. Par exemple, pour encoder le fichier "plain.txt" et écrire le résultat dans le fichier "encoded.txt", vous pouvez utiliser la commande suivante :

```bash
base64 -w 0 -i plain.txt -o encoded.txt
```

## Décoder des données en base64

Pour décoder des données en base64, vous pouvez utiliser la commande base64 avec l'option -d pour décoder. Par exemple, pour décoder la chaîne "dGVzdAo=" sans pipe, vous pouvez utiliser la commande suivante :

```bash
base64 -d <<< "dGVzdAo="
```

Cette commande utilise la redirection d'entrée (<<<) pour passer la chaîne à la commande base64 avec l'option -d pour décoder. Le résultat sera affiché sur la sortie standard.

Vous pouvez également utiliser l'option -i pour spécifier le nom d'un fichier contenant les données à décoder, et l'option -o pour spécifier le nom d'un fichier où écrire le résultat. Par exemple, pour décoder le fichier "encoded.txt" et écrire le résultat dans le fichier "decoded.txt", vous pouvez utiliser la commande suivante :

```bash
base64 -d -i encoded.txt -o decoded.txt
```

