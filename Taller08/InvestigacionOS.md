## Planificacion de la CPU
## Taller de Investigacion 08


### 1. Por qué es importante para un planificador diferenciar entre un programa limitado por I/O y por CPU?
### Rta:
   * Es importante que un planificador sepa diferenciar entre un programa limitado por I/O y por CPU para poder asignar los recursos adecuados a cada tipo de programa y lograr un mejor rendimiento y eficiencia en la ejecución de los mismos.
    

### 2. Como entran en conflicto en determinadas configuraciones la utilización de CPU y tiempo de respuesta?
 ### Rta:
   * la utilización de la CPU y el tiempo de respuesta pueden entrar en conflicto en sistemas en los que se requiere una alta velocidad de respuesta y una alta utilización de la CPU. En estos casos, se debe encontrar un equilibrio adecuado y tener en cuenta factores como el costo y la satisfacción del usuario al tomar decisiones sobre la asignación de recursos.
 

### 3. Como entran en conflicto en determinadas configuraciones el tiempo medio de procesamiento y tiempo máximo de espera?
### Rta:
   * El tiempo medio de procesamiento y el tiempo máximo de espera pueden entrar en conflicto, especialmente en sistemas en los que se realizan operaciones en lotes.
     * Un ejmplo es el sistema de procesamiento de imágenes, si el tiempo medio de procesamiento de una imagen es de 5 segundos y se establece un tiempo máximo de espera de 10 segundos, esto significa que si una imagen no se procesa dentro de los 10 segundos, se debe descartar o reprogramar para su procesamiento posterior. Si se intenta disminuir el tiempo máximo de espera a 5 segundos, las imágenes que tarden más de 5 segundos en procesarse se descartarán, lo que puede resultar en pérdida de datos.
     * Otro ejemplo es en sistemas de colas de atención al cliente, donde se establece un tiempo máximo de espera para atender a los clientes. Si se reduce el tiempo máximo de espera, puede aumentar la cantidad de clientes que abandonan la cola, lo que afecta negativamente la satisfacción del cliente. Si se aumenta el tiempo máximo de espera, puede aumentar el tiempo medio de atención al cliente, lo que también puede afectar la satisfacción del cliente.


### 4. Como entran en conflicto en determinadas configuraciones la utilización de los dispositivos I/O y la utilización de la CPU?
### Rta:
   * La utilización de los dispositivos I/O y la utilización de la CPU pueden entrar en conflicto, especialmente en sistemas donde la entrada/salida de datos es una parte fundamental del procesamiento.

   * Por ejemplo, en un servidor de bases de datos, si se está realizando una consulta que requiere una gran cantidad de datos, la CPU puede estar esperando a que se complete la operación de entrada/salida, lo que resulta en una baja utilización de la CPU. En este caso, es importante optimizar la entrada/salida de datos para minimizar el tiempo de espera y maximizar la utilización de la CPU.


### 5. Considere el siguiente conjunto de procesos, todos llegan al mismo tiempo en el orden del subíndice:

| Proceso | Tiempo de ráfaga | Prioridad |
| ------- | ---------------- | --------- |
| $p_1$   | 10               | 3         |
| $p_2$   | 1                | 1         |
| $p_3$   | 2                | 3         |
| $p_4$   | 1                | 4         |
| $p_5$   | 5                | 2         |

Dibuje el diagrama de Gantt para FCFS, SJF, por prioridades (# de prioridad baja = a alta prioridad) y RR (cuanto = 1).
### Rta:

