#!/bin/bash
# Calculando el número de lineas en el archivo notas.txt

resultado=$(wc -l < notas.txt)
resultadoFinal=$((resultado - 1))

echo "El número de matriculas en el archivo notas.txt es: $resultadoFinal"
