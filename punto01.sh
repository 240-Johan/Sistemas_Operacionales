#!/bin/bash

mkdir resultados
cd resultados

touch archivo1.txt
touch archivo2.txt

echo "18 2 26 4 33" > archivo1.txt
echo "1 7 33 38 120" > archivo2.txt

echo "Archivos:"
ls -l
cat archivo1.txt
cat archivo2.txt
