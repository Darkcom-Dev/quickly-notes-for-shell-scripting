#!/bin/bash

# Este es un comentario de linea unica.

: '
Este es un comentario de multiple linea
Veamos a ver si es cierto '

cat << DELIM
Este script usa varios ejemplos de entrada de informacion.
Como parametro ingrese el nombre de un archivo txt
Luego este pequeño programa le pedirá que ingrese su
nombre y apellido para saludarlo.
DELIM

# Redireccionar a un archivo

# Esto es similar a cat >> file.txt

#~ echo "Mensaje enviado desde un script en bash" >> file_redirect.txt

# --------------------- Standard Input

echo $0 # La variable cero, siempre será el nombre de la aplicacion
args=("$@") # Esta es la manera de hacer una tupla como **args de python
echo ${args[0]} ${args[1]} # Esta es la manera como se accede a cada elemento de la tupla
echo $@ # Esto imprime todos los argumentos que hemos introducido
echo $# # Esto da el Lenght o conteo total de argumentos

# ====================== 
# Esto lee cada linea de un archivo de texto pasado como parametro
while read line
do
	echo "$line"
done < "${1:-/dev/stdin}" # Esta linea es la que hace la magia

# ======================
echo "Ingrese su primer nombre"
read fname
echo "Ingrese su primer apellido"
read lname
echo "Hola $fname $lname"
