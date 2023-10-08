---
title: OpenVPN error:0A00018E:SSL routines::ca md too weak
description: ""
date: 2023-10-08T16:29:57.359Z
preview: null
draft: false
tags: []
categories: []
---
## Introduction


L’erreur « OpenSSL: error:0A00018E:SSL routines::ca md too weak » est un message d’erreur qui apparaît lorsqu’OpenSSL, une bibliothèque de cryptographie utilisée pour sécuriser les connexions réseau, détecte un algorithme de hachage CA (Certificate Authority) trop faible. Cela signifie que la sécurité de la connexion est compromise et qu’il peut y avoir un risque de compromission de la confidentialité et de l’intégrité des données échangées.

En termes plus simples, cette erreur se produit lorsqu’un certificat utilisé pour sécuriser une connexion VPN ou un autre type de connexion réseau utilise un algorithme de hachage CA faible, qui peut être facilement compromis par des attaquants malveillants. Cela peut se produire si le certificat a été généré il y a longtemps et qu’il n’a pas été mis à jour pour répondre aux normes de sécurité plus récentes.

Pour résoudre cette erreur, il est recommandé de mettre à jour le certificat avec un algorithme de hachage CA plus fort et plus sécurisé, ou de modifier la configuration de la connexion VPN pour utiliser un algorithme de hachage CA compatible. La solution décrite dans cet article est une solution temporaire qui permet de contourner le problème en réduisant temporairement le niveau de sécurité de la connexion VPN.

## Solution

Tout d’abord, vous devez modifier le fichier de configuration VPN en tapant la commande suivante dans le terminal :

```bash
sudo nano /etc/NetworkManager/system-connections/PROFIL.nmconnection
```

Assurez-vous de remplacer « PROFIL » par le nom de votre propre profil VPN. Une fois que vous êtes dans le fichier de configuration, ajoutez la ligne suivante sous la section \[vpn\] :

`tls-cipher=DEFAULT:@SECLEVEL=0`

Il est important de noter que cette option de configuration réduit la sécurité de votre connexion VPN. Par conséquent, utilisez cette solution à vos risques et périls.

<img width="720" height="369" src=":/a8dc186f904242219b458af9d9dcce31"/>

Ensuite, enregistrez le fichier et quittez l’éditeur de texte. Pour que la configuration prenne effet, rechargez les connexions en exécutant la commande suivante :

```bash
sudo nmcli connection reload
```

Vous devriez désormais être en mesure de vous connecter à votre VPN sans rencontrer l’erreur OpenSSL: error:0A00018E:SSL routines::ca md too weak. N’oubliez pas de rétablir les paramètres de sécurité appropriés une fois que vous n’aurez plus besoin de cette option de configuration.