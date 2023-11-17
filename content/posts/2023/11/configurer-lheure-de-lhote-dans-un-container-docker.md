---
title: "Configurer L'heure De L'hote Dans Un Container Docker"
date: 2023-11-17T06:12:49+01:00
draft: false
author: jr0w3
tags: ["Docker"]
categories: ["Docker"]
---

# Configuration de l'heure de l'hôte dans un conteneur Docker

Lorsque vous travaillez avec des conteneurs Docker, il est crucial de garantir que l'heure du conteneur correspond à celle du système hôte pour assurer une synchronisation correcte et des horodatages précis. Heureusement, cela peut être réalisé en ajoutant les fichiers de configuration locaux (/etc/timezone et /etc/localtime) en tant que volumes dans votre conteneur Docker.

Suivez ces étapes pour mettre en place cette configuration :

1. **Créer des Volumes dans Docker-Compose :**

   Mettez à jour votre fichier `docker-compose.yml` en ajoutant les lignes suivantes sous le service concerné :

   ```yaml
   volumes:
       - "/etc/timezone:/etc/timezone:ro"
       - "/etc/localtime:/etc/localtime:ro"
   ```

   Cette configuration indique à Docker de monter les fichiers locaux `/etc/timezone` et `/etc/localtime` dans les chemins correspondants à l'intérieur du conteneur. L'option `ro` rend ces volumes en lecture seule, garantissant que le conteneur ne peut pas les modifier.

2. **Appliquer les Changements :**

   Enregistrez le fichier `docker-compose.yml` et exécutez la commande suivante pour appliquer les changements :

   ```bash
   docker-compose up -d
   ```

   Cette commande redémarre le conteneur Docker avec la configuration de volume mise à jour.

3. **Vérifier la Synchronisation de l'Heure :**

   Vous pouvez vérifier que l'heure du conteneur est maintenant synchronisée avec celle du système hôte en consultant la date et l'heure à l'intérieur du conteneur :

   ```bash
   docker exec -it votre_nom_de_conteneur date
   ```

   Remplacez `votre_nom_de_conteneur` par le nom réel de votre conteneur Docker. La date et l'heure affichées devraient désormais correspondre à celles du système hôte.

En intégrant ces montages de volumes dans votre configuration Docker, vous vous assurez que l'heure du conteneur reflète celle de l'hôte, évitant ainsi toute divergence et facilitant les opérations liées au temps dans votre environnement conteneurisé.
