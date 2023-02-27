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
                Caption = 'Enrollments', comment = 'es="Matriculaciones"';
                DrillDownPageId = "Pagina matriculas";
                ApplicationArea = All;
            }

            field("Profesores curso"; Rec."Profesores curso")
            {
                Caption = 'Teachers', comment = 'es="Profesores"';
                DrillDownPageId = "Pagina cursos";
                ApplicationArea = All;
            }
        }
    }
}