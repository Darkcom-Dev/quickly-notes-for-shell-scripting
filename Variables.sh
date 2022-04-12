#!/bin/bash

cat << DELIM
In this example, see how to declare a variable
DELIM

# for declare a var: `varName="Data"`
var="Hola mundo" # Separar con espacios esta variable genera errores
echo $var
# to use var, use "$" dollar character prefix to varName


# integer variable
num=10
echo $num # Show info in terminal screen

# Array or tuple
myArray=(10 20 15 82)
echo ${myArray[@]} # Show all values using "@" char
echo ${myArray[1]} # Show the value in position 1, in this case 20
echo ${#myArray[@]} # Show the count of all values
echo ${!myArray[@]} # Shoe the indices, but not values

# Delete value from array
unset myArray[2] # Delete value in position index 2
echo ${myArray[@]}

# Modifing or append a value in a index position
myArray[4]=44 # In this case has been a append new value in new index position
echo ${myArray[@]}
