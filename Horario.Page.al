page 50105 Horario
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Tabla horarios";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Id horario"; Rec."Id horario")
                {
                    ApplicationArea = All;

                }

                field("Id curso"; Rec."Id curso")
                {
                    ApplicationArea = All;

                }

                field(Dia; Rec.Dia)
                {
                    ApplicationArea = All;

                }

                field("Hora inicio"; Rec."Hora inicio")
                {
                    ApplicationArea = All;

                }

                field("Hora final"; Rec."Hora final")
                {
                    ApplicationArea = All;

                }

                field(Duracion; Rec.Duracion)
                {
                    ApplicationArea = All;

                }


            }
        }
        area(Factboxes)
        {

        }
    }

}