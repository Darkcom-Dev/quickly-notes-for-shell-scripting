#!/bin/bash

# Este es un comentario de linea unica.

: '
Este es un comentario de multiple linea
Veamos a ver si es cierto '

cat << DELIM
Este script toma la variable exportada de Script_comunications
y lo imprime desde este script
DELIM

source Script_comunications.sh
echo $MYLOC
