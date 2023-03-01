page 50120 "Subpagina matriculas"
{
    PageType = ListPart;
    UsageCategory = None;
    SourceTable = "Tabla matriculas";
    Caption = 'Enrollments',
    Comment = 'es="Matriculas"';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Id curso"; Rec."Id Curso")
                {
                    Caption = 'Course ID',
                    Comment = 'es="ID Curso"';
                    ApplicationArea = All;
                }
                field("Id estudiante"; Rec."Id Estudiante")
                {
                    Caption = 'Student ID',
                    Comment = 'es="ID Estudiante"';
                    ApplicationArea = All;
                }
                field("Fecha matriculacion"; Rec."Fecha matriculacion")
                {
                    Caption = 'Enrollment day',
                    Comment = 'es="Dia matriculacion"';
                    ApplicationArea = All;
                }
                field("Hora matriculacion"; Rec."Hora matriculacion")
                {
                    Caption = 'Enrollment time',
                    Comment = 'es="Hora matriculacion"';
                    ApplicationArea = All;
                }

            }
        }
    }
    actions
    {
        area(Processing)
        {

            group(Matricula)
            {
                action(Estudiante)
                {
                    Caption = 'View student',
                    Comment = 'es="Ver Alumno"';


                    RunObject = page "Ficha estudiantes";
                    RunPageLink = "Id estudiante" = field("Id Estudiante");
                    RunPageMode = View;

                    Image = View;

                }
                action(Curso)
                {
                    Caption = 'Open course',
                    Comment = 'es="Abrir curso"';

                    RunObject = page "Ficha cursos";
                    RunPageLink = "Id curso" = field("Id Curso");
                    RunPageMode = View;

                    Image = View;
                }
            }

        }
    }

}