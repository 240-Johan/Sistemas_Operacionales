#!/bin/bash

# Se verifica si se proporcionaron dos argumentos en la línea de comandos
if [ $# -ne 2 ]; then
  echo "Error: se requieren dos argumentos."
  echo "Uso: $0 archivo.log tamaño_maximo"
  exit 1
fi

# Se asigna los dos argumentos a variables
archivo=$1
tamaño_maximo=$2

# Se obtiene el tamaño actual del archivo en kilobytes y lo almacena en la variable "tamaño_actual"
tamaño_actual=$(du -k $archivo | awk '{print $1}')

# Se compara el tamaño actual con el tamaño máximo y comprime el archivo si es necesario
if [ $tamaño_actual -gt $tamaño_maximo ]; then
  gzip $archivo
  echo "El archivo $archivo ha sido comprimido con éxito."
else
  echo "El archivo $archivo no necesita ser comprimido."
fi
