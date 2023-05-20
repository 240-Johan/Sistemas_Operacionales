## Sincronizacion de Procesos
## Taller de Investigacion 08

### 1. Cual es significado del termino espera activa?
### Rta:
Es una técnica donde un proceso repetidamente verifica una condición, tal como esperar una entrada de teclado o si el ingreso a una sección crítica está habilitado. Puede ser una estrategia válida en algunas circunstancias especiales, sobre todo en la sincronización de procesos en los sistemas con múltiples procesadores (SMP). En general, debe ser evitada, ya que consume tiempo de CPU sin realizar ninguna operación.
 
### 2. De que manera se puede evitar la espera activa?
### Rta:
se pueden implementar diversas técnicas de sincronización y planificación en el diseño de sistemas operativos. Algunas de las estrategias comunes incluyen:

   * Semaforos y monitores: Estos mecanismos permiten la exclusión mutua y la sincronización entre procesos. Al utilizar semáforos o monitores correctamente, se puede evitar que varios procesos accedan simultáneamente a un recurso compartido, lo que reduce la necesidad de esperar activamente.
Colas y buffers: Al utilizar colas y buffers, los procesos pueden poner sus solicitudes en espera y liberar la CPU hasta que el recurso esté disponible. Esto evita que los procesos realicen verificaciones activas repetitivas y permite un enfoque más eficiente.
   * Planificación adecuada: Un planificador de procesos efectivo puede asignar la CPU de manera justa y equitativa entre los procesos, evitando situaciones en las que un proceso se bloquea esperando indefinidamente su turno. Una buena política de planificación puede minimizar la necesidad de esperar activamente.
   * Interrupciones y eventos: En lugar de esperar activamente mediante bucles, los procesos pueden registrarse para recibir interrupciones o eventos que se activan cuando un recurso está disponible. Esto permite que los procesos se suspendan hasta que se les notifique de manera activa que pueden continuar.
   * Hilos y concurrencia: Al utilizar hilos en lugar de procesos separados, se puede lograr una comunicación más rápida y directa entre ellos. Esto puede reducir la necesidad de esperar activamente al permitir una mayor concurrencia y cooperación entre los hilos.

### 3. Explique por qué los bloqueos mediante bucle sin fin no son apropiados para sistemas monoprocesador, pero se usan con frecuencia en los sistemas multiprocesador.
### Rta:
   * Los bloqueos mediante bucle sin fin, también conocidos como espera activa, no son apropiados para sistemas monoprocesador debido a que consumen recursos de manera ineficiente. En un sistema monoprocesador, un proceso que se encuentra en un bucle de espera activa utilizará constantemente la CPU, sin dar oportunidad a otros procesos de ejecutarse. Esto puede llevar a una degradación del rendimiento general del sistema y una utilización ineficiente de los recursos disponibles.

   * Por otro lado, en sistemas multiprocesador, donde hay múltiples núcleos de procesador disponibles, la espera activa puede ser más efectiva. Cuando un proceso se bloquea y espera por un recurso en un bucle de espera activa, otros procesos pueden seguir ejecutándose en los núcleos de procesador restantes. Esto permite una mejor utilización de los recursos y evita una degradación significativa del rendimiento.

### 4. Explique por qué las interrupciones no son apropiadas para implementar primitivas de sincronización en los sistemas multiprocesador.
### Rta:
   * Esto sucede debido a que pueden generar problemas de coherencia de caché y condiciones de carrera.

   * En un sistema multiprocesador, cada núcleo de procesador tiene su propia caché local, que almacena copias de datos utilizados por los procesos en ejecución en ese núcleo. Cuando ocurre una interrupción y se ejecuta un manejador de interrupción, puede acceder a los datos compartidos, lo que puede llevar a conflictos de coherencia de caché. Estos conflictos ocurren cuando varios núcleos tienen copias en sus cachés de la misma ubicación de memoria y los cambios realizados por uno no se reflejan automáticamente en las copias de las otras cachés, generando inconsistencias y resultados incorrectos.

### 5. Describa como se puede utilizar la instrucción swap() para proporcionar un mecanismo de exclusión mutua que satisfaga el requisito de espera limitada.
### Rta:
La instrucción swap() se puede utilizar para proporcionar un mecanismo de exclusión mutua que satisfaga el requisito de espera limitada. La exclusión mutua es una técnica que se utiliza para evitar que dos o más procesos accedan simultáneamente a un recurso compartido. El algoritmo de exclusión mutua con swap es el siguiente:
    
```c
mutex = 0
def lock():
    local = 1
    while local != 0:
        swap(mutex, local)
def unlock():
    mutex = 0
```

### 6. Los servidores pueden diseñarse de modo que limiten el numero de conexiones abiertas. Explique cómo puede utilizar un servidor los semáforos para limitar el numero de conexiones concurrentes.
### Rta:
Para limitar el número de conexiones concurrentes en un servidor, se puede utilizar semáforos como un mecanismo de control de acceso. Los semáforos permiten que un número específico de hilos o procesos accedan a un recurso compartido al mismo tiempo, los pasos son los siguientes:

   * Definir un semáforo: El servidor debe crear un semáforo con un valor inicial que represente el límite máximo de conexiones permitidas. Por ejemplo, si se desea limitar a 10 conexiones concurrentes, el semáforo se inicializaría con el valor 10.

   * Controlar las conexiones entrantes: Cada vez que una conexión nueva llega al servidor, se intenta adquirir el semáforo. Si el valor del semáforo es mayor a cero, la conexión es aceptada y el servidor disminuye en uno el valor del semáforo. Esto indica que una conexión ha sido utilizada. Si el valor del semáforo es cero, significa que se ha alcanzado el límite de conexiones concurrentes y la nueva conexión es rechazada o puesta en espera hasta que una conexión existente sea liberada.

   * Liberar las conexiones: Cuando una conexión se cierra o finaliza, el servidor incrementa en uno el valor del semáforo, lo que indica que se ha liberado una conexión y permite que otra conexión pueda ser aceptada.

Mediante el uso de semáforos, el servidor controla de forma efectiva el número máximo de conexiones concurrentes permitidas. Al limitar el acceso a través del semáforo, se evita la sobrecarga del servidor y se garantiza un funcionamiento más eficiente y estable.

### 7. Demuestre que los monitores y semáforos son equivalentes, en cuanto a que se pueden emplear para implementar los mismos tipos de problemas de sincronización.
### Rta:
Los monitores y los semáforos son dos mecanismos de sincronización utilizados en programación concurrente que pueden emplearse para implementar los mismos tipos de problemas de sincronización. Aunque tienen diferentes enfoques y características, son equivalentes en cuanto a su capacidad para abordar estos problemas.

   * Los monitores son construcciones de alto nivel que combinan datos y procedimientos relacionados en una sola entidad. Proporcionan exclusión mutua y sincronización de forma implícita a través del uso de métodos o procedimientos llamados dentro del monitor. Los monitores permiten que solo un hilo o proceso acceda a la vez a los datos y métodos encapsulados dentro de ellos, evitando así las condiciones de carrera.

   * Los semáforos, por otro lado, son objetos o variables utilizados para controlar el acceso a recursos compartidos. Pueden tener un valor entero y ofrecen operaciones atómicas como espera (wait) y señal (signal). Los semáforos pueden utilizarse para bloquear y desbloquear hilos o procesos, permitiendo la sincronización y exclusión mutua.

Aunque la implementación de problemas de sincronización puede variar en detalle, se pueden utilizar tanto monitores como semáforos para abordar los mismos tipos de problemas, como la exclusión mutua, la sincronización de hilos, la coordinación de tareas y la resolución de problemas clásicos como el problema del productor/consumidor o el problema de los lectores/escritores.
### 8. La exclusión mutua estricta en un monitor hace que el monitor de búfer limitado sea adecuado para porciones pequeñas. Explique por qué es cierto esto.
### Rta:
La exclusión mutua estricta en un monitor significa que solo un hilo puede estar dentro del monitor en un momento dado. Esto implica que si un hilo está ocupando el monitor para realizar una operación en el búfer, ningún otro hilo puede acceder al monitor hasta que el primer hilo haya terminado y se haya liberado el monitor.

Cuando se trata de un monitor de búfer limitado, donde hay una capacidad máxima predefinida para almacenar elementos, la exclusión mutua estricta puede hacer que el monitor sea adecuado para porciones pequeñas debido a las siguientes razones:

   * Rendimiento: Si el monitor permite que solo un hilo acceda al búfer a la vez, esto puede generar una degradación del rendimiento si las operaciones que los hilos realizan en el búfer son de larga duración. Si la porción de código dentro del monitor toma mucho tiempo para ejecutarse, otros hilos tendrán que esperar hasta que se libere el monitor, lo que puede resultar en una baja eficiencia y tiempos de espera prolongados.

   * Utilización del búfer: Si el monitor se utiliza para operaciones de búfer que involucran un número pequeño de elementos, como agregar o eliminar elementos individuales, es más eficiente permitir que varios hilos accedan al monitor simultáneamente. Esto aumenta la concurrencia y mejora la utilización del búfer, ya que varios hilos pueden agregar o eliminar elementos de forma independiente sin bloquearse entre sí. Sin embargo, es importante garantizar que las operaciones individuales en el búfer sean atómicas o estén protegidas por otros mecanismos de sincronización para evitar condiciones de carrera.

### 9. Por qué Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en los sistemas multiprocesador y no en los sistemas monoprocesador? 
### Rta:
   * Los sistemas operativos Windows y Linux utilizan bloqueos mediante bucle sin fin (spin locks) como mecanismo de sincronización en sistemas multiprocesador, pero no en sistemas monoprocesador debido a diferencias clave en la arquitectura y el rendimiento. En sistemas multiprocesador, donde hay varios núcleos ejecutando hilos concurrentemente, los bucles activos permiten a un hilo esperar por un bloqueo sin bloquear la CPU, lo que aprovecha el paralelismo y la concurrencia. 
   * Sin embargo, en sistemas monoprocesador, donde solo hay un núcleo, estos bucles activos son ineficientes ya que el hilo que espera no cede la CPU a otros hilos, por lo que es más eficiente poner al hilo en espera pasiva, permitiendo que el sistema operativo planifique otros hilos para su ejecución. En resumen, los bloqueos mediante bucle sin fin son adecuados en sistemas multiprocesador debido al paralelismo, mientras que en sistemas monoprocesador se prefieren mecanismos de espera pasiva para una mejor administración de hilos.
