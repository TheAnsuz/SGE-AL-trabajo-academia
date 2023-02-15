page 50104 "Pagina cursos"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Tabla cursos";
    Caption = 'Cursos';
    CardPageId = "Ficha cursos";
    layout
    {
        area(Content)
        {
            repeater("Contenido pagina cursos")
            {
                field("Id curso"; Rec."Id curso")
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                    ToolTip = 'ID del curso';
                }
                field("Nombre curso"; Rec."Nombre curso")
                {
                    ApplicationArea = All;
                    Caption = 'Name',
                    comment = 'es="Nombre"';
                    ToolTip = 'Nombre del curso';
                }
                field("Descripcion curso"; Rec."Descripcion curso")
                {
                    ApplicationArea = All;
                    Caption = 'Description',
                    comment = 'es="Descripción"';
                    ToolTip = 'Pequeña descripción del curso';
                }
                field("Horas totales curso"; Rec."Horas totales curso")
                {
                    ApplicationArea = All;
                    Caption = 'Total hours',
                    comment = 'es="Horas totales"';
                    ToolTip = 'Horas totales que se imparten en el curso';
                }
                field("Tarifa laboratorio curso"; Rec."Tarifa laboratorio curso")
                {
                    ApplicationArea = All;
                    Caption = 'Lab fee',
                    comment = 'es="Tarifa laboratorio"';
                    ToolTip = 'Cantidad monetaria disponible en el laboratorio';
                }
                field("Profesor curso"; Rec."Profesor curso")
                {
                    ApplicationArea = All;
                    Caption = 'Assigned teacher',
                    comment = 'es="Profesor asignado"';
                    ToolTip = 'Profesor asignado al curso';
                }
                field("Departamento curso"; Rec."Departamento curso")
                {
                    ApplicationArea = All;
                    Caption = 'Department',
                    comment = 'es="Departamento"';
                    ToolTip = 'Departamento en el que se impartirá el curso';
                }
                field("Nº Minutos curso"; Rec."Nº Minutos curso")
                {
                    ApplicationArea = All;
                    Caption = 'Total minutes',
                    comment = 'es="Minutos totales"';
                    ToolTip = 'Tiempo total dedicado al curso en minutos';
                }
            }

        }

    }
}