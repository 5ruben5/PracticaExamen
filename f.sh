#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Error: debe pasar un nombre por parámetro."
	exit 1
fi

grep -E "^$1" notas.txt | cut -d' ' -f3 | grep -q 'A'

if [ $? -ge 5 ]; then
	echo "Todas las materias aprobadas"
else
	echo "No todas las materias aprobadas"
fi
