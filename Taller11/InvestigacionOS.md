## Memoria Principal
## Taller de Investigacion 11


### 1. Explique la diferencia entre los conceptos de fragmentación interna y externa.
### Rta:
Para recordar brevemente, la fragmentación interna es el espacio de almacenamiento que permanece sin usar entre los bloques de memoria asignados, mientras que la fragmentación externa son los agujeros entre los bloques contiguos que son muy pequeños para atender una solicitud 1.

La fragmentación interna ocurre cuando se asigna una memoria más grande a un programa en lugar de la requerida. Por otro lado, la fragmentación externa es el tipo de espacio libre que se forma entre bloques de memoria no contagiosos

### 2. ¿En que forma el editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria?
### Rta:
Durante este proceso, el editor de montaje (cargador) reasigna las direcciones reubicables a direcciones absolutas. Los programas de usuario pasan por varios pasos antes de ejecutarse y las direcciones pueden representarse de diferentes formas. Los compiladores se encargan de reasignar estas direcciones simbólicas a direcciones reubicables. El cargador reasigna las direcciones reubicables a direcciones absolutas. Esto significa que el cargador cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria al asignarles direcciones físicas en la memoria durante la carga del programa.

### 3. ¿Que información debe pasar el compilador al editor de montaje para facilitar el acoplamiento de memoria de éste?
### Rta:
El compilador facilita el proceso de acoplamiento de memoria al permitir que el editor de montaje resuelva las referencias de memoria correctamente y asigne los elementos en las ubicaciones de memoria adecuadas. Esto es fundamental para garantizar que el programa se ejecute correctamente y aproveche eficientemente los recursos de memoria disponibles.

### 4. En el siguiente orden, se tienen cinco particiones de memoria de 100 KB, 500 KB, 200 KB, 300 KB, y 600 KB. ¿Como situarían en memoria una serie de procesos de 212 KB, 417 KB, 112 KB y 426 KB en ese orden con los algoritmos de primer ajuste, mejor ajuste y peor ajuste? ¿Que algoritmo hace el uso más eficiente de la memoria?
### Rta:
### **Primer ajuste:**  Se asigna el primer bloque libre que sea suficiente para el proceso.

| Proceso | Tamaño | Bloque      |
| ------- | ------ | ----------- |
| 1       | 212    | 2           |
| 2       | 417    | 5           |
| 3       | 112    | 2           |
| 4       | 426    | No asignado |

### **Mejor ajuste:** Se asigna el bloque libre más pequeño que sea suficiente para el proceso.

| Proceso | Tamaño | Bloque |
| ------- | ------ | ------ |
| 1       | 212    | 4      |
| 2       | 417    | 2      |
| 3       | 112    | 3      |
| 4       | 426    | 5      |

### **Peor ajuste:** Se asigna el bloque libre más grande que sea suficiente para el proceso.

| Proceso | Tamaño | Bloque      |
| ------- | ------ | ----------- |
| 1       | 212    | 5           |
| 2       | 417    | 2           |
| 3       | 112    | 5           |
| 4       | 426    | No asignado |

En términos de eficiencia de memoria, el algoritmo de primer ajuste muestra un uso más eficiente en este escenario particular. Después de asignar los procesos, queda un total de 174 KB de espacio libre en memoria. En comparación, el algoritmo de mejor ajuste deja 0 KB de espacio libre, mientras que el algoritmo de peor ajuste deja 83 KB de espacio libre.

### 5. La mayoría de OS permiten a los programas asignar más memoria a su espacio de direcciones durante la ejecución. ¿Que se necesitaría para soportar la asignación dinámica de memoria en los siguientes esquemas?
#### 1. Asignación contigua de memoria.
#### 2. Segmentación pura.
#### 3. Paginación pura.
### Rta:

1. **Asignación contigua de memoria:** La asignación de memoria contigua es un método de asignación de memoria en el que los bloques de memoria se asignan en un trozo único y continuo. Este método se utiliza normalmente cuando es necesario almacenar grandes cantidades de datos en la memoria, o cuando se debe acceder a los datos de forma secuencial.
2. **Segmentación pura:** La segmentación pura se refiere al manejo de bloques de tamaño variable en memoria virtual y la conversión de estos segmentos a memoria real. Se utilizan dos conceptos para tal conversión: número de segmento y desplazamiento dentro del segmento.
3. **Paginación pura:** La paginación pura en el manejo de memoria consiste en que el sistema operativo divide dinámicamente los programas en unidades de tamaño fijo (generalmente múltiplos de 1 kilobyte) los cuales va a manipular de RAM a disco y viceversa [^10^].

### 6. Compare los esquemas de organización de la memoria principal basados en una asignación continua de memoria, en una segmentación pura y una paginación pura con respecto a:
#### 1. Fragmentación externa.
#### 2. Fragmentación interna.
#### 3. Capacidad de compartir código.
### Rta:
   * **Fragmentación externa:** La asignación continua de memoria produce una alta fragmentación externa, ya que deja huecos entre los bloques contiguos que son muy pequeños para atender una solicitud. La segmentación pura también produce fragmentación externa, pero menor que la asignación continua, ya que permite asignar bloques de tamaño variable según el tamaño de los segmentos. La paginación pura no produce fragmentación externa, ya que permite asignar bloques de tamaño fijo (marcos de página) a las páginas sin importar su ubicación.

   * **Fragmentación interna:** La asignación continua de memoria produce una baja fragmentación interna, ya que asigna el espacio exacto que necesita el proceso. La segmentación pura también produce una baja fragmentación interna, ya que asigna el espacio exacto que necesita cada segmento. La paginación pura produce una alta fragmentación interna, ya que asigna bloques fijos (marcos de página) que pueden ser mayores que el tamaño de las páginas.

   * **Capacidad de compartir código:** La asignación continua de memoria no permite compartir código entre procesos, ya que cada proceso ocupa un espacio contiguo y exclusivo en la memoria. La segmentación pura permite compartir código entre procesos, ya que cada proceso tiene una tabla de segmentos que puede apuntar a segmentos compartidos en la memoria. La paginación pura también permite compartir código entre procesos, ya que cada proceso tiene una tabla de páginas que puede apuntar a marcos de página compartidos en la memoria.

### 7. En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad.
#### 1. ¿Por qué?
#### 2. ¿Como podía el OS permitir el acceso a otras zonas de memoria?
#### 3. ¿Por qué debería o por qué no debería?

   * ¿Por qué?:  En un sistema operativo con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad porque la memoria física se divide en porciones del mismo tamaño llamadas marcos o páginas físicas y cada página física se asigna a un proceso de forma exclusiva¹. Cada proceso tiene su propia tabla de páginas que mapea sus páginas lógicas a marcos de página físicos².

   * ¿Como podía el OS permitir el acceso a otras zonas de memoria?: 2. El sistema operativo podría permitir el acceso a otras zonas de memoria mediante el uso de técnicas como el intercambio de memoria o la asignación dinámica de memoria.

   * 3. ¿Por qué debería o por qué no debería? El sistema operativo debería controlar el acceso a la memoria para evitar problemas como la corrupción de datos o la interferencia entre procesos. Sin embargo, en algunos casos, puede ser necesario permitir el acceso compartido a ciertas áreas de memoria para permitir la comunicación entre procesos o para mejorar el rendimiento.

### 8. Compare el mecanismo de paginación con el de segmentación con respecto a la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas.

El mecanismo de paginación se compara con el de segmentación con respecto a la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas de la siguiente forma:

- En el mecanismo de paginación, las estructuras de producción de direcciones son las tablas de páginas, que contienen las correspondencias entre las páginas (unidades lógicas) y los marcos de página (unidades físicas). La cantidad de memoria requerida por las tablas de páginas depende del número de páginas que tenga cada proceso y del tamaño de cada entrada en la tabla. Por ejemplo, si un proceso tiene 1024 páginas y cada entrada ocupa 4 bytes, la tabla de páginas requerirá 4 KB de memoria.

- En el mecanismo de segmentación, las estructuras de producción de direcciones son las tablas de segmentos, que contienen las correspondencias entre los segmentos (unidades lógicas) y los bloques de memoria (unidades físicas). La cantidad de memoria requerida por las tablas de segmentos depende del número de segmentos que tenga cada proceso y del tamaño de cada entrada en la tabla. Por ejemplo, si un proceso tiene 16 segmentos y cada entrada ocupa 8 bytes, la tabla de segmentos requerirá 128 bytes de memoria.

En general, el mecanismo de paginación requiere más memoria que el mecanismo de segmentación para las estructuras de producción de direcciones, ya que el número de páginas suele ser mayor que el número de segmentos y el tamaño de cada entrada suele ser similar o mayor. Sin embargo, esto puede variar según el diseño específico del sistema operativo y la organización de la memoria.


### 9. Considere la siguiente tabla de segmento:
![Asi de grandes, Peter!](https://github.com/240-Johan/Sistemas_Operacionales/blob/main/Taller11/images/img_T11.png)

### ¿Cuales son las direcciones físicas para las siguientes direcciones lógicas?
#### 1. 0. 430
#### 2. 1. 10
#### 3. 2. 500
#### 4. 3. 400
#### 5. 4. 112

### Rta:
La dirección lógica se compone de un número de segmento y un desplazamiento dentro del segmento. La dirección física se obtiene sumando la base del segmento al desplazamiento, siempre que el desplazamiento sea menor que la longitud del segmento. Si el desplazamiento es mayor que la longitud del segmento se produce una violación de segmento y el acceso a memoria es inválido.

Aplicando este método a las direcciones lógicas dadas y a la tabla de segmentos, se obtienen las siguientes direcciones físicas:
a. 0.430: La dirección lógica corresponde al segmento 0 con un desplazamiento de 430. La base del segmento 0 es 219 y su longitud es 600. Como el desplazamiento es menor que la longitud, se suma la base al desplazamiento y se obtiene la dirección física: 219 + 430 = 649.

b. 1.10: La dirección lógica corresponde al segmento 1 con un desplazamiento de 10. La base del segmento 1 es 2300 y su longitud es 14. Como el desplazamiento es menor que la longitud, se suma la base al desplazamiento y se obtiene la dirección física: 2300 + 10 = 2310.

c. 2.500: La dirección lógica corresponde al segmento 2 con un desplazamiento de 500. La base del segmento 2 es 90 y su longitud es 100. Como el desplazamiento es mayor que la longitud, se produce una violación de segmento y el acceso a memoria es inválido.

d. 3.400: La dirección lógica corresponde al segmento 3 con un desplazamiento de 400. La base del segmento 3 es 1327 y su longitud es 580. Como el desplazamiento es menor que la longitud, se suma la base al desplazamiento y se obtiene la dirección física: 1327 + 400 = 1727.

e. 4.112: La dirección lógica corresponde al segmento 4 con un desplazamiento de 112. La base del segmento 4 es 1952 y su longitud es 96. Como el desplazamiento es mayor que la longitud, se produce una violación de segmento y el acceso a memoria es inválido.
