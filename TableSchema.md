## TABLAS
- - - 
1. ### Profesor
    - **ID** 
    - Nombre (*)
    - Dirección
    - Fecha de contratación
    - Salario (numérico positivo)
    - Puesto
    - _Departamento_ (*)
    - Despacho asignado (3 letras y 2 dígitos Ejemplo LAB04)

1. ### Trabajador
    - **ID**
    - Nombre (*)
    - Dirección
    - Salario (numérico positivo)
    - Puesto
1. ### Estudiante
    - **ID**
    - Nombre (*)
    - Sexo (Hombre / Mujer)
    - Dirección
    - Teléfono (Patrón)
    - Fecha nacimiento

1. ### EstudianteCurso
    - **Estudiante**
    - **Curso**
    - Fecha matriculación (*) (sistema)
    - Hora matriculación (*) (sistema)

1. ### Curso
    - **ID**
    - Nombre
    - Descripción
    - Horas totales (numérico positivo)
    - Tarifa de laboratorio (real con 2 decimales)
    - _Horario_
    - _Profesor_
1. ### Departamento
    - **ID**
    - Nombre
    - _Jefe departamento_ 

1. ### Horario??



## ENUMERADOS
- - - 
1. ### Género
    - Masculino
    - Femenino

1. ### Día
    - Lunes
    - Martes
    - Miércoles
    - Jueves
    - Viernes
