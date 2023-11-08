---
title: "Planifier Un Redemarrage Sous Linux"
date: 2023-10-11T07:17:22+02:00
draft: false
author: jr0w3
tags: ["shutdown","shedule"]
categories: ["Linux","cmd"]
---

Une petite note avec des exemples pour utiliser la commande `shutdown` afin de planifier un redémarrage de l'OS.

La commande pour un redémarrage standard se fait avec le paramètre `-r`

Redémarrage du système:
```bash
shutdown -r now
```

Arrêt du système:
```bash
shutdown -P now
```

Redémarrage du système à 17:30
```bash
shutdown -r 17:30
```

Redémarrage du système dans 30 minutes:
```bash
shutdown -r +30
```

Annuler un arrêt/redémarrage planifié:
```bash
shutdown -c
```

Lister les arrêts/redémarrages planifiés avec `systemd`:
```bash
cat /run/systemd/shutdown/scheduled
```
```bash
USEC=1697006669965928
WARN_WALL=1
MODE=poweroff
```






