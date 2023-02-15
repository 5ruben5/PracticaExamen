#!/bin/bash
#script para mostrar listado de pares e impares de un fichero

pares=0
impares=0

echo "Listado de numeros pares"
echo ""

while read linea
do
	if [ `expr $linea % 2` -eq 0 ]
	then
		echo "$linea"
		pares=`expr $pares + 1`
	fi
done < numeros.txt

echo ""
echo "Total de numeros pares: $pares"
echo ""
echo "Listado de numeros impares"
echo ""

while read linea
do
	if [ `expr $linea % 2` -ne 0 ]
	then
		echo "$linea"
		impares=`expr $impares + 1`
	fi
done < numeros.txt

echo ""
echo "Total de numeros impares: $impares"
