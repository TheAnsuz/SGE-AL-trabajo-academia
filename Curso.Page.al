page 50104 "Pagina cursos"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Tabla cursos";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Id curso"; Rec."Id curso")
                {
                    ApplicationArea = All;
                }
                field("Nombre curso"; Rec."Nombre curso")
                {
                    ApplicationArea = All;
                }
                field("Descripcion curso"; Rec."Descripcion curso")
                {
                    ApplicationArea = All;
                }
                field("Horas totales"; Rec."Horas totales curso")
                {
                    ApplicationArea = All;
                }
                field("Tarifa laboratorio"; Rec."Tarifa laboratorio curso")
                {
                    ApplicationArea = All;
                }
                field(Profesor; Rec."Profesor curso")
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