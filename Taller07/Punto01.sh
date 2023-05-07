#!/bin/bash

# cat para mostrar el contenido del archivo .bash_history 
# bash_history almacena la lista de comando ejecutados en el terminal
# sort para ordenar los comandos alfabéticamente
# uniq -c para eliminar los comandos repetidos y contar cuántas veces aparecen
# sort de nuevo para ordenar los comandos por frecuencia (de menor a mayor)
# Redirigir la salida al archivo history.txt
ejecutados en la terminal
cat ~/.bash_history | sort | uniq -c | sort > "history.txt"

# Imprime el número de comandos en el historial
echo "El número de comandos en el historial es:"
wc -l <  history.txt

# Imprime los comandos
echo "Los comandos son:"
cat history.txt