page 50107 "Ficha cursos"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = "Tabla cursos";
    Caption = 'Course',
    Comment = 'es="Curso"';

    layout
    {
        area(Content)
        {
            group("General")
            {
                Caption = 'General',
                Comment = 'es="General"';
                field("Id curso"; Rec."Id curso")
                {
                    ApplicationArea = All;
                    Caption = 'ID',
                    Comment = 'es="ID"';
                    ToolTip = 'Course ID',
                    Comment = 'es="Id del curso"';
                    Importance = Promoted;
                }
                field("Nombre curso"; Rec."Nombre curso")
                {
                    ApplicationArea = All;
                    Caption = 'Name',
                    Comment = 'es="Nombre"';
                    ToolTip = 'Course''s name',
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
                    ToolTip = 'The amount of hours that the course ues',
                    Comment = 'es="Horas totales que se imparten en el curso"';
                    Importance = Standard;
                }

            }
            group("Profesor")
            {
                Caption = 'Teacher',
                Comment = 'es="Profesor"';

                field("Profesor curso"; Rec."Profesor curso")
                {
                    ApplicationArea = All;
                    Caption = 'Teacher',
                    Comment = 'es="Profesor"';
                    ToolTip = 'Assigned teacher',
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
                    Caption = 'Laboratory fee',
                    Comment = 'es="Tarifa laboratorio"';
                    ToolTip = 'Balance that this laboratory is holding',
                    Comment = 'es="Cantidad monetaria disponible en el laboratorio"';
                    Importance = Standard;
                }
                field("Nº Minutos curso"; Rec."Nº Minutos curso")
                {
                    ApplicationArea = All;
                    Caption = 'Total time (minutes)',
                    Comment = 'Minutos totales';
                    ToolTip = 'Total time in minutes dedicated to this course alone',
                    Comment = 'es="Tiempo total en minutos dedicado al curso en minutos"';
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