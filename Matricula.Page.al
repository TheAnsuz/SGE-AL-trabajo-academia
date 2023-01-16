page 50126 Matricula
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Tabla matriculas";

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

                field("Id Curso"; Rec."Id Curso")
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