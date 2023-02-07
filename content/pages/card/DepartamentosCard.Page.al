page 50110 "Ficha departamentos"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = "Tabla departamentos";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General',
                Comment = 'es = "General"';
                field("Id departamento"; Rec."Id departamento")
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                    ToolTip = 'ID del departamento';
                }

                field("Despacho departamento"; Rec."Despacho departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Despacho';
                    ToolTip = 'Despacho asignado para el departamento';

                }

                field("Nombre departamento"; Rec."Nombre departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Nombre';
                    ToolTip = 'Nombre que recibe el departamento';

                }
            }
            group(Comunicacion)
            {
                Caption = 'Contact',
                Comment = 'es = "Comunicacion"';


                field("Jefe departamento"; Rec."Jefe departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Jefe';
                    ToolTip = 'Profesor encargado del departamento';

                }
                field("Promedio tarifa departamento"; Rec."Promedio tarifa departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Tarifa promedio';
                    ToolTip = 'El promedio de la tarifa del departamento';
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

}