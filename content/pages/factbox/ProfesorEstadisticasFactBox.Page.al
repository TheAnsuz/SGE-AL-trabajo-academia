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
                DrillDown = true;
                DrillDownPageId = "Pagina trabajadores";
                ApplicationArea = All;

                /*
                trigger OnDrillDown()
                var
                    Filtro: Record "Tabla trabajadores";
                    Pagina: Integer;
                begin
                    Pagina := Page::"Pagina trabajadores";
                    Filtro.SetFilter("Profesor asignado", Rec."Id profesor");

                    Page.Run(Pagina, Filtro);
                end;
                */
            }

            field("Nº Cursos"; Rec."Nº Cursos")
            {
                Caption = 'Courses', comment = 'es="Cursos"';
                DrillDown = true;
                DrillDownPageId = "Pagina cursos";
                ApplicationArea = All;
                /*
                trigger OnDrillDown()
                var
                    Filtro: Record "Tabla cursos";
                    Pagina: Integer;
                begin
                    Pagina := Page::"Pagina cursos";
                    Filtro.SetFilter("Departamento curso", Rec."Departamento profesor");

                    Page.Run(Pagina, Filtro);
                end;
                */
            }
        }
    }
}