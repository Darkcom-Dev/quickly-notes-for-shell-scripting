#!/bin/bash

# Este es un comentario de linea unica.

: '
Este es un comentario de multiple linea
Veamos a ver si es cierto '

cat << DELIM
Functions in shell scripting
use keyword "function" myFunc(){}
DELIM

# ----- Funciones ------------------

# Declaracion de una funcion simple
function say_hello(){
	echo "Hello world"
	}
	
# Llamando a la funcion
say_hello

# Funcion con argumento
function intro_an_arg(){
	echo "Hello $1"
	}
	
intro_an_arg "Braulio"

# Funcion con multiples argumentos
function multi_args(){
	echo "Arguments are: $1 $2 $3 $4"
	}

multi_args 1 2 3 4

# Funcion con retorno
function sum(){
	sum=$(expr $1 + $2)
	echo $sum
	}
	
addition=$(sum 1 2)
echo "La suma es: $addition" 
