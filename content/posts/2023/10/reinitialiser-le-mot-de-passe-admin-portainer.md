---
title: "Reinitialiser Le Mot De Passe Admin Portainer"
date: 2023-10-16T06:57:31+02:00
draft: false
author: jr0w3
tags: ["Docker","Portainer"]
categories: ["Linux,Docker"]
---

Les développeurs de Portainer ont mis à disposition des utilisateurs un container à déployer en cas de perte de mot de passe.

Pour commencer, on stop le container Portainer:
```bash
docker ps
```
Nous allons devoir récupérer l'id du container pour le stopper:

```bash
CONTAINER ID   IMAGE                           COMMAND                  CREATED         STATUS                    PORTS                                                                                            NAMES
71d1a51fd820   portainer/portainer-ce:latest   "/portainer"             2 minutes ago   Up 2 minutes              0.0.0.0:8000->8000/tcp, :::8000->8000/tcp, 0.0.0.0:9443->9443/tcp, :::9443->9443/tcp, 9000/tcp   portainer
``` 
L'id est `71d1a51fd820`.

Pour stopper le container, nous allons utiliser al commande `docker stop ID`:

```bash
docker stop 71d1a51fd820
```

Une fois le container stoppé, nous allons récupérer l'image du container de dépannage avec `docker pull IMAGE`.

```bash
docker pull portainer/helper-reset-password
```
Nous allons maintenant lancer l'outil qui va régénérer un mot de passe pour notre instance avec la commande suivante:

```bash
docker run --rm -v VOLUME_PORTAINER:/data portainer/helper-reset-password
```

Si vous n'avez pas changer le nom de volume par défaut, il s'agit de `portainer_data`:

```bash
docker run --rm -v portainer_data:/data portainer/helper-reset-password

{"level":"info","filename":"portainer.db","time":"2023-10-16T05:11:20Z","message":"loading PortainerDB"}
2023/10/16 05:11:20 Password successfully updated for user: admin
2023/10/16 05:11:20 Use the following password to login: 28O/FrDdm7(65lP=]eBb:9L"03+*yGtw
```

L'outil nous a donc généréré un nouveau mot de passe: `28O/FrDdm7(65lP=]eBb:9L"03+*yGtw`

On peut maintenant relancer le container:

```bash
docker start 71d1a51fd820
```


