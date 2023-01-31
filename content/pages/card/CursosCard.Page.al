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
                    ToolTip = 'ID del curso';
                    Importance = Promoted;
                }
                field("Nombre curso"; Rec."Nombre curso")
                {
                    ApplicationArea = All;
                    Caption = 'Nombre';
                    ToolTip = 'Nombre del curso';
                    Importance = Promoted;
                }
                field("Descripcion curso"; Rec."Descripcion curso")
                {
                    ApplicationArea = All;
                    Caption = 'Descripción';
                    ToolTip = 'Pequeña descripción del curso';
                    Importance = Standard;
                }
                field("Horas totales curso"; Rec."Horas totales curso")
                {
                    ApplicationArea = All;
                    Caption = 'Horas totales';
                    ToolTip = 'Horas totales que se imparten en el curso';
                    Importance = Standard;
                }

            }
            group("Profesor")
            {
                Caption = 'Profesor';
                field("Profesor curso"; Rec."Profesor curso")
                {
                    ApplicationArea = All;
                    Caption = 'Profesor';
                    ToolTip = 'Profesor asignado al curso';
                    Importance = Promoted;
                }
                field("Departamento curso"; Rec."Departamento curso")
                {
                    ApplicationArea = All;
                    Caption = 'Departamento';
                    ToolTip = 'Departamento en el que se impartirá el curso';
                    Importance = Standard;
                }
                field("Tarifa laboratorio curso"; Rec."Tarifa laboratorio curso")
                {
                    ApplicationArea = All;
                    Caption = 'Tarifa laboratorio';
                    ToolTip = 'Cantidad monetaria disponible en el laboratorio';
                    Importance = Standard;
                }
                field("Nº Minutos curso"; Rec."Nº Minutos curso")
                {
                    ApplicationArea = All;
                    Caption = 'Minutos totales';
                    ToolTip = 'Tiempo total dedicado al curso en minutos';
                    Importance = Standard;
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