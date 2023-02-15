#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Error: Debes pasar dos parámetros"
  exit 1
fi

nombre=$1
modulo=$2

calificacion=`cat notas.txt | grep -E "$nombre $modulo [0-9]+" | awk '{print $3}'`

if [ -z "$calificacion" ]; then
  echo "Error: No se encontró la calificación"
  exit 1
fi

echo "La calificación de $nombre en el módulo $modulo es $calificacion"
