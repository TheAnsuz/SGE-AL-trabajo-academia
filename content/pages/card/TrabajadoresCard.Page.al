page 50112 "Ficha trabajadores"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = "Tabla trabajadores";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Id trabajador"; Rec."Id Trabajador")
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                    ToolTip = 'ID del trabajador';

                }
                field("Nombre trabajador"; Rec."Nombre trabajador")
                {
                    ApplicationArea = All;
                    Caption = 'Nombre';
                    ToolTip = 'Nombre del trabajador';

                }
                field("Direccion trabajador"; Rec."Direccion trabajador")
                {
                    ApplicationArea = All;
                    Caption = 'Dirección';
                    ToolTip = 'Dirección del trabajador';

                }
                field("Salario trabajador"; Rec."Salario trabajador")
                {
                    ApplicationArea = All;
                    Caption = 'Salario';
                    ToolTip = 'Salario del profesor';

                }
                field("Puesto trabajador"; Rec."Puesto trabajador")
                {
                    ApplicationArea = All;
                    Caption = 'Puesto';
                    ToolTip = 'Puesto en el que trabaja el trabajador';
                }
                field("Profesor asignado"; Rec."Profesor asignado")
                {
                    ApplicationArea = All;
                    Caption = 'Profesor asignado';
                    ToolTip = 'El profesor que tiene asignado en caso de que este trabajador sea un ayudante de profesor';
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