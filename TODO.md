

### Apartado 1
- - -
- ~~Tabla estudiantes: validar telefono~~
- ~~Curso: validar tarifa laboriatorio (real 2 decimales)~~
- ~~Curso: asignado a departamento~~
- ~~Curso: todo el tema de los horarios~~
- ~~Matriculacion: fecha y hora del sistema~~
- ~~Matriculacion: asignar estudiante y curso~~
- ~~Establecer las primary keys como NotNull~~

### Apartado 2
- - -
- ~~Asignar "ayudantes". Profesor tiene "Num.ayudantes"~~
- ~~Nº Cursos impartidos por cada profesor~~ 
- ~~Promedio tarifa de laboratorio de departamento~~
- ~~Nuevo campo calculado que user Flow Filter~~ 

### Apartado 3: Matrículas 
- - -
~~ 1. Página de tipo ficha que permita gestionar las matriculaciones de los estudiantes en cursos. ~~

~~ 1. Configura los FastTab asignando a los campos las importancias adecuadas. ~~

~~ 1. Los campos vinculados a otras tablas, mostrarán en sus desplegables además de los campos PK, aquellos campos que sean descriptivos de la información a seleccionar. ~~
~~ Además, estos desplegables, cuando se expandan mostrarán las páginas de tipo lista asociadas, que permitirán mostrar la ficha correspondiente al registro activo. ~~

 ~~ 1. Incluye acciones que permitan “navegar” por los cursos, así como por los datos del estudiante y las matrículas disponible para el estudiante. ~~  

    - (HECHO) Información Curso: muestra información completa sobre el curso actual a través de su página ficha.
    - (HECHO) Estudiante – Datos: muestra información completa del estudiante actual a través de su página ficha.
    - (HECHO) Estudiante – Matrículas: muestra información de las matrículas del estudiante actual a través de una página de tipo lista.

~~Será posible mostrar la página ficha asociada(“Ficha matrícula”), correspondiente al registro activo.~~ 

### Apartado 4: Cursos
- - -
~~ 1. Página de tipo ficha que permita gestionar los diferentes cursos. ~~

~~ 1. Organiza la información en al menos los siguientes FastTab: “General” y “Profesor”, y configuralos los FastTab asignando a los campos las importancias adecuadas. ~~

~~ 1. Los campos vinculados a otras tablas, mostrarán en sus desplegables además de los campos PK, aquellos campos que sean descriptivos de la información a seleccionar. Además, estos desplegables, cuando se expandan mostrarán las páginas de tipo lista asociadas, que permitirán mostrar la ficha correspondiente al registro activo. ~~

~~ 1. Dispondrá de un FactBox “Estadísticas” que muestre al menos el nº de alumnos matriculados y algún otro dato relevante que consideres interesante incluirlo. ~~ 

1. A través de una subpágina se mostrarán el horario del curso.

### Apartado 5: Estudiantes
- - -
~~ 1. Página de tipo ficha que permita gestionar los alumnos. ~~

~~ 1. Organiza la información en al menos los siguientes FastTab: “General” y “Comunicación”. Y configúralos asignando a los campos las importancias adecuadas.~~ 

~~ 1. Los campos vinculados a otras tablas, mostrarán en sus desplegables además de los campos PK, aquellos campos que sean descriptivos de la información a seleccionar.                                           Además, estos desplegables, cuando se expandan mostrarán las páginas de tipo lista asociadas, que permitirán mostrar la ficha correspondiente al registro activo. ~~

1. Incluye al menos en la página, las siguientes acciones:

    - Acciones – Nueva matrícula: permite introducir una nueva matrícula en la base de
datos, asociada al estudiante actual, a través de la página “Ficha matrícula” (modo
creación).
La acción se encuentra también promocionada.

    - Navegar – Matrículas: muestra las matrículas existentes del estudiante actual, a través
de una página de tipo lista.
Se podrá mostrar información detallada de una matrícula en particular, a través de su
página asociada “Ficha matrícula”.

### Apartado 6: Departamentos
- - -
~~ 1. Página de tipo ficha que permita gestionar los departamentos. ~~

~~ 1. Organiza la información en al menos los siguientes FastTab: “General” y “Comunicación”. Y configúralos asignando a los campos las importancias adecuadas. ~~

~~ 1. Los campos vinculados a otras tablas, mostrarán en sus desplegables además de los campos PK, aquellos campos que sean descriptivos de la información a seleccionar. Además, estos desplegables, cuando se expandan mostrarán las páginas de tipo lista asociadas, que permitirán mostrar la ficha correspondiente al registro activo. ~~

1. Incluye al menos en la página, las siguientes acciones:

    - Navegar – Profesores: muestra la lista de profesores pertenecientes al departamento activo. Además se podrá mostrar la página ficha asociada, correspondiente al registro activo.

    - Navegar – Coordenador: muestra el profesor jefe del departamento activo.

1. A través de una subpágina, se mostrarán los cursos ofertados (información resumida) por cada departamento. Dispondrá de las siguientes acciones:

    - Curso – Matrículas: muestra la lista de matrículas del curso activo. Además, se podrá mostrar información detallada de una matrícula en particular, a través de su página asociada “Ficha matrícula”.

    - Curso – Datos: muestra los datos del curso activo a través del formulario “Ficha curso".

### Apartado 7: Secretaría/Admón. 
- - -
1. Soon...

### Extra
- - -
- Comprobar que las cosas funcionan usando datos de ejemplo
- ~~Solucionar el proyecto falla al publicarse (no al copilarse)~~