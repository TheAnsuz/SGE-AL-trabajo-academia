page 50126 "Pagina matriculas"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Tabla matriculas";
    Caption = 'Matriculas', Comment = 'es="Enrollments"';
    CardPageId = "Ficha matriculas";

    layout
    {
        area(Content)
        {
            repeater("Contenido pagina matriculas")
            {
                field("Id Estudiante"; Rec."Id Estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Student''s ID',
                    Comment = 'es="ID del estudiante"';
                    ToolTip = 'ID del estudiante matriculado';

                    DrillDown = true;
                    DrillDownPageId = "Pagina estudiantes";
                }

                field("Id Curso"; Rec."Id Curso")
                {
                    ApplicationArea = All;
                    Caption = 'Course ID',
                    comment = 'es="ID Curso"';
                    ToolTip = 'ID del curso en el que esta matriculado el alumno';

                    DrillDown = true;
                    DrillDownPageId = "Pagina cursos";
                }

                field("Fecha matriculacion"; Rec."Fecha matriculacion")
                {
                    ApplicationArea = All;
                    Caption = 'Enrollment date',
                    comment = 'es="Fecha de matriculación"';

                    ToolTip = 'Fecha en la que se realizó la matriculación';


                }
                field("Hora matriculacion"; Rec."Hora matriculacion")
                {
                    ApplicationArea = All;
                    Caption = 'Enrollment time',
                    comment = 'es="Hora de matriculación"';

                    ToolTip = 'Hora en la que se realizó la matriculación';
                }
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            action("Accion navegacion informacion curso")
            {
                Caption = 'Información curso';
                ApplicationArea = All;
                RunObject = page "Ficha cursos";
                RunPageLink = "Id curso" = field("Id Curso");
            }
            action("Accion navegacion datos estudiante")
            {
                Caption = 'Datos estudiante';
                ApplicationArea = All;
                RunObject = page "Ficha estudiantes";
                RunPageLink = "Id estudiante" = field("Id Estudiante");
            }
            action("Accion navegacion matriculas estudiante")
            {
                Caption = 'Matriculas estudiante';
                ApplicationArea = All;
                RunObject = page "Pagina matriculas";
                RunPageLink = "Id Estudiante" = field("Id Estudiante");
                RunPageMode = View;
            }
        }
    }
}