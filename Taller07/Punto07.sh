#!/bin/bash

# Nombre del archivo de registro
LOGFILE="system.log"

# Se obtiene la fecha en formato "año-mes-día hora:minutos:segundos" y lo almacena en la variable "DATE".
DATE=$(date "+%Y-%m-%d %H:%M:%S")

# Se obtiene el nombre del host y lo almacena en la variable "HOSTNAME".
HOSTNAME=$(hostname)

# Se obtiene la carga promedio del sistema y lo almacena en la variable "LOAD". 
# La salida del comando "uptime" se filtra mediante el comando "awk" para obtener la carga promedio.
LOAD=$(uptime | awk -F'[a-z]:' '{ print $2 }')

# Se obtiene el porcentaje de memoria libre en el sistema y lo almacena en la variable "FREE_MEM". 
# La salida del comando "free -m" se filtra mediante el comando "awk" para obtener el porcentaje de memoria libre.
FREE_MEM=$(free -m | awk 'NR==2{printf "%.2f%%\t\t", $3*100/$2 }')

# Se agrega una línea al archivo de registro con la fecha, el nombre del host, la carga promedio y el porcentaje de memoria libre.
echo "$DATE $HOSTNAME Load: $LOAD Free memory: $FREE_MEM" >> "$LOGFILE"
