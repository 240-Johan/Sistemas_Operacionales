
## Taller 06

## 1. Describa dos ejemplos en los que los mecanismos multihilo no proporcionen un mejor rendimiento que el monohilo.
   * Operaciones que no se pueden paralelizar: Hay algunas operaciones que no se pueden dividir en tareas más pequeñas y ejecutar en paralelo. Por ejemplo, si una tarea implica una serie de cálculos que dependen uno del otro, como la resolución de una ecuación matemática, no se puede paralelizar fácilmente. En este caso, la introducción de múltiples hilos puede incluso disminuir el rendimiento debido al costo adicional de la sincronización y la comunicación entre hilos.

   * Cuellos de botella en recursos compartidos: Si una aplicación tiene un recurso compartido crítico, como una base de datos, puede haber un cuello de botella en el acceso a ese recurso. Si varios hilos intentan acceder a la vez a este recurso, se producirá una contención, lo que reducirá el rendimiento. En algunos casos, es posible que la introducción de múltiples hilos incluso empeore el rendimiento debido a la necesidad de coordinar el acceso al recurso compartido. En este caso, puede ser necesario utilizar técnicas como la sincronización de hilos o el bloqueo de recursos compartidos para evitar conflictos y maximizar el rendimiento.

## 2. Describa las acciones que toma una biblioteca de hilos para cambiar el contexto entre hilos de nivel de usuario.

   * Asignación de recursos: La biblioteca de hilos es responsable de asignar los recursos necesarios para la ejecución de cada hilo, incluyendo la asignación de espacio de memoria, registros de CPU y otros recursos necesarios.

   * Planificación de hilos: La biblioteca de hilos es responsable de planificar los hilos para su ejecución en el procesador. Esto implica decidir qué hilo se ejecutará en un momento dado, según la política de planificación definida.

   * Cambio de contexto: Cuando la biblioteca de hilos decide que debe cambiar de un hilo a otro, debe realizar un cambio de contexto. Esto implica guardar el estado del hilo que se está ejecutando actualmente (por ejemplo, los valores de los registros de CPU, la posición del contador de programa, etc.) y cargar el estado del hilo que se ejecutará a continuación.

   * Sincronización: La biblioteca de hilos debe proporcionar mecanismos de sincronización para garantizar la coordinación entre los hilos. Por ejemplo, la biblioteca de hilos puede proporcionar semáforos, mutexes, variables de condición y otros mecanismos de sincronización para asegurar que los hilos cooperen correctamente.

   * Manejo de interrupciones: La biblioteca de hilos debe ser capaz de manejar las interrupciones que puedan ocurrir mientras los hilos están ejecutando. Por ejemplo, si un hilo se bloquea esperando una operación de entrada/salida, la biblioteca de hilos puede cambiar a otro hilo para que la CPU no quede inactiva. Cuando la operación de entrada/salida se completa, el hilo original puede ser reanudado.

## 3. Los valores de los registros son componentes del estado de un programa, se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

   * los registros son componentes del estado de un hilo de ejecución y no se comparten directamente entre hilos. Cada hilo de ejecución tiene su propia pila y su propio conjunto de registros, y los valores de los registros solo son accesibles por el hilo que los está utilizando en ese momento.

   * Sin embargo, en algunos casos, puede haber un cierto grado de compartición de registros entre hilos. Por ejemplo, si se está utilizando un modelo de hilos cooperativos, donde cada hilo debe ceder el control de la CPU antes de que otro hilo pueda comenzar a ejecutarse, los valores de los registros se pueden compartir indirectamente a través de la memoria compartida. En este caso, cuando un hilo cede el control, debe guardar su estado actual (incluyendo los valores de los registros) en la memoria compartida, para que otro hilo pueda recuperar ese estado y continuar desde donde se dejó.

   * En sistemas que utilizan hilos preemtivos, donde el sistema operativo es responsable de la planificación y el cambio de contexto entre los hilos, los valores de los registros no se comparten directamente entre los hilos. En este caso, el sistema operativo es responsable de guardar y restaurar el estado completo del hilo (incluyendo los valores de los registros) cuando se produce un cambio de contexto entre hilos.

## 4. Los cúmulos de memoria se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

   * Sí, los cúmulos de memoria se comparten entre los hilos de un proceso multihilo. Los hilos comparten el mismo espacio de direcciones virtual, que incluye los segmentos de código, datos y montón. Esto permite que los hilos puedan acceder y modificar los mismos datos en memoria. Sin embargo, los hilos deben sincronizar el acceso a los datos compartidos para evitar condiciones de carrera o inconsistencias.

## 5. Las variables globales se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

   * Sí, las variables globales se comparten entre los hilos de un proceso multihilo. Las variables globales son aquellas que están disponibles en todo el programa, no dentro de una función o bloque de código específico. Debido a que los hilos comparten el mismo espacio de direcciones virtual, todos los hilos pueden acceder y modificar las mismas variables globales. Sin embargo, es importante tener en cuenta que los hilos deben sincronizar el acceso a las variables globales para evitar problemas como condiciones de carrera o inconsistencias. Por lo tanto, aunque las variables globales son compartidas entre los hilos, se debe tener cuidado al acceder y modificar estas variables para evitar problemas de concurrencia.

## 6. La memoria de pila se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

   * No, la memoria de pila no se comparte entre los hilos de un proceso multihilo. Cada hilo tiene su propia pila de llamadas, que se utiliza para almacenar información sobre las funciones que se llaman en ese hilo. Las pilas de llamadas de los hilos no son accesibles para otros hilos, lo que permite que cada hilo ejecute funciones de forma independiente sin interferir en el estado de la pila de otros hilos.

## 7. En que ocasiones una solución multihilo que usa múltiples hilos del kernel proporciona mejor rendimiento que un solo hilo sobre un sistema monoprocesador.

   * Cálculo intensivo: Si una tarea implica cálculos intensivos, como operaciones matemáticas complejas o procesamiento de grandes cantidades de datos, dividir la tarea en múltiples hilos puede acelerar el proceso de cálculo. Al dividir la tarea en subprocesos más pequeños que se pueden ejecutar simultáneamente, se puede aprovechar al máximo la capacidad de procesamiento del sistema.

   * E/S intensiva: Si una tarea implica operaciones intensivas de E / S, como la lectura o escritura de archivos grandes, la utilización de múltiples hilos puede ayudar a reducir los tiempos de espera mientras se espera la E / S. Mientras un hilo está esperando la E / S, otros hilos pueden continuar ejecutando tareas.

   * Tareas paralelas: Si una tarea puede dividirse en subprocesos independientes que no dependen uno del otro, es posible que se pueda lograr un mejor rendimiento utilizando múltiples hilos. Cada subproceso se puede ejecutar en un hilo separado y acelerar el tiempo de procesamiento total.

## 8. Puede una solución multihilo que utiliza múltiples hilos de usuario conseguir mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador?

Sí, una solución multihilo que utiliza múltiples hilos de usuario puede lograr mejor rendimiento en un sistema multiprocesador en comparación con un sistema de un solo procesador.

   * En un sistema multiprocesador, varios procesadores trabajan juntos para procesar las tareas, lo que permite que múltiples hilos se ejecuten en diferentes núcleos de procesador simultáneamente. Esto significa que cada hilo puede aprovechar al máximo la capacidad de procesamiento disponible en cada núcleo de procesador, lo que puede mejorar significativamente el rendimiento general.

   * Por otro lado, en un sistema de un solo procesador, todos los hilos compiten por los mismos recursos de procesamiento, lo que puede limitar la capacidad de procesamiento de cada hilo y reducir el rendimiento general.

## 9. Suponga que el numero de hilos del usuario es mayor que el numero de procesadores del sistema. Explique el impacto sobre el rendimiento cuando el numero de hilos del kernel asignados al programa es menor que el numero de procesadores.

   * Si el número de hilos del usuario es mayor que el número de procesadores del sistema significa que algunos hilos deben esperar a que se libere un procesador antes de poder ejecutarse. Esto significa que no todos los hilos del usuario pueden ser ejecutados simultáneamente en paralelo en los procesadores. Si el número de hilos del kernel asignados al programa es menor que el número de procesadores, algunos procesadores también pueden estar inactivos. En esta situación, el rendimiento del programa puede verse afectado negativamente debido a la falta de recursos disponibles. ya que se desperdicia la capacidad de cómputo de los procesadores que no tienen ningún hilo asignado. Los hilos de usuario no pueden aprovechar el paralelismo real que ofrece el sistema multiprocesador, ya que dependen de los hilos del kernel para ejecutarse. Además, se puede producir una mayor sobrecarga por los cambios de contexto entre los hilos de usuario y los hilos del kernel. Para maximizar el rendimiento en esta situación, es importante asignar de manera efectiva los hilos del kernel y distribuir la carga de trabajo de manera equilibrada entre los procesadores disponibles. Si se utilizan técnicas de planificación de procesos adecuadas, como la planificación basada en prioridades o la planificación en tiempo real, se puede lograr una mejor utilización de los recursos del sistema y, por lo tanto, mejorar el rendimiento del programa.
