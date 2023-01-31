page 50107 "Ficha cursos"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
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
            }
            group("a")
            {


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

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}