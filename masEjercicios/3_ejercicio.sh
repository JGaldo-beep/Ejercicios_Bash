#!/bin/bash

#Funcion
function verificacion()
{
  echo "Informacion del fichero $1:"
  if [[ -e $1 ]];then
    echo "El fichero '$1' exite"
    echo "El fichero '$1' tiene `wc -l $1` lineas"
    LS1=`ls -l $1`
    permiso1=${LS1:0:10}
    echo "Sus permisos son: $permiso1"
  else
    echo "El fichero '$1' no existe"
  fi

  echo -e "\n\nInformacion del fichero $2:"
  if [[ -e $2 ]];then
    echo "El fichero '$2' exite"
    echo "El fichero '$2' tiene `wc -l $2` lineas"
    LS2=`ls -l $2`
    permiso2=${LS2:0:10}
    echo "Sus permisos son: $permiso2"
  else
    echo "El fichero '$2' no existe"
  fi
}
if [[ $# -lt 2 ]];then
  echo "Error... Necesitas mandar dos parametros"
  exit 1
else
  verificacion $1 $2
fi
