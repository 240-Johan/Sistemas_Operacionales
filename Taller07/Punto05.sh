#!/bin/bash

# Verifica si el número de argumentos es diferente de 2, si es así, muestra un mensaje de error y finaliza la ejecución del script.
if [ "$#" -ne 2 ]; then
    echo "Por favor, pase dos archivos como argumentos."
    exit 1
fi

file1="$1"
file2="$2"


echo "Tipo de archivo de $(file "$file1")"
echo "Tipo de archivo de $(file "$file2")"

# Compara los archivos byte por byte utilizando el comando "cmp". Si son iguales, muestra un mensaje indicando que son iguales, de lo contrario, muestra un mensaje indicando que son diferentes.
if cmp -s "$file1" "$file2"; then
    echo "Los archivos son iguales a nivel de bytes."
else
    echo "Los archivos son diferentes a nivel de bytes."
fi

# Compara los archivos bit a bit utilizando el comando "cmp" con la opción "-b".
cmp -b $file1 $file2

echo "COMPARACIÓN DE ARCHIVOS:"

# Utiliza el comando "diff" con la opción "-u" para mostrar las diferencias entre los archivos de una manera más legible para los humanos.
diff -u "$file1" "$file2"
