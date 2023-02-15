#!/bin/bash
# Script para contar las lineas de un archivo

# contar el número de lineas
lineas=$(wc -l < notas.txt)

echo "El archivo notas.txt tiene $lineas matriculas"
