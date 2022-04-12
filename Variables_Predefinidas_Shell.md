### Shells y sus características:
Bourne shell *.sh
C Shell *.csh
Superset de C Shell *.tcsh
Korn Shell *.ksh
Bourne again Shell *.bash

### Tipos de shell
- login shell
- non-login shell

## Invocación del shell
/etc/profile ->	~/.bash_profile ->	~/.bashrc ->	/etc/.bashrc
~/.bash_logout

### ¿Cuantos Shells hay instalados en mi sistema Linux?
cat /etc/shells

># /etc/shells: valid login shells
/bin/sh
/bin/bash
/bin/rbash
/bin/dash

### ¿Que shell estoy usando actualmente? Variables Globales
echo $0
>>> bash
echo $SHELL
>>> /bin/bash
echo $PATH
>>> /home/darkcom/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

/home/darkcom/.local/bin:
/usr/local/sbin:
/usr/local/bin:
/usr/sbin:
/usr/bin:
/sbin:
/bin:
/usr/games:
/usr/local/games:
/snap/bin

printenv = Con este comando imprime todas las variables de entorno, que luego puedo usar en los scripts de shell.

Hay dos tipos de variable, las variables de Shell, que solo afecta al shell que en el momento estés usando y la variables de entorno que afecta a todos los shells y todo el sistema, con printenv consultas todas las variables del entorno.

Las variables de shell, son las que uno como usuario puede asignar dentro de un script:
var = abc
echo $var
>>> abc

### Comentarios

"# Comentario de una sola linea"

: '
Este seria un comentario
multilinea
Esto es algo que debo probar
 '

También hay algo llamado HereDocs (Parece que sirve para documentar código)
"cat << DELIM
Agrege su texto
multiples lineas de texto
DELIM"

