#!/usr/bin/env bash

# Comprobamos que recibimos un parámetro
if [ $# -eq 0 ]; then
  echo "Se necesita un argumento con el directorio a procesar"
  exit 1
fi

# Obtenemos una lista de los ficheros .txt del directorio
files=$(find $1 -name "*.txt")

# Contamos cuantos archivos hay
num_files=$(echo $files | wc -w)

# Borramos los archivos
rm $files

# Mostramos un mensaje con el número de archivos borrados
echo "Se han borrado $num_files ficheros de tipo .txt"
