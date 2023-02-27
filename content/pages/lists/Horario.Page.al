page 50105 "Pagina horarios"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Tabla horarios";
    Caption = 'Horarios', Comment = 'es="Schedules"';
    layout
    {
        area(Content)
        {
            repeater("Contenido pagina horarios")
            {
                field("Id horario"; Rec."Id horario")
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                    ToolTip = 'ID propia del horario';

                }

                field("Id curso"; Rec."Id curso")
                {
                    ApplicationArea = All;
                    Caption = 'Course ID',
                    comment = 'es="ID Curso"';
                    ToolTip = 'ID del curso poseedor de este horario';

                }

                field("Dia horario"; Rec."Día horario")
                {
                    ApplicationArea = All;
                    Caption = 'Day',
                    comment = 'es="Día"';

                    ToolTip = 'Día de la semana en que se desarrolla el horario';

                }

                field("Hora inicio horario"; Rec."Hora inicio horario")
                {
                    ApplicationArea = All;
                    Caption = 'Begin hour',
                    comment = 'es="Hora inicio"';

                    ToolTip = 'Hora a la que inicia el horario';

                }

                field("Hora final horario"; Rec."Hora final horario")
                {
                    ApplicationArea = All;
                    Caption = 'Final hour',
                    comment = 'es="Hora final"';

                    ToolTip = 'Hora a la que finaliza el horario';

                }

                field("Duracion horario"; Rec."Duracion horario")
                {
                    ApplicationArea = All;
                    Caption = 'Time span',
                    comment = 'es="Duración"';
                    ToolTip = 'Duracion en minutos del horario';

                }
            }
        }
    }
}