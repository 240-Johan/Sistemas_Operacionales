
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
# FCFS
![Diagrama de Grantt FCFS](https://github.com/240-Johan/Sistemas_Operacionales/blob/main/Taller08/Diagrams/FCFS.png?raw=true)

# FCFS
![Diagrama de Grantt SFJ](https://github.com/240-Johan/Sistemas_Operacionales/blob/main/Taller08/Diagrams/SJF.png?raw=true)

# Prioridades
![Diagrama de Grantt Prioridades](https://github.com/240-Johan/Sistemas_Operacionales/blob/main/Taller08/Diagrams/Prioridades.png?raw=true)

# RR
![Diagrama de Grantt RR](https://github.com/240-Johan/Sistemas_Operacionales/blob/main/Taller08/Diagrams/RR.png?raw=true)


### 6. Cual es el tiempo de ejecución de cada proceso para cada algoritmo?
### Rta:

| Proceso | FCFS | SJF | Prioridades | RR |
| ------- | ---- | --- | ----------- |--- |
| $p_1$   | 10   | 5   | 10          | 10 | 
| $p_2$   | 11   | 1   | 11          | 1  |
| $p_3$   | 13   | 3   | 12          | 2  |
| $p_4$   | 14   | 2   | 14          | 3  |
| $p_5$   | 19   | 4   | 19          | 7  |

### 7. Cual es el tiempo de espera de cada proceso para cada algoritmo?
### Rta:
# FCFS
| Proceso | Tiempo de Ráfaga | Tiempo de espera |
| ------- | ---------------- | ---------------- |
| $p_1$   | 10               | 0                |
| $p_2$   | 11               | 10               |
| $p_3$   | 13               | 11               |
| $p_4$   | 14               | 12               |
| $p_5$   | 19               | 9                |

## **SJF**
| Proceso | Tiempo de Ráfaga | Tiempo de espera |
| ------- | ---------------- | ---------------- |
| $p_1$   | 5                | 0                |
| $p_2$   | 1                | 0                |
| $p_3$   | 3                | 9                |
| $p_4$   | 2                | 12               |
| $p_5$   | 4                | 0                |

## **Prioridades**
| Proceso | Tiempo de Ráfaga | Tiempo de espera |
| ------- | ---------------- | ---------------- |
| $p_1$   | 10               | 3                |
| $p_2$   | 11               | 0                |
| $p_3$   | 12               | 13               |
| $p_4$   | 14               | 17               |
| $p_5$   | 19               | 0                |


## **RR**
| Proceso | Tiempo de Ráfaga | Tiempo de espera |
| ------- | ---------------- | ---------------- |
| $p_1$   | 10               | 5                |
| $p_2$   | 1                | 0                |
| $p_3$   | 2                | 10               |
| $p_4$   | 3                | 11               |
| $p_5$   | 7                | 8                |

### 8. Que algoritmo puede dar lugar a bloqueos indefinidos?
### Rta:
   * El algoritmo que puede dar lugar a bloqueos indefinidos es el algoritmo de planificación por prioridades sin desalojo, ya que, si llega un proceso con una prioridad más alta que el proceso en ejecución, este último se bloquea hasta que el primero termine. Si el proceso con mayor prioridad nunca termina o tiene ráfagas de CPU muy largas, el proceso bloqueado puede quedar en espera indefinidamente. Este problema se conoce como inanición o hambruna y se puede evitar usando una política de desalojo o asignando prioridades dinámicas que cambien según el tiempo de espera.

### 9. Considere un sistema que implementa una planificación por colas multinivel. Que estrategia puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario?
### Rta:
   * En un sistema de planificación por colas multinivel, existen varias estrategias que una computadora puede utilizar para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario. Algunas de estas estrategias incluyen:

       * Asignación de prioridades: la computadora puede asignar prioridades más altas a los procesos del usuario para que sean atendidos antes que los procesos del sistema. Esto asegura que los procesos del usuario tengan acceso preferencial a la CPU.

       * Asignación de cuotas de tiempo: la computadora puede asignar cuotas de tiempo más grandes a los procesos del usuario que a los procesos del sistema. Esto garantiza que los procesos del usuario tengan más tiempo de CPU para completar sus tareas.

       * Reducción de la cantidad de procesos del sistema: la computadora puede reducir la cantidad de procesos del sistema para liberar más recursos de CPU para los procesos del usuario.

       * **Limitación de los recursos de los procesos del sistema:** la computadora puede limitar los recursos asignados a los procesos del sistema para que no compitan con los procesos del usuario por los recursos de CPU.
