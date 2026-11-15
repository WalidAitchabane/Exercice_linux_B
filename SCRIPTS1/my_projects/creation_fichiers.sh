#!/bin/bash

date=$(date '+%Y-%m-%d_%H:%M:%S')

for i in {1..10}
do
	touch "/home/admintech/SCRIPTS/my_projects/fichier"$i"_"$date".txt"
done
