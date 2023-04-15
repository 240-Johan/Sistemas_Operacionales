## Taller 04

1. Las funciones y servicios proporcionados por el OS pueden dividirse en dos categorías,
descríbalas.
- Rta: 
    1. Funciones del sistema: son funciones dadas por el OS, su principal funcion es permitir que los programas se ejecuten en un entorno controlado y protegido, esto puede ser:
        * Comunicaciones: el OS proporciona servicios para que los programas se comuniquen con otros programas, como redes y dispositivos de almacenamiento externo
        * Administracion de memoria:  administra el uso de memoria para que cada programa tenga suficiente espacio para funcionar sin que interfiera en el de otros
        * Administracion de procesos: administra la ejecucion de procesos y programas, asignando recursos de hardware y memoria
        * Administracion de ficheros: es el software responsable de crear, borrar, modificar y controlar el acceso a los archivos, así como también de administrar los recursos usados por los archivos.
    2. Servicios de Usuario:
        * Interfaz de Usuario: Proporciona una interfaz grafica de usuario para que los usuarios interactuen de manera facil e intuitiva con la computadora  
        * Controladores de dispositivos: proporciona controladores para administrar y comunicarse con dispositivos de hardware como impresorar, escaneres e incluso perifericos
        * Herramientas  de utilidad: da herramientas de utilidad para que los usuarios puedan administrar y mantener la computadora, como el panel de control, el admin. de tareas entre otros
        * Servicios de red: proporciona servicios de red para que los usuarios puedan conectarse a redes y acceder a recursos compartidos en linea

2. Enumere cinco servicios proporcionados por el OS diseñados para facilitar la comodidad del
usuario.
- Rta: 
    1. (GUI) Interfaz Grafica de Usuario: permite a los usuarios interactuar con la computadora de manera facil e intuitiva, actualmmente los OS dan una GUI que incluye iconos, ventanas, menus desplegables, barras de herramientas
    2.Controladores de dispositivos: son programas que permiten que la computadora se comunique con dispositivos de hardware como impresoras, camaras, escaneres
    3. Herramientas de utilidad: proporcionan una serie de herramientas que permite que los usuarios administren y den mantenemiento  al pc
    4. Asistentes de configuracion: Algunos OS proporcionan asistentes para ayudar a los usuarios, sirven como guias a traves del proceso de configuracion de red, de hardware, correos entre otros
    5. Accesibilidad: tienen una variedad de caracteristicas de accesibilidad diseñadas para facilitar el uso de la computadora para personas con discapacidades fisicas

3. Describa como se puede generar un informe estadístico de la cantidad de tiempo y recursos
consumidos por un programa.
- Rta: Para generar un informe estadistico, se pueden utilizar herramientas de monitorieo y analisis de rendimientoque se integran con el sistema operativo o con el entorno de ejecucion
- en OS como windows, se utiliza monitor de actividad para obtener informacion detallada sobre el uso de recursos de hardware, tales como el uso de CPU, memoria RAM, disco duro entre otros
- una vez obtenida esta informacion, podemos generar un informe donde incluya datos como la cantidad de CPU y memoria RAM utilizada por el programa, el tiempo que tarda en ejecutarse, el numero de operaciones de entrada/salida, etc
- esto es util al momento de identificar problemas de rendimiento en el programa y para realizar ajustes y mejoras que permitan optimizar recursos

4. Enumere y describa cinco actividades de un OS enfocadas a la administración de archivos.
- Rta: 
    1. Creación de archivos: el sistema operativo permite la creación de archivos y su almacenamiento en dispositivos de almacenamiento como discos duros, unidades flash USB, CD / DVD, etc. Los archivos pueden ser creados por el usuario o por una aplicación y pueden contener texto, imágenes, videos, programas, etc.

    2. Organización de archivos: el sistema operativo proporciona herramientas para organizar archivos, como la creación de carpetas o directorios para agrupar archivos relacionados. Las carpetas pueden ser anidadas y pueden tener diferentes permisos y atributos para limitar el acceso de ciertos usuarios.

    3. Copiar, mover y eliminar archivos: el sistema operativo permite copiar, mover y eliminar archivos de manera eficiente. La copia y el movimiento de archivos implican la transferencia de datos entre dispositivos de almacenamiento, mientras que la eliminación de archivos implica la eliminación permanente de los datos del archivo.

    4. Búsqueda de archivos: el sistema operativo proporciona herramientas para buscar archivos en dispositivos de almacenamiento. Los usuarios pueden buscar archivos por nombre, tipo, fecha, tamaño y otros atributos para localizar archivos específicos.

    5. Protección de archivos: el sistema operativo proporciona herramientas para proteger archivos de accesos no autorizados. Esto incluye la asignación de permisos de archivo para limitar el acceso a usuarios específicos, la encriptación de archivos para protegerlos de la interceptación y la protección contra virus y malware que pueden dañar o corromper archivos.

5. Compare las ventajas y desventajas de usar la misma interfaz de llamadas al sistema para la
manipulación de archivos como de dispositivos.
- Rta:

    * Ventajas:

        * Simplifica el desarrollo de aplicaciones al proporcionar una interfaz unificada para la manipulación de archivos y dispositivos.
        * Reduce la complejidad del sistema operativo al tener una única interfaz de programación de aplicaciones (API) para manejar ambos tipos de recursos.
        * Permite a los desarrolladores reutilizar código y reducir la redundancia en el desarrollo de aplicaciones que requieren la manipulación de ambos recursos.
        * Mejora la eficiencia del sistema operativo al evitar la duplicación de código y reducir el uso de recursos.
        * si hay varios usuarios múltiples de t.e sistema, el sistema puede requerir que solicitemos primero el dispositivo, para asegurar el uso exclusivo del mismo. después de que hayamos terminado con el dispositivo, lo liberamos
    * Desventajas:

        * Puede limitar la flexibilidad de las aplicaciones al proporcionar una interfaz de llamadas al sistema genérica para manipular archivos y dispositivos. Esto puede dificultar el acceso a ciertas funcionalidades específicas de un recurso en particular.
        * Puede aumentar la complejidad de la API y hacerla más difícil de entender y utilizar para los desarrolladores.
        * Puede afectar negativamente el rendimiento del sistema operativo si se requiere una gran cantidad de verificaciones y validaciones de parámetros para asegurarse de que los recursos se manejen correctamente.
        * Puede aumentar el riesgo de errores o fallas del sistema si no se toman en cuenta las diferencias entre la manipulación de archivos y dispositivos.

6. Conteste las siguientes preguntas:
    * Cual es el propósito del interprete de comandos?
    * Por qué esta separado del kernel?
    * Liste los requisitos para desarrollar un interprete de comandos.
- Rta: 
    * ¿Cuál es el propósito del intérprete de comandos?
        * El intérprete de comandos, es un programa que proporciona una interfaz de usuario para interactuar con el sistema operativo. Su propósito es permitir al usuario ingresar comandos y recibir respuestas del sistema operativo. El intérprete de comandos es responsable de leer y analizar los comandos ingresados por el usuario, interpretarlos y ejecutarlos en el sistema operativo.

    * ¿Por qué está separado del kernel?
        * El intérprete de comandos está separado del kernel del sistema operativo para garantizar la seguridad y la estabilidad del sistema. El kernel es el núcleo del sistema operativo y se encarga de controlar el hardware del sistema y proporcionar acceso a los recursos del sistema a través de llamadas al sistema. Si el intérprete de comandos estuviera integrado en el kernel, cualquier error o falla en el intérprete podría tener un impacto directo en la estabilidad y la seguridad del sistema.

    * ¿Cuáles son los requisitos para desarrollar un intérprete de comandos?

       * Conocimiento de la sintaxis y semántica del lenguaje de comandos que se va a interpretar (por ejemplo, Bash, PowerShell, etc.).
        * Conocimiento de los comandos del sistema operativo y cómo interactuar con ellos a través de llamadas al sistema.
        * Experiencia en el diseño y desarrollo de interfaces de usuario y en la creación de programas en un lenguaje de programación de alto nivel, como C, Python, Ruby, etc.
        * Conocimientos sobre el manejo de errores y la validación de entradas del usuario para garantizar la seguridad y la estabilidad del sistema.
        * Conocimientos sobre el manejo de procesos y la gestión de recursos del sistema, como archivos y dispositivos.
        * Conocimientos sobre la configuración y personalización del intérprete de comandos, como la definición de variables de entorno, alias, etc.


7. Compare las ventajas y desventajas de los modelos de intercomunicación.
- Rta:
    * Ventajas de los modelos de intercomunicación:

        * Proporcionan un marco común para el diseño de aplicaciones que se comunican entre sí de manera efectiva.
        * Ayudan a garantizar que las aplicaciones sean interoperables y puedan compartir datos de manera segura y eficiente.
        * Proporcionan una forma estructurada y estandarizada de comunicación entre diferentes componentes de un sistema.
        * Facilitan la integración de diferentes aplicaciones y componentes de un sistema.
    * Desventajas de los modelos de intercomunicación:

        * Pueden introducir una sobrecarga de comunicación y latencia en el sistema debido a la necesidad de procesar y transmitir mensajes entre diferentes componentes.
        * Pueden ser difíciles de implementar y administrar en sistemas grandes y complejos con muchos componentes diferentes.
        * Pueden ser vulnerables a ataques de seguridad si no se implementan adecuadamente.
        * Pueden ser menos eficientes en términos de rendimiento que los sistemas monolíticos si se utilizan para comunicar entre componentes que están en el mismo sistema o servidor.

8. Conteste las siguientes preguntas:
    * Cual es la principal ventaja de usar microkernel en el diseño del OS?
    * Como interactúan los programas de usuario y los servicios del OS en una arquitectura
basada en microkernel?
    * Cuales son las desventajas de usar la arquitectura de microkernel?
- Rta:
    * La principal ventaja de usar un microkernel en el diseño del sistema operativo es que es más seguro y confiable que otros tipos de kernel. Esto se debe a que el microkernel es muy pequeño y solo proporciona servicios básicos, mientras que la mayoría de las funciones se proporcionan mediante servicios de espacio de usuario. Esto significa que si un servicio falla, solo afectará al programa que está utilizando el servicio, en lugar de al kernel completo. Además, el microkernel permite que los servicios del sistema operativo se agreguen o eliminen fácilmente sin tener que modificar el kernel, lo que hace que el sistema operativo sea más modular y escalable.

    * En una arquitectura basada en microkernel, los programas de usuario interactúan con los servicios del sistema operativo a través de una interfaz de programación de aplicaciones (API) proporcionada por el microkernel. Los servicios del sistema operativo se ejecutan en un espacio de usuario separado y se comunican con los programas de usuario a través de esta API. Cuando un programa de usuario necesita acceder a un servicio del sistema operativo, hace una llamada a la API del microkernel, que luego pasa la solicitud al servicio correspondiente en el espacio de usuario.

    * Algunas desventajas de usar una arquitectura basada en microkernel incluyen:

        * Debido a que los servicios del sistema operativo se ejecutan en el espacio de usuario en lugar del kernel, puede haber una sobrecarga de rendimiento debido a la necesidad de cambiar constantemente entre el espacio de usuario y el kernel.
        * La comunicación entre los servicios del sistema operativo puede ser más lenta debido a que se realiza a través de la API del microkernel en lugar de comunicación directa entre los servicios.
        * La modularidad del sistema operativo puede ser difícil de lograr si los servicios dependen mucho entre sí, lo que puede requerir cambios en el kernel para agregar o eliminar servicios.
        * La implementación de la seguridad en un microkernel puede ser complicada, especialmente si se necesita implementar características de seguridad avanzadas como control de acceso obligatorio (MAC) o virtualización segura.

9. Compare las ventajas y desventajas de usar VM.
- Rta:

- Ventajas: 

    * Crear cualquier sistema operativo
        * La gran mayoría de software de máquinas virtuales, como es el caso de VMWare, permite instalar casi cualquier sistema operativo (Windows, Linux Mac OS, Android, Chrome OS…). De esta forma se puede disponer en el mismo equipo o servidor de distintas máquinas virtuales con los sistemas operativos que sean necesarios.

    * Garantiza la independencia de cada entorno
        * Una máquina virtual encapsula todo lo necesario para su funcionamiento dentro de un entorno que es independiente, tanto del sistema operativo desde la que es creada, como con otras máquinas virtuales diferentes en el mismo servidor.
       
    * Acceso a recursos exclusivos
        * Cuando se crea una máquina virtual es necesario asignarle una serie de recursos como son la capacidad de proceso, la cantidad de memoria RAM o el espacio de almacenamiento. Esta asignación está limitada por el hardware físico de la máquina, pero una vez asignada una cantidad de los mismos, serán de uso exclusivo de esa máquina virtual.

    * Alto nivel de seguridad
        * Entre las ventajas del uso de máquinas virtuales se debe destacar el alto grado de protección y seguridad que ofrecen. Una máquina virtual se aísla del propio sistema operativo en el que está instalada, por lo que cualquier problema de seguridad, como puede ser una infección por malware, no afectará al servidor, equipo u otras máquinas virtuales.

    * Facilidad de exportación
        * Cuando se crea una máquina virtual se están generando una serie de archivos que encapsulan todo lo necesario para su funcionamiento independiente. Por este motivo, es sencillo copiar o exportar esta máquina para poder utilizarla en otro entorno diferente, es decir, pasarla de un servidor a otro, por ejemplo.

    * Reducción de costes
        * Para las empresas la virtualización es ideal para reducir sus costes. Con la contratación de un servicio cloud se pueden crear diferentes máquinas virtuales para poder satisfacer todas las necesidades de la empresa, sin que sea necesario realizar una inversión en hardware, por ejemplo.

- Desventajas: 

    * Gastos generales
        * las máquinas virtuales consumen más recursos que un contenedor.

    * Velocidad 
        * en algunos aspectos, las máquinas virtuales son más lentas. Tardan más en comenzar (posiblemente uno o dos minutos, en comparación con segundos para un contenedor). Las aplicaciones que alojan también pueden no ejecutarse tan rápido debido al hecho de que algunos de los recursos del sistema host están vinculados por el hipervisor de virtualización, dejando menos disponibles para que la aplicación los use.

    * Redundancia 
        * las máquinas virtuales se diseñaron asumiendo que cada máquina residiría en un único servidor. Si bien es posible crear redundancia para las máquinas virtuales al distribuirlas en un grupo de servidores, hacerlo requiere más esfuerzo, y es un proceso más complicado, que distribuir una aplicación en un grupo utilizando contenedores.

    * Imágenes voluminosas 
        * una imagen de máquina virtual que contiene un sistema operativo host (como la mayoría lo hace) generalmente consumirá al menos varios gigabytes de espacio, y posiblemente mucho más. En comparación, una imagen de contenedor podría tener solo unos pocos megabytes, ya que una imagen de contenedor no tiene que empaquetar un sistema operativo completo.

    * Nativo de la nube 
        * las máquinas virtuales son una tecnología que se generalizó hace décadas, mucho antes de la era de la nube. Debido a eso, hay una especie de sesgo cultural contra ellos, estimulado por la noción de que, a diferencia de los contenedores y los servidores sin servidor, las máquinas virtuales simplemente no son una tecnología nativa de la nube .
