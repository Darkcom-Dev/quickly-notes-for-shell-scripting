#!/bin/bash

# Este es un comentario de linea unica.

: '
Este es un comentario de multiple linea
Veamos a ver si es cierto '

cat << DELIM
Este script muestra el uso de varias salidas
Tambien muestra salidas de error

Por favor verifique los archivos: 
lista.txt
error.txt
output.txt
DELIM

# stdout
ls -l 1>lista.txt

# stderr
lsl -l 2>error.txt

bash stdout_single.sh >output.txt 2>&1

