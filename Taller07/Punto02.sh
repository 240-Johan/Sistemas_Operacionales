#!/bin/bash

# Verifica si el número de argumentos es diferente de 4, si es así, muestra un mensaje de error y finaliza la ejecución del script.
if [ $# -ne 4 ]; then
    echo "Uso: $0 archivo permisos usuario grupo"
    exit 1
fi

# Almacena los argumentos en la variables "archivo", "permisos", "usuario", "grupo".
archivo=$1
permisos=$2
usuario=$3
grupo=$4

# Muestra un mensaje indicando que se mostrará el estado actual del archivo.
echo "Archivo antes de los cambios"
ls -la $archivo

# Utiliza el comando "chmod" para cambiar los permisos del archivo, utilizando el valor de la variable "permisos".
chmod $permisos $archivo

# Utiliza el comando "chown" para cambiar el propietario y el grupo del archivo, utilizando los valores almacenados en las variables "usuario" y "grupo", respectivamente.
chown $usuario:$grupo $archivo

# Muestra un mensaje indicando que se mostrará el nuevo estado del archivo.
echo "Archivo despues de los cambios"
ls -la $archivo
