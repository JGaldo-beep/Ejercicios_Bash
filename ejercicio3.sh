#!/bin/bash

if [[ -z $1 ]]; then
  echo "Necesitas pasar un argumento con la nota."
elif [[ $1 -lt 61 ]]; then
  echo "$1 es mala nota! Repobraste!"
elif [[ $1 -ge 61 && $1 -le 85 ]]; then
  echo "$1 es nota de aprobacion"
elif [[ $1 -gt 85 ]]; then
  echo "$1 es re buena nota. Felicidades!"
fi
