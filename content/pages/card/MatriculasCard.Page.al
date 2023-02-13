page 50106 "Ficha matriculas"
{
    PageType = Card;
    UsageCategory = None;
    DataCaptionExpression = 'Matricula ' + Rec."Id estudiante" + ' -' + Rec."Id Curso";
    SourceTable = "Tabla matriculas";
    Caption = 'Enrollments',
    Comment = 'es="Matriculas"';

    PromotedActionCategories = 'Information,Student',
    Comment = 'es="Información,Estudiante"';

    layout
    {
        area(Content)
        {
            group("Claves ficha matricula")
            {
                Caption = 'General',
                Comment = 'es="General"';
                field("Id Estudiante"; Rec."Id Estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Studient ID',
                    Comment = 'es="ID Estudiante"';
                    ToolTip = 'ID of the studient',
                    Comment = 'es="ID del estudiante"';
                    Importance = Standard;
                }

                field("Id Curso"; Rec."Id Curso")
                {
                    ApplicationArea = All;
                    // Continuar traduccion a partir de aqui
                    Caption = 'Course ID',
                    Comment = 'es="ID Curso"';
                    ToolTip = 'The ID of the course that this enrollment',
                    Comment = 'es="ID del curso en el que esta matriculado el alumno"';
                    Importance = Standard;
                }
            }
            group("Horarios ficha matricula")
            {
                Caption = 'Schedule',
                Comment = 'es="Horarios"';
                field("Fecha matriculacion"; Rec."Fecha matriculacion")
                {
                    ApplicationArea = All;
                    Caption = 'Date of enrollment',
                    Comment = 'es="Fecha de matriculación"';
                    ToolTip = 'Date in wich the enrollment was registered',
                    Comment = 'es="Fecha en la que se realizó la matriculación"';
                    Importance = Standard;
                }
                field("Hora matriculacion"; Rec."Hora matriculacion")
                {
                    ApplicationArea = All;
                    Caption = 'Hour of enrollment',
                    Comment = 'es="Hora de matriculación"';
                    ToolTip = 'Hour of day in wich the enrollment was registered',
                    Comment = 'es="Hora en la que se realizó la matriculación"';
                    Importance = Standard;
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(Curso)
            {
                Caption = 'Course',
                Comment = 'es="Curso"';

                ApplicationArea = All;

                PromotedCategory = New;
                Promoted = True;
                PromotedOnly = true;

                RunObject = page "Ficha cursos";
                RunPageLink = "Id curso" = field("Id Curso");
                RunPageMode = View;

            }

            action(Datos)
            {
                Caption = 'Info',
                Comment = 'es="Datos"';

                ApplicationArea = All;

                PromotedCategory = Process;
                Promoted = True;
                PromotedOnly = true;

                RunObject = page "Ficha estudiantes";
                RunPageLink = "Id estudiante" = field("Id Estudiante");
                RunPageMode = View;
            }

            action(Matricula)
            {
                Caption = 'Enrollment',
                Comment = 'es="Matrícula"';

                ApplicationArea = all;

                PromotedCategory = Process;
                Promoted = True;
                PromotedOnly = true;

                RunObject = page "Pagina matriculas";
                RunPageLink = "Id Estudiante" = field("Id Estudiante");
                RunPageMode = View;
            }
        }
    }
}