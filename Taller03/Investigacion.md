## TALLER 03

1. En entornos compartidos, los usuarios comparten el sistema. Esto puede dar lugar a varios
problemas de seguridad.
    * Mencione dos problemas y expliquelos.
    * Es posible asegurar el mismo grado de seguridad en un sistema compartido que en un
sistema dedicado. Explique su respuesta.

- Rta:
    1. Cuando se comparte un mismo sistema entre usuarios puede surgir diversos problemas de seguridad, los que yo considero mas importante son:
        * Accesos no permitidos :  Se puede dar casos en los que otros usuarios tengan acceso a datos o recursos a los que no deberia tener acceso, se puede dar de varias maneras, si un usuario comparte por descuido el acceso, tiene contraseñas muy debiles o no cierra sesion, regalando informacion sin la debida autorizacion, tambien se puede usar el mismo sistema para que comparta estos datos, esto debido a que, se creeria que si comparte sistema con otros usuarios, confian en estos mismos.
        * Malware: en los entornos compartidos es muy propenso a sufrir infecciones por malware, spyware, adware entre otros, pero principalmente el malware se puede propagar entre otros usuarios del sistema, comprometiendo asi la seguridad del sistema, esto puede ir de la mano junto a los ataques de phishing, donde a partir de correos falsos o paginas web engañosas que dicen ser legitimas, hacen que el usuario descargue las infecciones.
    2. No es posible asegurar un mismo grado de seguridad en un sistema compartido que en uno dedicado, esto se debe a que los recursos y datos al ser compartidos, tienden a ser mas susceptibles a ataques y accesos no autorizados, en cambio, un sistema dedicado, los datos estan reservados para un solo usuario , lo que protege y restringe mas los datos y el acceso a los mismos. una solucion que puede ser efectiva en los sistemas compartidos es haciendo medidas de seguridad adecuadas, como la deteccion de malwares y la segmentacion de red.
 
2. Un problema común en los OS es la utilización de recursos. Enumere los recursos que deben
gestionarse en las siguientes maquina (explique porqué):
    * Sistemas embebidos
    * Mainframe
    * Workstation
    * Server
    * Mobile
 - Rta: 
     * Sistemas Embebidos: tienen recursos limitados en lo que procesamiento, memoria y almacenamiento se refiere, por lo que es importante gestionar bien dichos recursos de forma que el sistema funcione de manera optima, a su vez el software tambien se debe de diseñar para que utilice los recursos eficientemente y no sobrecargue el sistema.
     * Mainframe: son sistemas informaticos grandes y complejos que manejan grandes cantidades de procesamiento y almacenamiento de datos, los recursos gestionados en un mainframe son el procesador, la memoria principal, la capacidad de almacenamiento en el disco, la capacidad de entradas y salidas, asi tambien la energia, todo esto es importante gestioanrlo para que el sistema pueda manejarse de manera eficiente.
     * Workstation: son computadoras de alto rendimiento que se utilizan para tareas intensivas de procesamiento de datos, como diseño grafico, modelado 3D y analisis de datos. los recursos que debe gestionar son  el procesador, la memoria RAM, la capacidad de almacenamiento, la capacidad de entradas y salidas y la energia, es importante que se gestionen cada uno de estos recursos para garantizar la realizacion de manera eficeinte el trabajo.
     * Server: Son sistemas informaticos diseñados para manejar grandes cargas de trabajo y proporcionar servicios a una gran cantidad de usuarios, los recursos a gestionar son el procesador, la memoria RAM, la capacidad de almacenamiento, la capacidad de entradas y salidas, asi como la energia, cada recurso es importante para que los servidores manejen cargsa de trabajo grandes sin que tenga interrupciones o perdida de datos.
     * Mobile: los dipositivos moviles, como telefonos inteligentes y tabletas, tienen recursos limitados en terminos de procesamiento, memoria y energia de la bateria, los recursos a gestionar en el mismo son el procesador, la memoria RAM, la capacidad de almacenamiento, la capacidad de entradas y salidas, como la energia, es importanque se estos recursos se usen de manera eficiente para que el dispositivo movil funcione de manera optima y que la bateria dure lo maximo posible.
    
3. Caracterice dos casos de uso para implementar un OS para servidor y PC.

- Rta: 
    * Servidores Web: Son una de las principales aplicaciones para sistemas operativos de servidor, un servidor web se utiliza para alojar y proporcionar acceso a paginas web y otros recursos en linea. para implementa un servidor web, se requiere un sistema operativo de servidor que sea escalable, seguro, confiable y capaz de manejar cargas de trabajo intensivas, unos ejemplos de esto puede ser pache, Nginx y microsoft IIS
    * Workstation para Diseño grafico: Son sistemas de PC especializados en la edicion de fotos, videos y audio de alta calidad. Para implementar una Workstation se requiere un Sistema operativo que peuda manejar tareas intensivas de procesamiento y graficos. asi como gestionar grandes cantidades de multimedia y proporcionar un rendimiento rapido y confiable. Unos ejemplos de esto pueden ser Windows 10 Pro, macOS y Linux, una distribucion especifica de esto es Ubuntu Studio

4. Compare las diferencias entre multiprocesamiento simétrico y asimétrico.

- Rta: Iniciemos definiendo que el multiprocesamiento Simetrico (SMP) y asimetrico (AMP) son dos tecnicas diferentes utilizadas para mejorar el rendimient y la eficiencia de los sistemas informaticos. las diferencias entre estos dos son:
    * Distribucion de carga: en SMP, todos los procesadores comparten igualmente la carga de trabajo y tienen acceso a los mismos recursos del sistema, como memoria y perifericos, por otro lado, en AMP, cada procesador esta dedicado a una tarea en especifico y tiene acceso a sus propios recursos dedicados. como resultado, AMP se utiliza a menudo para aplicaciones en las que las tareas son altamente especializadas y pueden ejecutarse en paralelo
    * Escalabilidad: en SMP, el rendimiento del sistema se puede mejorar agregando mas CPU y memoria, lo que lo hace altamente escalable. en AMP, la escalabilidad esta limitada por el numero de tareas especializadas que se pueden ejecutar en paralelo y por el numero de recursos dedicados disponibles para cada CPU.
    * Complejidad del sistema: SMP es mas facil de diseñar e implementar ya que todas las CPU comparten la misma memoria. en AMP, es mas complejo debido a que cada CPU tiene su propia memoria y perifericos dedicados, lo que requiere una planificacion y coordinacion cuidadosas para evitar cuellos de botella en el sistema.
    * Tolerancia a fallos: en SMP, si un CPU falla, las tareas pueden ser reasignadas a otras CPU en el sistema, lo que permite una mayor tolerancia a fallos. en AMP, si una cpu falla, las tareas dedicadas a esa CPU pueden deternse o fallar, lo que reduce la tolerancia a fallos.
    
- con lo visto anteriormente, se ve que SMP es mas adecuado para sistemas en los que se requiere un alto rendimiento y escalabilidad, mientras que AMP se utiliza a menudo en sistemas con tareas altamente especializada y requirimientos de rendimiento especificos.

5. Enumere los requerimientos para que dos maquinas se junten en un cluster y provean un
servicio de alta disponibilidad (HA).

- Rta:  Se necesitan los siguientes requerimientos:

    * Redundancia: Las dos máquinas deben estar configuradas para proporcionar redundancia. Esto significa que si una máquina falla, la otra máquina puede asumir el control del servicio sin interrupción.

    * Sincronización de datos: Las dos máquinas deben estar sincronizadas para asegurar que los datos estén actualizados en ambas máquinas en todo momento. Esto se puede lograr mediante la replicación de datos entre las máquinas o mediante el uso de un almacenamiento compartido, como un almacenamiento de área de red (NAS) o un almacenamiento de área de almacenamiento (SAN).

    * Balanceo de carga: El tráfico de red debe ser balanceado entre las dos máquinas para asegurar que ambas máquinas estén operando a su capacidad máxima y para proporcionar una mayor disponibilidad del servicio.

    * Monitorización: Debe haber un sistema de monitorización que supervise el estado de ambas máquinas y del servicio que se proporciona. Si una máquina falla, el sistema de monitorización debe tomar medidas para solucionar el problema.

    * Conexión de red confiable: Las dos máquinas deben estar conectadas a una red confiable, que esté diseñada para minimizar las interrupciones y garantizar una alta disponibilidad.

    * Sistema operativo y software compatibles: Ambas máquinas deben tener el mismo sistema operativo y el software necesario para proporcionar el servicio. Esto es importante para garantizar la compatibilidad y la capacidad de mantener la sincronización de datos.

    * Configuración y mantenimiento adecuados: Las dos máquinas deben estar configuradas y mantenidas adecuadamente para garantizar que estén funcionando correctamente en todo momento y para minimizar el riesgo de fallas del sistema.

6. Compare las diferencias entre una excepción y una interrupción.

- Rta: Las interrupciones generalmente se utilizan como recursos de hardware normales para satisfacer las necesidades del sistema operativo y/o los procesos de usuario dentro de él, ya sea debido a cambios de entrada/salida o de paginación, solicitudes de usuario o líneas de comunicación externas, o similares.

- La excepción ocurre en una situación completamente diferente. El hardware o incluso el sistema operativo a menudo no tiene resolución para cosas como la división por cero o resultados indefinidos, solo por alguna respuesta programada específica del sistema (por ejemplo, división por cero) o por flujo de corriente.

   - algunas diferencias entre excepcion y interrupcion mas desglosadas son:

       * Causa: Una excepción es causada por un error en la ejecución del programa, como una división por cero o una violación de acceso a memoria. Por otro lado, una interrupción es causada por eventos externos al programa, como la llegada de un paquete de red o una señal de hardware.

       * Fuente: Una excepción es generada por el propio procesador, mientras que una interrupción es generada por un dispositivo de hardware o una solicitud de software.

       * Gestión: Las excepciones son manejadas por el propio programa, que puede proporcionar una rutina de manejo de excepciones para manejar el error. Las interrupciones son manejadas por el sistema operativo, que utiliza una tabla de vectores de interrupción para determinar la rutina de manejo de interrupciones adecuada.

       * Momento: Las excepciones ocurren durante la ejecución del programa, mientras que las interrupciones pueden ocurrir en cualquier momento, incluso cuando el programa no está en ejecución.

       * Efecto: Las excepciones detienen la ejecución del programa y pueden provocar su finalización o un comportamiento inesperado. Por otro lado, las interrupciones pueden detener la ejecución del programa temporalmente para atender la interrupción, pero el programa puede reanudar su ejecución normalmente después de que se maneje la interrupción.

7. El DMA (acceso directo a memoria) se usa en dispositivos I/O para evitar uso innecesario de la
CPU.
    * ¿Como interactuá la CPU con el dispositivo para coordinar la transferencia?
    * ¿Como sabe la CPU que las operaciones de memoria se han completado?

 - Rta:
    * Cuando el dispositivo de hardware necesita acceder a la memoria del sistema, envía una solicitud al controlador DMA. El controlador DMA establece una conexión directa entre el dispositivo y la memoria del sistema y controla la transferencia de datos sin la intervención de la CPU. Sin embargo, antes de que se pueda iniciar la transferencia de datos, el controlador DMA debe recibir permiso de la CPU para acceder a la memoria del sistema. Para ello, el controlador DMA envía una solicitud de bus de memoria a la CPU. La CPU, a su vez, responde a la solicitud de bus de memoria y concede el acceso a la memoria del sistema al controlador DMA. Una vez que se ha concedido el acceso, el controlador DMA controla la transferencia de datos sin la intervención de la CPU.


    * La CPU sabe que las operaciones de memoria se han completado a través de interrupciones cuando se inicia una transferencia de datos mediante DMA, el controlador DMA envía una interrupción a la CPU una vez que se ha completado la transferencia de datos, La CPU, a su vez, recibe la interrupción y se detiene temporalmente para procesar la interrupción, La CPU puede entonces leer los resultados de la transferencia de datos y continuar con otras tareas. De esta manera, la CPU es informada de que la transferencia de datos ha sido completada sin tener que supervisar activamente la operación de DMA.

8. Identifique dos razones por las que la cache es útil. ¿Que problemas resuelve y causa?.

- Rta: que problemas resuelve la cache?

- Primero hay que saber que la cache es una memoria de alta velocidad y pequeña capacidad que se utiliza para almacenar temporalmente datos y/o instrucciones que se acceden con frecuencia en un sistema de computadora, sabiendo esto, podemos decir que los problemas que resuelve son:

    * Reducción del tiempo de acceso a la memoria principal: Como la caché es más rápida que la memoria principal, si un programa necesita acceder a un dato o instrucción que se encuentra en la caché, el tiempo necesario para acceder a ese dato o instrucción será menor que si se accediera directamente desde la memoria principal. Esto mejora el rendimiento general del sistema.

    * Reducción de la congestión de la memoria: Como los datos e instrucciones que se acceden con frecuencia se almacenan en la caché, la cantidad de tráfico en la memoria principal se reduce. Esto puede mejorar la eficiencia del sistema en general, especialmente en sistemas que tienen una gran cantidad de acceso a memoria.

- También puede causar algunos problemas, como:

    * Consistencia de datos: Si un dato se almacena en la caché y se modifica en la memoria principal por otro proceso, la caché puede contener una copia obsoleta del dato. Esto puede causar problemas si el programa espera acceder al dato más reciente.

    * Complejidad del sistema: La implementación de la caché agrega una capa adicional de complejidad al sistema. Esto puede dificultar la depuración y el mantenimiento del sistema en caso de que surjan problemas con la caché.


9. Explique con un ejemplo, como se manifiesta el problema de mantener la coherencia de los
datos de cache en los siguientes entornos:
    * Sistema distribuido
    * Sistema multiprocesador
    * Sistema de un solo procesador

- Rta:  Mantener la coherencia de los datos de cache puede ser un problema en entornos en los que hay varias copias del mismo dato almacenado en diferentes caches. Cuando se actualiza una copia de un dato en una caché, es posible que otras cachés no sepan que el dato ha cambiado, lo que puede provocar problemas de inconsistencia de datos.

    * En un sistema distrbuido, cada nodo del sistema tiene su propia cache. Cuando se produce una actualización en una caché, es posible que otras cachés no se enteren de inmediato, lo que podría resultar en diferentes valores de datos en diferentes nodos. ***Por ejemplo***, si un archivo se carga en un servidor en la nube, otras instancias que tengan una caché del archivo pueden no saber que el archivo ha sido actualizado, lo que puede causar problemas de coherencia de datos.

    * En un sistema multiprocesador, cada procesador puede tener su propia caché. Si un procesador modifica un valor en su caché, es posible que otro procesador que tenga una copia de ese valor en su propia cache no se dé cuenta de la actualización. ***Por ejemplo*** , si un programa se ejecuta en un sistema multiprocesador y cada procesador tiene su propia caché, si un procesador actualiza un valor, los otros procesadores que tengan una copia de ese valor pueden no saber que ha cambiado, lo que podría resultar en comportamientos inesperados.

    * En un sistema de un solo procesador, la caché del procesador puede contener datos que se han modificado en la memoria principal. Si la caché y la memoria principal no están sincronizadas correctamente, es posible que se produzcan comportamientos inesperados. ***Por ejemplo***, si un programa en un sistema de un solo procesador modifica una variable y luego se bloquea antes de guardar los cambios en la memoria pincipal, si otro programa intenta leer la variable antes de que los cambios se guarden, podría obtener un valor incorrecto.



