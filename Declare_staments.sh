#!/bin/bash

# Este es un comentario de linea unica.

: '
Este es un comentario de multiple linea
Veamos a ver si es cierto '

cat << DELIM
No aprendi nada de declare_statments, hay que investigarlo por internet
La proxima linea es como crear una variable array "Una tupla"
DELIM


# Arrays
myArray=("foo", "var", "bar", "car")
echo "${myArray[@]}" # "@" expone todos los indices
echo "${myArray[1]}" # imprime el indice 1
echo "${!myArray[@]}" # imprime los indices y no los valores
echo "${#myArray[@]}" # imprime el conteo de los elementos (count o lenght)

# ----- borrar elementos de un array
unset myArray[2]
echo "${myArray[@]}"
# ----- Asigna un nuevo elemento
myArray[2]="newBar"
echo "${myArray[@]}"

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
