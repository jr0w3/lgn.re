---
title: "Installer Alpaca Sur Ubuntu"
date: 2025-02-06T20:09:35+01:00
draft: false
author: jr0w3
tags: ["Alpacat", "LLM", "Linux"]
categories: ["Linux", "LLM"]
---

Alpaca est un outil graphique sur Linux qui peret de gérer et télécharger des modèle de language sous Linux, mais iul offre également un prompt afin d'échanger avec le modèle.


## Installation

Installation de Flatpak
```bash
sudo apt install flatpak
```

Ajout du repository de Flathub
```bash
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```
Installation de Alpaca
```bash
flatpak install flathub com.jeffser.Alpaca
```

Une fois l'installation terminée, si on ne trouve pas Alpaca dans le menu des application on peut l'ouvrir depuis un terminal avec la commande suivante:
```bash
flatpak run com.jeffser.Alpaca
```

