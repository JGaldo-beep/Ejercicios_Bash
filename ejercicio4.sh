#!/bin/bash

read -p "Ingrese el nombre del fichero: " fichero
if [[ -e $fichero ]]; then
  propietario=`ls -l $fichero | awk '{print $3}'`
  peso=`ls -l $fichero | awk '{print $5}'`
  echo "El propietario del fichero $fichero es $propietario"
  echo "El fichero '$fichero' ocupa $peso bytes " #Falta conocer el tamaño del fichero
else
  echo "El fichero $fichero no existe"
fi

