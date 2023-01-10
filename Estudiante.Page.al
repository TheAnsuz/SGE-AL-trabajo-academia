page 50103 Estudiante
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Estudiante;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Id Estudiante"; Rec."Id Estudiante")
                {
                    ApplicationArea = All;

                }
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;

                }
                field(Genero; Rec.Genero)
                {
                    ApplicationArea = All;

                }
                field(Direccion; Rec.Direccion)
                {
                    ApplicationArea = All;

                }
                field(Telefono; Rec.Telefono)
                {
                    ApplicationArea = All;

                }
                field("Fecha nacimiento"; Rec."Fecha nacimiento")
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