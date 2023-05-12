## Taller de Investigacion 08

### 1. Por qué es importante para un planificador diferenciar entre un programa limitado por I/O y por CPU?

   * Un programa limitado por I/O es aquel que requiere una gran cantidad de entrada y salida de datos, como por ejemplo, una aplicación de procesamiento de archivos o una aplicación de bases de datos. Estos programas tienden a ser más lentos debido a la necesidad de esperar a que los datos se lean o escriban desde el disco o desde una red. Por lo tanto, el planificador debe ser capaz de optimizar la cantidad de tiempo que se dedica a la E/S para minimizar el tiempo total de ejecución del programa.
   * Por otro lado, un programa limitado por CPU es aquel que requiere una gran cantidad de poder de procesamiento para realizar tareas, como por ejemplo, un programa de cálculo intensivo o un programa de gráficos. En este caso, el planificador debe ser capaz de asignar la mayor cantidad posible de tiempo de CPU para asegurarse de que el programa se ejecute lo más rápido posible.
    
### 2. Como entran en conflicto en determinadas configuraciones la utilización de CPU y tiempo de respuesta?
 
   * En determinadas configuraciones, la utilización de la CPU y el tiempo de respuesta pueden entrar en conflicto, especialmente en sistemas en los que los usuarios necesitan una respuesta rápida.

   * Por ejemplo, en un servidor web que recibe una gran cantidad de solicitudes de los usuarios, si la CPU está altamente utilizada para procesar solicitudes, puede haber una demora en el tiempo de respuesta para los usuarios. Si se intenta aumentar la capacidad de la CPU para reducir el tiempo de respuesta, puede aumentar el costo de hardware y energía, lo que puede no ser sostenible en términos de presupuesto.

   * Otro ejemplo es en sistemas de procesamiento de transacciones financieras, donde la alta velocidad de respuesta es esencial. Si se asigna más tiempo de CPU a una transacción en particular, puede aumentar el tiempo de respuesta de otras transacciones, lo que puede generar insatisfacción en los clientes.
 
### 3. Como entran en conflicto en determinadas configuraciones el tiempo medio de procesamiento y tiempo máximo de espera?

   * El tiempo medio de procesamiento y el tiempo máximo de espera pueden entrar en conflicto, especialmente en sistemas en los que se realizan operaciones en lotes.

   * Digamos que en un sistema de procesamiento de imágenes, si el tiempo medio de procesamiento de una imagen es de 5 segundos y se establece un tiempo máximo de espera de 10 segundos, esto significa que si una imagen no se procesa dentro de los 10 segundos, se debe descartar o reprogramar para su procesamiento posterior. Si se intenta disminuir el tiempo máximo de espera a 5 segundos, las imágenes que tarden más de 5 segundos en procesarse se descartarán, lo que puede resultar en pérdida de datos.

   * Otro ejemplo es en sistemas de colas de atención al cliente, donde se establece un tiempo máximo de espera para atender a los clientes. Si se reduce el tiempo máximo de espera, puede aumentar la cantidad de clientes que abandonan la cola, lo que afecta negativamente la satisfacción del cliente. Si se aumenta el tiempo máximo de espera, puede aumentar el tiempo medio de atención al cliente, lo que también puede afectar la satisfacción del cliente.
