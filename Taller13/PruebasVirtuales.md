## Interfaz de sistema de archivos
## Taller de Investigacion - Practico 13

### Herramienta:

**Stress-ng**
   * Es una herramienta de estrés y carga de trabajo diseñada para evaluar el rendimiento y la estabilidad del sistema.Un SysAdmin puede probar cualquiera de las siguientes herramientas para poner subsistemas dados bajo una carga específica. Uno puede hacer una prueba de estrés de la CPU en otro subsistema de Linux. Los casos en los que esto es útil incluyen aquellos en los que un administrador del sistema desea realizar actividades de ajuste, un programador de kernel o libc desea evaluar las posibilidades de denegación de servicio, probar sus sistemas completamente con carga alta y monitorear la salud y más. Esto también es útil para administradores de sistemas, constructores de sistemas y overclockers que desean probar su hardware bajo una carga alta y monitorear la estabilidad y el entorno térmico.

## CPU

**Comandos Utilizados para la evaluacion**
* **Comando evaluador de la CPU**
   *  **stress-ng --cpu 1 --timeout 10s --metrics-brief:**
      - **stress-ng:** Es el comando principal de la herramienta stress-ng.
      - **--cpu 1:** Esta opción indica que se generará carga de trabajo en la CPU utilizando un hilo de ejecución.
      - **--timeout 10s:** Especifica el tiempo de duración de la carga de trabajo en la CPU. En este caso, la carga se mantendrá durante 10 segundos.
      - **--metrics-brief:** Esta opción indica que se mostrarán métricas breves al finalizar la ejecución.

### **Analisis evaluador de la CPU**

Al analizar los resultados de las pruebas ejecutadas con los comandos de carga de trabajo en la CPU, podemos observar un comportamiento consistente y predecible en el rendimiento del sistema.

PRUEBA 1:
   *  Operaciones bogo: 2860
   *  Tiempo real transcurrido: 10.08 segundos
   *  Tasa de operaciones bogo por segundo: 283.72

PRUEBA 2:
   *  Operaciones bogo: 4178
   *  Tiempo real transcurrido: 10.00 segundos
   *  Tasa de operaciones bogo por segundo: 417.67

PRUEBA 3:
   *  Operaciones bogo: 4086
   *  Tiempo real transcurrido: 10.01 segundos
   *  Tasa de operaciones bogo por segundo: 408.32

PRUEBA 4:
   *  Operaciones bogo: 3979
   *  Tiempo real transcurrido: 9.90 segundos
   *  Tasa de operaciones bogo por segundo: 402.03

PRUEBA 5:
   *  Operaciones bogo: 3807
   *  Tiempo real transcurrido: 10.05 segundos
   *  Tasa de operaciones bogo por segundo: 378.85

En general, todas las pruebas mostraron una capacidad constante de realizar operaciones bogo, lo que indica que la carga de trabajo en la CPU se mantuvo estable durante el tiempo especificado. Las diferencias en el número de operaciones bogo pueden deberse a variaciones normales en el rendimiento del sistema.

El tiempo real transcurrido en cada prueba se mantuvo cerca del valor objetivo de 10 segundos, lo que indica que la carga de trabajo se mantuvo durante el período deseado en todas las ejecuciones.

La tasa de operaciones bogo por segundo, aunque varía ligeramente en cada prueba, se mantiene en un rango cercano. Esto sugiere que el rendimiento de la CPU fue consistente y estable bajo la carga de trabajo generada por el comando.

## MEMORIA

* **Comando evaluador de la memoria**
   *  **stress-ng --vm 1 --timeout 10s --metrics-brief**
      - **stress-ng:** Es el comando principal de la herramienta stress-ng.
      - **--vm 1:** Esta opción indica que se generará carga de trabajo en la memoria utilizando un hilo de ejecución.
      - **--timeout 10s:** Especifica el tiempo de duración de la carga de trabajo en la CPU. En este caso, la carga se mantendrá durante 10 segundos.
      - **--metrics-brief:** Esta opción indica que se mostrarán métricas breves al finalizar la ejecución.

### **Analisis evaluador de la Memoria**

Al comparar los resultados y analizar el comportamiento de las pruebas ejecutadas con el comando de carga de trabajo en la memoria (stress-ng --vm 1), podemos observar lo siguiente:

PRUEBA 1:
   *  Operaciones bogo: 76168
   *  Tiempo real transcurrido: 10.02 segundos
   *  Tasa de operaciones bogo por segundo: 7599.83

PRUEBA 2:
   *  Operaciones bogo: 323188
   *  Tiempo real transcurrido: 10.01 segundos
   *  Tasa de operaciones bogo por segundo: 32295.61

PRUEBA 3:
   *  Operaciones bogo: 333428
   *  Tiempo real transcurrido: 11.56 segundos
   *  Tasa de operaciones bogo por segundo: 28834.45

PRUEBA 4:
   *  Operaciones bogo: 324330
   *  Tiempo real transcurrido: 10.04 segundos
   *  Tasa de operaciones bogo por segundo: 32304.44
   *  
PRUEBA 5:
   *  Operaciones bogo: 324287
   *  Tiempo real transcurrido: 10.01 segundos
   *  Tasa de operaciones bogo por segundo: 32412.31


Al comparar los resultados, podemos observar que el número de operaciones bogo varía significativamente en cada prueba, lo que sugiere que la carga de trabajo en la memoria no es consistente. Este comportamiento puede ser atribuido a la naturaleza aleatoria de las pruebas de estrés y a la forma en que el sistema gestiona la asignación y liberación de recursos.

El tiempo real transcurrido en cada prueba se mantiene cerca del valor objetivo de 10 segundos, lo que indica que la carga de trabajo se mantuvo durante el período deseado en todas las ejecuciones.

La tasa de operaciones bogo por segundo varía considerablemente en cada prueba, lo que indica que el rendimiento de la memoria fluctúa dependiendo de las condiciones de carga. Las pruebas con tasas más altas indican un mejor rendimiento de la memoria en términos de la cantidad de operaciones que se pueden realizar por segundo.

En conclusión, el comportamiento de las pruebas de carga de trabajo en la memoria muestra una variabilidad significativa en el rendimiento y la capacidad de respuesta del sistema. Esto puede ser atribuido a la gestión dinámica de la memoria y a la forma en que el sistema opera bajo condiciones de estrés.

## PROCESOS Y HILOS
* **Comando evaluador de los procesos y hilos**
   *  **stress-ng --cpu 1 --io 1 --vm 1 --hdd 1 --timeout 10s --metrics-brief**
       - **stress-ng:** Es el comando principal de la herramienta stress-ng.
      - **--cpu 1:** Esta opción indica que se generará carga de trabajo en la CPU utilizando un hilo de ejecución.
      - **--io 1:** Esta opción indica que se generará carga de trabajo en la E/S del sistema.
      - **--hdd 1:** Esta opción indica que se generará carga de trabajo en el disco duro del sistema.
      - **--vm 1:** Esta opción indica que se generará carga de trabajo en la memoria utilizando un hilo de ejecución.
      - **--timeout 10s:** Especifica el tiempo de duración de la carga de trabajo en la CPU. En este caso, la carga se mantendrá durante 10 segundos.
      - **--metrics-brief:** Esta opción indica que se mostrarán métricas breves al finalizar la ejecución.
### **Analisis evaluador de Procesos y Hilos**

Al analizar los resultados y el comportamiento de las pruebas adicionales ejecutadas con diferentes cargas de trabajo (CPU, IO, VM, HDD), se pueden observar las siguientes métricas:

PRUEBA 1:
   *  Operaciones bogo de CPU: 2171
   *  Operaciones bogo de IO: 4
   *  Operaciones bogo de VM: 321741
   *  Operaciones bogo de HDD: 6467
   *  Tiempo real transcurrido: 10.36 segundos


PRUEBA 2:
   *  Operaciones bogo de CPU: 820
   *  Operaciones bogo de IO: 338
   *  Operaciones bogo de VM: 77811
   *  Operaciones bogo de HDD: 11937
   *  Tiempo real transcurrido: 10.26 segundos

PRUEBA 3:
   *  Operaciones bogo de CPU: 879
   *  Operaciones bogo de IO: 31621
   *  Operaciones bogo de VM: 82944
   *  Operaciones bogo de HDD: 13601
   *  Tiempo real transcurrido: 10.27 segundos

PRUEBA 4:
   *  Operaciones bogo de CPU: 1310
   *  Operaciones bogo de IO: 39354
   *  Operaciones bogo de VM: 281844
   *  Operaciones bogo de HDD: 13962
   *  Tiempo real transcurrido: 10.45 segundos

PRUEBA 5:
   *  Operaciones bogo de CPU: 190
   *  Operaciones bogo de IO: 2
   *  Operaciones bogo de VM: 54891
   *  Operaciones bogo de HDD: 13565
   *  Tiempo real transcurrido: 5.68 segundos

En estas pruebas, se utilizaron diferentes cargas de trabajo para evaluar el rendimiento del sistema en términos de operaciones bogo por segundo.

Al analizar los resultados, podemos observar que la cantidad de operaciones bogo varía dependiendo de la carga de trabajo específica. En general, las pruebas con cargas de trabajo más intensivas, como la CPU y el HDD, tienden a generar una mayor cantidad de operaciones bogo. Por otro lado, las pruebas con cargas de trabajo menos intensivas, como el IO, muestran una cantidad relativamente baja de operaciones bogo.

El tiempo real transcurrido se mantiene cerca del objetivo de 10 segundos en todas las pruebas, lo que indica que se aplicó la carga de trabajo durante el tiempo deseado.

En conclusión, el rendimiento del sistema varía según el tipo de carga de trabajo. Las pruebas con cargas de trabajo intensivas en CPU y HDD tienden a generar una mayor cantidad de operaciones bogo, mientras que las cargas de trabajo menos intensivas, como el IO, generan una cantidad menor. Estos resultados sugieren que el sistema responde de manera diferente a diferentes tipos de cargas de trabajo y pueden indicar cómo se distribuye y gestiona la carga en los recursos del sistema.
