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
                    Caption = 'Nombre';
                    ToolTip = 'Nombre del curso';
                }
                field("Descripcion curso"; Rec."Descripcion curso")
                {
                    ApplicationArea = All;
                    Caption = 'Descripción';
                    ToolTip = 'Pequeña descripción del curso';
                }
                field("Horas totales curso"; Rec."Horas totales curso")
                {
                    ApplicationArea = All;
                    Caption = 'Horas totales';
                    ToolTip = 'Horas totales que se imparten en el curso';
                }
                field("Tarifa laboratorio curso"; Rec."Tarifa laboratorio curso")
                {
                    ApplicationArea = All;
                    Caption = 'Tarifa laboratorio';
                    ToolTip = 'Cantidad monetaria disponible en el laboratorio';
                }
                field("Profesor curso"; Rec."Profesor curso")
                {
                    ApplicationArea = All;
                    Caption = 'Profesor';
                    ToolTip = 'Profesor asignado al curso';
                }
                field("Departamento curso"; Rec."Departamento curso")
                {
                    ApplicationArea = All;
                    Caption = 'Departamento';
                    ToolTip = 'Departamento en el que se impartirá el curso';
                }
                field("Nº Minutos curso"; Rec."Nº Minutos curso")
                {
                    ApplicationArea = All;
                    Caption = 'Minutos totales';
                    ToolTip = 'Tiempo total dedicado al curso en minutos';
                }
            }

        }

    }
}