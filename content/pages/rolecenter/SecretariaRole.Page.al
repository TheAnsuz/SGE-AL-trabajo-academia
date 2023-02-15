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
            }

        }
    }


    actions
    {
        area(Creation)
        {

            action(CrearEstudiantes)
            {
                Caption = 'Studient',
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
                    Caption = 'Studient',
                Comment = 'es="Estudiante"';

                    RunObject = page "Ficha estudiantes";
                    RunPageMode = View;
                }
            }

        }
    }
}