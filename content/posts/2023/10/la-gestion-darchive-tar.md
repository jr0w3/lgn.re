---
title: "La Gestion D'archive Tar"
date: 2023-10-30T06:30:02+01:00
draft: false
author: jr0w3
tags: [""]
categories: [""]
---

1. **Créer une archive** :

Pour créer une archive sans compression, vous pouvez utiliser la commande suivante :

```bash
tar -cvf archive.tar fichier1 fichier2 ...
```

Par exemple, pour créer une archive appelée `mon_archive.tar` contenant les fichiers `fichier1.txt` et `fichier2.txt`, vous exécuteriez :

```bash
tar -cvf mon_archive.tar fichier1.txt fichier2.txt
```

2. **Créer une archive avec plusieurs fichiers** :

Vous pouvez ajouter plusieurs fichiers à une archive en les spécifiant tous dans la commande `tar` :

```bash
tar -cvf archive.tar fichier1 fichier2 fichier3 ...
```

3. **Ajouter un fichier à une archive existante** :

Pour ajouter un fichier à une archive existante, vous pouvez utiliser la commande `tar` avec l'option `-r` :

```bash
tar -rvf archive.tar fichier_a_ajouter
```

4. **Créer une archive tar.gz** :

Pour créer une archive tar avec une compression gzip (fichier tar.gz), utilisez l'option `-z` de `tar` :

```bash
tar -czvf archive.tar.gz fichier1 fichier2 ...
```

Par exemple, pour créer une archive compressée `mon_archive.tar.gz` contenant les fichiers `fichier1.txt` et `fichier2.txt`, vous exécuteriez :

```bash
tar -czvf mon_archive.tar.gz fichier1.txt fichier2.txt
```

5. **Lister les fichiers d'une archive** :

Pour lister le contenu d'une archive (qu'elle soit tar ou tar.gz), utilisez l'option `-t` pour la liste :

Pour une archive tar :

```bash
tar -tvf archive.tar
```

Pour une archive tar.gz :
```bash
tar -tzvf archive.tar.gz
tar -tvf archive.tar
```


Ces commandes afficheront la liste des fichiers contenus dans l'archive.

N'oubliez pas d'ajuster les noms de fichiers et d'archives en fonction de vos besoins. Le regroupement "tar" en premier et "gz" en second est courant car il permet de créer des archives tar qui peuvent ensuite être compressées avec gzip pour obtenir une archive tar.gz.
