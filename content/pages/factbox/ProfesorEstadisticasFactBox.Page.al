page 50119 "Estadisticas Profesor FactBox"
{
    PageType = CardPart;
    SourceTable = "Tabla profesores";
    Caption = 'Statistics',
    Comment = 'es="Estadísticas"';



    layout
    {
        area(Content)
        {
            field("Nº ayudantes"; Rec."Nº Ayudantes")
            {
                Caption = 'Helpers', comment = 'es="Ayudantes"';
                ApplicationArea = All;
            }

            field("Nº Cursos"; Rec."Nº Cursos")
            {
                Caption = 'Courses', comment = 'es="Cursos"';
                ApplicationArea = All;
            }
        }
    }
}