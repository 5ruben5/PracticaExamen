#!/bin/bash

echo "Introduce el número de llamadas que has realizado: "
read num_llamadas

if [ $num_llamadas -gt 50 ]
then
	echo "La tarifa 1 es la más conveniente para ti, ya que el coste es de 100€ por llamadas ilimitadas."
else
	if [ $num_llamadas -gt 25 ]
	then
		echo "La tarifa 2 es la más conveniente para ti, ya que el coste es de 50€ + 1€ por cada llamada."
		coste_tarifa2=$((50+num_llamadas))
		echo "En total, el coste de la tarifa 2 es de $coste_tarifa2€."
	else
		echo "La tarifa 3 es la más conveniente para ti, ya que el coste es de 20€ + 2€ por cada llamada."
		coste_tarifa3=$((20+num_llamadas*2))
		echo "En total, el coste de la tarifa 3 es de $coste_tarifa3€."
	fi
fi
