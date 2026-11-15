#!/bin/bash

date=$(date '+%Y-%m-%d')

find /home/admintech/SCRIPTS/my_projects -type f -name "fichier*_${date}_*.txt" -exec mv {} /home/admintech/SCRIPTS/archives/ \;

