#!/bin/bash

# Chemin du dossier contenant le script
script_dir=$(dirname "$0")

# Chemin vers le dossier public
public_dir="$script_dir/../public/*"

# Informations de connexion au serveur
remote_user="lgn"
remote_host="82.165.109.7"
remote_port="50050"
remote_path="/home/lgn/htdocs/lgn.re"

# Utilisation de scp pour copier les fichiers
scp -P "$remote_port" -r "$public_dir" "$remote_user@$remote_host:$remote_path"
 
