#!/bin/bash

read -p "Introduce una nota de forma numerica: " nota
if [ $nota -le 4 ];then
	echo "Usted a Suspendido"

elif [ $nota -ge 9 ];then
	echo "Usted tiene un Sobresaliente"

else
	echo "Usted esta Aprobado"
fi
