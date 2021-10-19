#!/bin/bash

cd /home/jagu/Desktop
read -p "Como gustaria llamar a su directorio: " name
mkdir $name
cd $name
touch archivos{1..40}.txt
gzip archivos25.txt && gzip archivos29.txt
for file in $( ls )
do
  if [[ $file = *3* ]]; then
    destino=${file/.txt/.md}
    mv $file $destino
  fi
done
ls
