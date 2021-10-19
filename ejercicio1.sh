#!/bin/bash

echo "Bienvenido al servidor `hostname`"
echo "Esta maquina esta corriendo con kernel `uname -r` sobre una arquitectura `uname -m`"
fecha=`date +%d-%m-%Y` #La fecha en formato dia-mes-año
hora=`date +%T` #La hora en formato hora:minutos:segundos
echo "Hoy es $fecha y la hora es $hora"
cantidadProcesos=`ps aux | wc -l`
echo "En este momentos se están ejecutando $cantidadProcesos procesos paralelos"
