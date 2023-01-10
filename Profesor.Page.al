page 50101 Profesor
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Tabla profesores";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Id profesor"; Rec."Id profesor")
                {
                    ApplicationArea = All;

                }
                field("Nombre profesor"; Rec."Nombre profesor")
                {
                    ApplicationArea = All;

                }
                field(Direccion; Rec.Direccion)
                {
                    ApplicationArea = All;

                }
                field("Fecha contratacion"; Rec."Fecha contratacion")
                {
                    ApplicationArea = All;

                }
                field(Salario; Rec.Salario)
                {
                    ApplicationArea = All;

                }
                field(Departamento; Rec.Departamento)
                {
                    ApplicationArea = All;

                }
                field(Despacho; Rec.Despacho)
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