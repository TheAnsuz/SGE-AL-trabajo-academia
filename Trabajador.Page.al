page 50100 Trabajador
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Trabajador;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Id Trabajador"; Rec."Id Trabajador")
                {
                    ApplicationArea = All;

                }
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;

                }
                field(Direccion; Rec.Direccion)
                {
                    ApplicationArea = All;

                }
                field(Salario; Rec.Salario)
                {
                    ApplicationArea = All;

                }
                field(Puesto; Rec.Puesto)
                {
                    ApplicationArea = All;

                }
                field("Profesor asignado"; Rec."Profesor asignado")
                {
                    ApplicationArea = All;
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

                trigger OnAction();
                begin

                end;
            }
        }
    }
}