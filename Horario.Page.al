page 50105 "Pagina horarios"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Tabla horarios";
    Caption = 'Horarios';
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
                    Caption = 'ID Curso';
                    ToolTip = 'ID del curso poseedor de este horario';

                }

                field("Dia horario"; Rec."Día horario")
                {
                    ApplicationArea = All;
                    Caption = 'Día';
                    ToolTip = 'Día de la semana en que se desarrolla el horario';

                }

                field("Hora inicio horario"; Rec."inicio horario")
                {
                    ApplicationArea = All;
                    Caption = 'Hora inicio';
                    ToolTip = 'Hora a la que inicia el horario';

                }

                field("Hora final horario"; Rec."Hora final horario")
                {
                    ApplicationArea = All;
                    Caption = 'Hora final';
                    ToolTip = 'Hora a la que finaliza el horario';

                }

                field("Duracion horario"; Rec."Duracion horario")
                {
                    ApplicationArea = All;
                    Caption = 'Duracion';
                    ToolTip = 'Duracion en minutos del horario';

                }
            }
        }
    }
}