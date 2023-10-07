---
title: Cloner un dépôt Git avec ses sous-modules
date: 2023-10-07T07:42:11+02:00
draft: false
author: jr0w3
tags:
   - Git
slug: cloner-depot-git-avec-ses-sous-modules
categories:
   - git
---
## Cloner un depôt Git avec ses sous-modules

Vous pouvez cloner un dépôt Git avec des sous-modules en utilisant la commande `git clone` avec l'option `--recurse-submodules`. Voici comment faire :

1. **Copiez l'URL du dépôt** : Rendez-vous sur la page du dépôt (par exemple sur GitHub) que vous souhaitez cloner. Cliquez sur le bouton "Code" et copiez l'URL du dépôt principal.

2. **Ouvrez votre terminal** : Ouvrez un terminal sur votre système d'exploitation.

3. **Utilisez la commande `git clone` avec `--recurse-submodules`** : Utilisez la commande `git clone` en spécifiant l'URL du dépôt principal et l'option `--recurse-submodules`. Par exemple :

   ```shell
   git clone --recurse-submodules URL_DU_DEPOT
   ```
Remplacez **`URL_DU_DEPOT`** par l'URL que vous avez copiée.

Pour terminer, sachez que dans cet exemple nous parlons de GitHub, mais sachez que cela fonctionne avec n'importe quel serveur Git, comme GitLab ou autre.

## Mettre à jour tous les sous-modules d'un dépôt Git

Maintenant que nous avons vu comment cloner un dépôt Git avec ses sous-modules, sachez qu'il est important de garder ces sous-modules à jour pour vous assurer que votre projet fonctionne correctement avec les dernières versions des dépendances. Voici comment mettre à jour tous les sous-modules d'un dépôt Git :

1. **Accédez au répertoire racine du dépôt** : Ouvrez un terminal et assurez-vous d'être dans le répertoire racine de votre dépôt Git, celui qui contient les sous-modules.

2. **Utilisez la commande `git submodule update`** : Utilisez la commande suivante pour mettre à jour tous les sous-modules sans changer de branche :

   ```shell
   git submodule update --remote
   ```

Cette commande mettra à jour tous les sous-modules pour correspondre à la version de la branche référencée dans votre dépôt principal.

3. **Confirmez les mises à jour** : Vous verrez les informations de mise à jour pour chaque sous-module dans votre terminal. Confirmez les mises à jour lorsque vous êtes invité à le faire.

4. **Validez les modifications** : Après avoir mis à jour les sous-modules, assurez-vous de valider les modifications dans le dépôt principal (le répertoire racine) en utilisant git commit et git push si nécessaire.
