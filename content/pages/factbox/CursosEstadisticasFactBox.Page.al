page 50109 "Estadisticas Cursos FactBox"
{
    PageType = CardPart;
    SourceTable = "Tabla cursos";
    Caption = 'Statistics',
    Comment = 'es="Estadísticas"';



    layout
    {
        area(Content)
        {
            field("Matriculaciones curso"; Rec."Matriculaciones curso")
            {
                ApplicationArea = All;
            }

            field("Profesores curso"; Rec."Profesores curso")
            {
                ApplicationArea = All;
            }
        }
    }
}