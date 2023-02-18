page 50113 "Subpagina Horarios"
{
    PageType = ListPart;
    UsageCategory = None;
    SourceTable = "Tabla horarios";
    Caption = 'Course''s schedule',
    Comment = 'es="Horario curso"';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Id horario"; Rec."Id horario")
                {
                    Caption = 'ID',
                    Comment = 'es="ID"';
                    ApplicationArea = All;
                }
                field("Dia horario"; Rec."Día horario")
                {
                    Caption = 'Day',
                    Comment = 'es="Dia"';
                    ApplicationArea = All;
                }
                field("Hora inicio horario"; Rec."Hora inicio horario")
                {
                    Caption = 'Start time',
                    Comment = 'es="Hora inicio"';
                    ApplicationArea = All;
                }
                field("Hora final horario"; Rec."Hora final horario")
                {
                    Caption = 'Finish time',
                    Comment = 'es="Hora final"';
                    ApplicationArea = All;
                }
            }
        }
    }
}