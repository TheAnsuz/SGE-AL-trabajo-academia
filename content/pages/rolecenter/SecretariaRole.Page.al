page 50115 "Secretaria Role Center"
{
    Caption = 'Secretary', Comment = 'es="Secretaría"';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {

            group(Principal)
            {
                part(Bienvenida; "Cabecera secretaría")
                {
                    Editable = false;
                    Caption = 'Welcome',
                    Comment = 'es="Bienvenid@"';
                }


                part("Departamentos"; "Cue secretaria pagina")
                {
                    Editable = false;
                    Caption = 'Operations',
                    Comment = 'es="Operaciones"';
                }

                part("Lista cursos"; "Subpagina cursos")
                {
                    Editable = false;
                    Caption = 'Courses',
                    Comment = 'es="Cursos"';
                }

                part("Lista departamentos"; "Subpagina departamentos")
                {
                    Editable = false;
                    Caption = 'Departments',
                    Comment = 'es="Departamentos"';
                }
            }

        }
    }


    actions
    {
        area(Creation)
        {

            action(CrearEstudiantes)
            {
                Caption = 'Student',
                Comment = 'es="Estudiante"';

                RunObject = page "Ficha estudiantes";
                RunPageMode = Create;
            }
            action(CrearProfesores)
            {
                Caption = 'Teacher',
                Comment = 'es="Profesor"';

                RunObject = page "Ficha profesores";
                RunPageMode = Create;
            }

            action(CrearTrabajadores)
            {
                Caption = 'Worker',
                Comment = 'es="Trabajador"';

                RunObject = page "Ficha trabajadores";
                RunPageMode = Create;
            }

            action(CrearCurso)
            {
                Caption = 'Course',
                Comment = 'es="Curso"';

                RunObject = page "Pagina cursos";
                RunPageMode = Create;
            }

            action(CrearMatriculas)
            {
                Caption = 'Enrollment',
                Comment = 'es="Matrícula"';

                RunObject = page "Ficha matriculas";
                RunPageMode = Create;
            }

            action(CrearDepartamentos)
            {
                Caption = 'Department',
                Comment = 'es="Departamentos"';

                RunObject = page "Ficha departamentos";
                RunPageMode = Create;
            }
        }

        area(Sections)
        {
            group(Navegar)
            {
                Caption = 'Navigate',
                Comment = 'es="Navegar"';

                action(VerEstudiantes)
                {
                    Caption = 'Students',
                    Comment = 'es="Estudiantes"';

                    RunObject = page "Pagina estudiantes";
                    RunPageMode = View;
                }

                action(VerProfesores)
                {
                    Caption = 'Teachers',
                    Comment = 'es="Estudiantes"';

                    RunObject = page "Pagina profesores";
                    RunPageMode = View;
                }

                action(VerTrabajadores)
                {
                    Caption = 'Workers',
                    Comment = 'es="Trabajadores"';

                    RunObject = page "Pagina trabajadores";
                    RunPageMode = View;
                }

                action(VerCursos)
                {
                    Caption = 'Courses',
                    Comment = 'es="Cursos"';

                    RunObject = page "Pagina cursos";
                    RunPageMode = View;
                }

                action(VerDepartamentos)
                {
                    Caption = 'Departments',
                    Comment = 'es="Departamentos"';

                    RunObject = page "Pagina departamentos";
                    RunPageMode = View;
                }

                action(VerMatriculas)
                {
                    Caption = 'Enrollments',
                    Comment = 'es="Matriculas"';

                    RunObject = page "Pagina matriculas";
                    RunPageMode = View;
                }

                action(VerHorarios)
                {
                    Caption = 'Schedules',
                    Comment = 'es="Horarios"';

                    RunObject = page "Pagina horarios";
                    RunPageMode = View;
                }
            }

        }
    }
}