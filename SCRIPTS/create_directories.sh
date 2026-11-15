#!/bin/bash

logs=/home/admintech/SCRIPTS/creation.log 
date=$(date '+%Y-%m-%d_%H:%M:%S')
echo "$date - Début du script" >> "$logs"

dossiers=("app" "sauvegardes" "my_projects" "archives")

count=0
for dossier in "${dossiers[@]}"
do
	if [ ! -d "$dossier" ]; then
		mkdir -p "$dossier"
		echo "$date - Création du dossier $dossier : ok" >> "$logs"
		count=$((count +1))
	else
		echo "$date - Le dossier $dossier existe déjà !" >> "$logs"
	fi
done

echo "Le nombre de dossier créer est : $count" >> "$logs"

echo "$date - Le script est exécuté par : $USER" >> "$logs"

echo "$date - Fin du script " >> "$logs"

