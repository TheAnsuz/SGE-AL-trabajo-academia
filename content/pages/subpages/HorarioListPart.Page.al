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
                    ApplicationArea = All;
                }
                field("Dia horario"; Rec."Día horario")
                {
                    ApplicationArea = All;
                }
                field("Hora inicio horario"; Rec."Hora inicio horario")
                {
                    ApplicationArea = All;
                }
                field("Hora final horario"; Rec."Hora final horario")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}