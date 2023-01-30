page 50106 "Ficha matriculas"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = "Tabla matriculas";

    layout
    {
        area(Content)
        {
            group("Claves ficha matricula")
            {
                Caption = 'General';
                field("Id Estudiante"; Rec."Id Estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'ID Estudiante';
                    ToolTip = 'ID del estudiante matriculado';
                    Importance = Standard;
                }

                field("Id Curso"; Rec."Id Curso")
                {
                    ApplicationArea = All;
                    Caption = 'ID Curso';
                    ToolTip = 'ID del curso en el que esta matriculado el alumno';
                    Importance = Standard;
                }
            }
            group("Horarios ficha matricula")
            {
                Caption = 'Horarios';
                field("Fecha matriculacion"; Rec."Fecha matriculacion")
                {
                    ApplicationArea = All;
                    Caption = 'Fecha de matriculación';
                    ToolTip = 'Fecha en la que se realizó la matriculación';
                    Importance = Standard;
                }
                field("Hora matriculacion"; Rec."Hora matriculacion")
                {
                    ApplicationArea = All;
                    Caption = 'Hora de matriculación';
                    ToolTip = 'Hora en la que se realizó la matriculación';
                    Importance = Standard;
                }
            }
        }
    }
}