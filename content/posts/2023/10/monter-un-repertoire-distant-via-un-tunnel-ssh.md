---
title: "Monter Un Répertoire Distant via Un Tunnel Ssh"
date: 2023-10-12T06:52:45+02:00
draft: false
author: jr0w3
tags: ["SSH,Mount"]
categories: ["SSH"]
---

`SSHFS` est un outil en ligne de commande qui permet de monter un système de fichier distant via `SSH` et plus précisément en utilisant `SFTP`.
Sachez que `SFTP` et actif par défaut sur la plupart des serveurs OpenSSH.

### Installer SSHFS:
```bash
apt install sshfs
```

### Monter un répertoire:
```bash
sshfs [user@]hôte:[Dossier] PointDeMontage [options]
```
Si l'hôte est une adresse IPv6, elle doit être placée entre crochets.

Voici un exemple pour monter le dossier `/home/john/tool` présent sur le serveur distant `192.168.10.20` vers le dossier local `~/tool`.
```bash
sshfs john@192.168.10.20:/home/john/tool ~/tool
```

### Démonter un répertoire:

Pour démonter un répertoire, la syntaxe à utiliser est:
```bash
fusermount3 -u PointDeMontage
```

Dans notre cas, cela donne:
```bash
fusermount3 -u ~/tool 
```

