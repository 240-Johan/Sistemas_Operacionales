## Memoria Virtual
## Taller de Investigacion 12

### 1. Explique el soporte por hardware requerido para implementar la paginación bajo demanda.
### Rta:
Para implementar la paginación bajo demanda, se requiere un soporte por hardware adecuado:
   * **Unidad de gestión de memoria:** La MMU es un componente del procesador que se encarga de la traducción de direcciones virtuales a direcciones físicas. Permite que el sistema operativo asigne y administre la memoria de manera eficiente, dividiéndola en páginas y controlando su carga y descarga según sea necesario.
   * **Tablas de páginas:** Las tablas de páginas son estructuras de datos utilizadas por la MMU para realizar la traducción de direcciones virtuales a direcciones físicas. Estas tablas almacenan información sobre las páginas virtuales y su correspondiente ubicación física en la memoria.
   * **Almacenamiento secundario:** La paginación bajo demanda requiere un medio de almacenamiento secundario, como un disco duro o una unidad de estado sólido (SSD), donde se almacenan las páginas que no están actualmente en memoria física. Cuando se accede a una página que no está presente en la memoria principal, se carga desde el almacenamiento secundario a la memoria física.
   * **Mecanismos de intercambio (swapping):** Los mecanismos de intercambio permiten al sistema operativo mover páginas entre la memoria principal y el almacenamiento secundario según sea necesario. Cuando la memoria física está llena, las páginas menos utilizadas se pueden enviar al almacenamiento secundario para liberar espacio y cargar nuevas páginas bajo demanda.
   * **Mecanismo de manejo de interrupciones de página:** Cuando se accede a una página que no está presente en la memoria física, se genera una interrupción de página. El sistema operativo debe tener un mecanismo para manejar estas interrupciones y realizar las operaciones necesarias para cargar la página requerida desde el almacenamiento secundario a la memoria física.


### 2. ¿Qué es la característica de copia durante la escritura y en que circunstancias es ventajoso usar estas características?
### Rta:
La característica de copia durante la escritura es una técnica de optimización que consiste en retrasar la copia de una página hasta que se produzca una escritura sobre ella. Esta técnica es ventajosa en las siguientes circunstancias:

   * Cuando se quiere crear un proceso hijo mediante la llamada al sistema **fork**, se puede evitar copiar todo el espacio de direcciones del proceso padre al hijo y solo marcar las páginas como de solo lectura y compartidas entre ambos procesos. Así, solo se copiarán las páginas que sean modificadas por alguno de los procesos, ahorrando tiempo y espacio.
   * Cuando se quiere modificar un archivo mapeado en memoria, se puede evitar escribir los cambios directamente en el disco y solo marcar las páginas como de solo lectura. Así, solo se escribirán en el disco las páginas que sean modificadas por el proceso, reduciendo el número de operaciones de entrada/salida.


### 3. ¿Cual es el soporte de hardware requerido para implementar las características de copia durante escritura?
### Rta:
El soporte de hardware requerido para implementar las características de copia durante escritura es el siguiente:

   * Una tabla de páginas que permite el bit válido-inválido o una serie de bits de protección.
   * Un mecanismo para detectar y tratar las escrituras en las páginas compartidas, como una interrupción o una excepción.
   * Un conjunto compartido de páginas libres para satisfacer la copia durante la escritura, se asignan cuando el cúmulo o pila del proceso deben expandirse y el sistema operativo asigna estas páginas utilizando la técnica de relleno de ceros bajo demanda antes de asignarlas eliminando el contenido anterior.
   
### 4. Indique una situación en la que el algoritmo de sustitución de las páginas menos frecuentes utilizadas genere menos fallos de pagina que el algoritmo de sustitución de las paginas más recientemente utilizadas.
### Rta:
Un caso en el que el algoritmo de sustitución de las páginas más recientemente utilizadas provoque más fallos de página que el algoritmo de sustitución de las páginas menos frecuentemente utilizadas es cuando el proceso usa un conjunto amplio de páginas una única vez y luego las abandona. Por ejemplo, si el proceso abre un archivo grande y lo lee de principio a fin y luego lo cierra. En este caso, el algoritmo LFU conservaría las páginas con mayor frecuencia de uso, mientras que el algoritmo LRU reemplazaría estas páginas por otras que solo se usan una vez. 

### 5. Indique una situación en la que el algoritmo de sustitución de las páginas mas frecuentemente utilizadas genere menos fallos de página que el algoritmo de sustitución de las páginas menos recientemente utilizadas.
### Rta:

Un caso en el que el algoritmo de sustitución de las páginas menos recientemente utilizadas provoque más fallos de página que el algoritmo de sustitución de las páginas más frecuentemente utilizadas es cuando el proceso usa un conjunto reducido de páginas con mucha frecuencia y luego pasa a otro conjunto reducido de páginas con mucha frecuencia. Por ejemplo, si el proceso salta entre dos funciones que tienen diferentes variables locales. En este caso, el algoritmo MFU conservaría las páginas con mayor frecuencia de uso, mientras que el algoritmo LRU reemplazaría estas páginas por las del conjunto nuevo cada vez que se cambia de función.

### 6. Un sistema utiliza un algoritmo de sustitución FIFO para las paginas resientes y un conjunto compartido de marcos libres compuesto por páginas recientemente utilizadas. Si el conjunto compartido de marcos libres se gestiona utilizando la política de sustitución menos recientemente utilizadas. De una respuesta a los siguientes casos:

   * Si se produce un fallo de página y la página se encuentra en el conjunto compartidos de marcos libres, ¿cómo puede generarse espacio libre para la nueva página solicitada?
   * Si se produce un fallo de página y la página se encuentra en el conjunto compartido de marcos libres, ¿cómo se activa la página residente y cómo se gestiona el conjunto compartido de marcos libres para hacer sitio para la página solicitada?
### Rta:
   * Si se produce un fallo de página y la página no se encuentra en el conjunto compartido de marcos libres, se puede generar espacio libre para la nueva página solicitada eliminando la página más antigua del conjunto residente, siguiendo el algoritmo FIFO. La página eliminada se puede añadir al conjunto compartido de marcos libres, si hay espacio disponible, o se puede escribir en el disco, si no lo hay.
   * Si se produce un fallo de página y la página se encuentra en el conjunto compartido de marcos libres, se puede activar la página residente moviéndola del conjunto compartido al conjunto residente, actualizando las tablas correspondientes. El conjunto compartido de marcos libres se puede gestionar para hacer sitio para la página solicitada eliminando la página menos recientemente utilizada del conjunto compartido, siguiendo el algoritmo LRU. La página eliminada se puede escribir en el disco o descartar, según sea necesario.

### 7. Considere un sistema de paginación bajo demanda con las siguientes tasas de utilización:
   * Uso de CPU 20%
   * Paginación de disco 97,7%
   * Otros dispositivos de I/O 5%
### Para las siguientes afirmaciones, indique si permitirá o es probable que permita mejorar las tasas de utilización de la CPU. De razones para su respuesta.
   * Instalar una CPU más rápida.
   * Instalar un disco de paginación de mayor tamaño.
   * Incrementar el grado de multiprogramación.
   * Instalar mas memoria principal.   
   * Instalar un disco duro mas rápidos.
 
### Rta:
   * Instalar una CPU más rápida no permitirá mejorar la tasa de utilización de la CPU, ya que el cuello de botella está en el disco de paginación, que tiene una tasa de utilización muy alta. La CPU tendrá que esperar más tiempo a que el disco termine las operaciones de lectura y escritura de las páginas.
   * Instalar un disco de paginación de mayor tamaño tampoco permitirá mejorar la tasa de utilización de la CPU, ya que el problema no es el espacio disponible en el disco, sino la velocidad de acceso a las páginas. Un disco más grande no reducirá el número de fallos de página ni el tiempo de servicio de cada uno.
   * Incrementar el grado de multiprogramación es probable que empeore la tasa de utilización de la CPU, ya que aumentará la competencia por los recursos de memoria y disco. Esto provocará más fallos de página y más intercambios entre procesos, lo que reducirá el tiempo efectivo de ejecución de la CPU.
   * Instalar más memoria principal permitirá mejorar la tasa de utilización de la CPU, ya que disminuirá el número de fallos de página y el grado de intercambio. Esto hará que la CPU pueda ejecutar más instrucciones sin tener que esperar al disco. Además, se reducirá la carga del disco y se liberará tiempo para otras operaciones de I/O.
   * Instalar un disco duro más rápido permitirá mejorar la tasa de utilización de la CPU, ya que reducirá el tiempo de servicio de cada fallo de página y el tiempo de intercambio entre procesos. Esto hará que la CPU tenga que esperar menos al disco y pueda ejecutar más instrucciones. También se reducirá la carga del disco y se liberará tiempo para otras operaciones de I/O.
