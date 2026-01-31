---
title: "Les différents types de clés SSH"
date: 2026-01-31T21:08:00+01:00
draft: fasle
author: jr0w3
tags: ["Linux", "SSH"]
categories: ["Linux", "SSH"]
---

## Générer un clé ssh

Pour Générer une clé SSH, on utilise la commande :

```bash
ssh-keygen -t <type> -b <bits> -C "votre_email@example.com"
```
- `-t <type>` : le type de clé à générer (rsa, ed25519, ecdsa, dsa)  
- `-b <bits>` : la taille de la clé en bits (obligatoire pour RSA et ECDSA, ignorée pour Ed25519)  
- `-C` : un commentaire, souvent votre email pour identifier la clé  

## Types de clés SSH

| Type      | Points forts                  | Points faibles / Notes         | Commande exemple |
|----------|-------------------------------|-------------------------------|----------------|
| **Ed25519** | Moderne, rapide, sécurisée   | Taille fixe, recommandé       | `ssh-keygen -t ed25519 -C "votre_email@example.com"` |
| **RSA**     | Très compatible             | Plus lent, utilisez 4096 bits | `ssh-keygen -t rsa -b 4096 -C "votre_email@example.com"` |
| **ECDSA**   | Rapide, basé sur courbes elliptiques | Moins courant qu’Ed25519 | `ssh-keygen -t ecdsa -b 521 -C "votre_email@example.com"` |
| **DSA**     | Ancien                      | ⚠️ Déconseillé aujourd’hui     | `ssh-keygen -t dsa -C "votre_email@example.com"` |