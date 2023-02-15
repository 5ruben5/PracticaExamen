#!/bin/bash
# Script para calcular el número de suspensos y aprobados que hay en notas.txt

if [ -f notas.txt ]; then 
	echo "El archivo notas.txt existe."
else 
	echo "El archivo notas.txt no existe."
	exit
fi

# Contamos el número de suspensos
suspensos=0
while read line
do
    nota=$(echo $line | awk {'print $3'})
    if [ $nota -lt 5 ]; then
        suspensos=$((suspensos+1))
    fi
done < notas.txt

# Contamos el número de aprobados
aprobados=0
while read line
do
    nota=$(echo $line | awk {'print $3'})
    if [ $nota -ge 5 ]; then
        aprobados=$((aprobados+1))
    fi
done < notas.txt

echo "Número de suspensos: $suspensos"
echo "Número de aprobados: $aprobados"
