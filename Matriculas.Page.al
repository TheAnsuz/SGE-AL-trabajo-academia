page 50126 "Pagina matriculas"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Tabla matriculas";
    Caption = 'Matriculas';

    layout
    {
        area(Content)
        {
            repeater("Contenido pagina matriculas")
            {
                field("Id Estudiante"; Rec."Id Estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'ID Estudiante';
                    ToolTip = 'ID del estudiante matriculado';


                }

                field("Id Curso"; Rec."Id Curso")
                {
                    ApplicationArea = All;
                    Caption = 'ID Curso';
                    ToolTip = 'ID del curso en el que esta matriculado el alumno';
                }

                field("Fecha matriculacion"; Rec."Fecha matriculacion")
                {
                    ApplicationArea = All;
                    Caption = 'Fecha de matriculación';
                    ToolTip = 'Fecha en la que se realizó la matriculación';
                }
                field("Hora matriculacion"; Rec."Hora matriculacion")
                {
                    ApplicationArea = All;
                    Caption = 'Hora de matriculación';
                    ToolTip = 'Hora en la que se realizó la matriculación';
                }
            }
        }
    }
}