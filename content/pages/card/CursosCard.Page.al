page 50107 "Ficha cursos"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = "Tabla cursos";



    layout
    {
        area(Content)
        {
            group("General")
            {
                Caption = 'General';
                field("Id curso"; Rec."Id curso")
                {
                    ApplicationArea = All;
                    Caption = 'ID';

                    ToolTip = 'ID of the course',
                    Comment = 'es="ID del curso"';

                    Importance = Promoted;
                }
                field("Nombre curso"; Rec."Nombre curso")
                {
                    ApplicationArea = All;
                    Caption = 'Name',
                    Comment = 'es="Name"';

                    ToolTip = 'Name of the course',
                    Comment = 'es="Nombre del curso"';

                    Importance = Promoted;
                }
                field("Descripcion curso"; Rec."Descripcion curso")
                {
                    ApplicationArea = All;
                    Caption = 'Description',
                    Comment = 'es="Descripción"';

                    ToolTip = 'Brief description of the course',
                    Comment = 'es="Pequeña descripción del curso"';

                    Importance = Standard;
                }
                field("Horas totales curso"; Rec."Horas totales curso")
                {
                    ApplicationArea = All;
                    Caption = 'Total hours',
                    Comment = 'es="Horas totales"';

                    ToolTip = 'Total of hours during the course',
                    Comment = 'es="Horas totales que se imparten en el curso"';
                    ;
                    Importance = Standard;
                }

            }
            group("Profesor")
            {
                Caption = 'Professor',
                Comment = 'es="Profesor"';
                field("Profesor curso"; Rec."Profesor curso")
                {
                    ApplicationArea = All;
                    Caption = 'Professor',
                    Comment = 'es="Profesor"';

                    ToolTip = 'Course''s assigned professor',
                    Comment = 'es="Profesor asignado al curso"';
                    Importance = Promoted;
                }
                field("Departamento curso"; Rec."Departamento curso")
                {
                    ApplicationArea = All;
                    Caption = 'Department',
                    Comment = 'es="Departamento"';

                    ToolTip = 'Department wich the course belongs',
                    Comment = 'es="Departamento en el que se impartirá el curso"';
                    Importance = Standard;
                }
                field("Tarifa laboratorio curso"; Rec."Tarifa laboratorio curso")
                {
                    ApplicationArea = All;
                    Caption = 'Laboratory tariff',
                    Comment = 'es="Tarifa laboratorio"';

                    ToolTip = 'Lab'' tariff',
                    Comment = 'es="Tarifa del laboratorio"';

                    Importance = Standard;
                }
                field("Nº Minutos curso"; Rec."Nº Minutos curso")
                {
                    ApplicationArea = All;
                    Caption = 'Total minutes',
                    Comment = 'es="Minutos totales"';

                    ToolTip = 'Total time in minutes of the course',
                    Comment = 'es="Tiempo total dedicado al curso en minutos"';

                    Importance = Standard;
                }
            }
        }

        area(FactBoxes)
        {

            part("Matriculaciones"; "Estadisticas Cursos FactBox")
            {
                Caption = 'Total matriculations',
                Comment = 'es="Matriculaciones"';
                SubPageView = sorting("Id curso");
            }
        }
    }



    actions
    {
       
    }

    var
        myInt: Integer;
}