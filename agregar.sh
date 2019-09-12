#!/bin/bash

var=`cut -d: -f1 /etc/passwd | grep $1`
if [ -z $var ] 
	then 
		sudo useradd $1
		cut -d: -f1 /etc/passwd
	else
		echo "el usuario $1  ya existe"
fi

# -z muestra si es vacio o no
