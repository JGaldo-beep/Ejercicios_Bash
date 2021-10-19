#!/bin/bash
echo "Bienvenido"
echo "Empieza el contenteo de los ficheros y directorios..."

directorios=0
ficheros=0

if [[ $(whoami) = "root" ]];then
  read -p "Carpeta que desea mandar todos los ficheros del /etc: " carpeta
  mkdir $carpeta #Creando la carpeta
  for file in $(ls /etc)
  do
    if [[ -d "/etc/"$file ]]; then
      let directorios=$directorios+1
    else
      let ficheros=$ficheros+1
      cp "/etc/"$file $carpeta"/"$file
    fi
  done
else
  echo "Debes ser root.."
fi

echo "En total el fichero /etc tiene $directorios directorios"
echo "En total el fichero /etc tiene $ficheros ficheros"
