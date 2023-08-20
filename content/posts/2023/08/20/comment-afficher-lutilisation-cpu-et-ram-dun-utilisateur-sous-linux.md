---
title: "Comment afficher l'utilisation CPU Et RAM d'un utilisateur sous Linux"
date: 2023-08-20T18:52:28+02:00
draft: true
author: jr0w3
tags: ["linux, cpu, ram"]
---

Afficher les processus pour un utilisateur spécifique, y compris l'utilisation du processeur et de la mémoire.

    ps -opid, comm, pcpu, pmem -u john

Ce qui nous retournera ce type d'output.
