page 50104 Curso
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Curso;

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
                field("Horas totales"; Rec."Horas totales")
                {
                    ApplicationArea = All;
                }
                field("Tarifa laboratorio"; Rec."Tarifa laboratorio")
                {
                    ApplicationArea = All;
                }
                field(Horario; Rec.Horario)
                {
                    ApplicationArea = All;
                }
                field(Profesor; Rec.Profesor)
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