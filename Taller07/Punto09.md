# Automatización con crontab


**Punto 09:** Automatice con crontab el script 7 y 8, el script 7 se debe ejecutar cada 5 minutos y el script 8 cada minuto.

1. Abrir la terminal y ejecutar el comando `crontab -e` para editar el archivo de configuración de crontab.
2. Agregar la siguiente línea al final del archivo para que el script `punto07.sh` se ejecute cada 5 minutos: 
*/5 * * * * /Taller07/punto07.sh
3. Agregar la siguiente línea al final del archivo para que el script `punto08.sh` se ejecute cada minuto: * * * * */Taller07/punto08.sh
4. Guardar y salir del archivo de configuración con `:wq`.


