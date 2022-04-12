#!/bin/bash

# Este es un comentario de linea unica.

: '
Este es un comentario de multiple linea
Veamos a ver si es cierto '

cat << DELIM
Agrega un texto
multiples lineas de texto
Esto es un Here Docs como un tipo de documentación
DELIM

# Chequea si existe o no un directorio

echo "Ingrese el nombre de un directorio: "
read dir
if [ -d $dir ] # -d para directorios
then
	echo "El directorio existe"
else
	echo "El directorio no existe"
fi

# Chequea si existe un fichero
echo "Ingrese el nombre de un archivo o fichero"
read fname
if [ -f $fname ] # -f para ficheros
then
	echo "El archivo existe"
else
	echo "Archivo no encontrado"
fi

# Agrega datos a un archivo
if [ -f $fname ] # -f para ficheros
then
	echo "Agregue algo de texto al archivo $fname"
	read linetext
	echo $linetext >> $fname
else
	echo "Archivo no encontrado"
fi

# Leer un archivo de texto linea por linea
read fname
if [ -f $fname ] # -f para ficheros
then
	echo "Que archivo de texto desea leer?"
	while IFS= read -r line
	do
		echo $line
	done < $fname
else
	echo "Archivo no encontrado"
fi

: '
# Elimina un archivo

if [ -f $fname ] # -f para ficheros
then
	echo "El archivo $fname a sido borrado"
	rm $fname
fi '
