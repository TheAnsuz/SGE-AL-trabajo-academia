page 50102 Departamento
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Tabla departamentos";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Despacho departamento"; Rec."Despacho departamento")
                {
                    ApplicationArea = All;

                }

                field("Nombre departamento"; Rec."Nombre departamento")
                {
                    ApplicationArea = All;

                }
                field("Jefe departamento"; Rec."Jefe departamento")
                {
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}