#!/bin/bash

read -p "Ingrese el nombre del fichero: " fichero
if [[ -e $fichero ]]; then
  propietario=`ls -l $fichero | awk '{print $2}'`
  echo "El propietario del fichero $fichero es $propietario"
  echo "El fichero $fichero ocupa " #Falta conocer el tamaño del fichero
else
  echo "El fichero $fichero no existe"
fi

