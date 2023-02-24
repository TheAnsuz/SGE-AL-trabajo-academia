page 50111 "Ficha profesores"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = "Tabla profesores";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'es="General"';
                field("Id profesor"; Rec."Id profesor")
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                    ToolTip = 'ID del profesor';

                }
                field("Nombre profesor"; Rec."Nombre profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Name',
                    comment = 'es="Nombre"';
                    ToolTip = 'Nombre del profesor';

                }
                field("Direccion profesor"; Rec."Direccion profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Direction',
                    comment = 'es="Dirección"';
                    ToolTip = 'Dirección del profesor';
                }
            }
            group(Laboral)
            {
                Caption = 'Work', comment = 'es="Laboral"';

                field("Fecha contratacion profesor"; Rec."Fecha contratacion profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Hiring date',
                    comment = 'es="Fecha de contratación"';
                    ToolTip = 'Fecha de contratación del profesor';
                }
                field("Salario profesor"; Rec."Salario profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Salary',
                    comment = 'es="Salario"';

                    ToolTip = 'Salario que recibe el profesor';

                }
                field("Departamento profesor"; Rec."Departamento profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Department',
                    comment = 'es="Departamento"';
                    ToolTip = 'Departamento en el que trabaja el profesor';

                }
                field("Despacho profesor"; Rec."Despacho profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Office',
                    comment = 'es="Despacho"';

                    ToolTip = 'Despacho del profesor';
                }
            }
        }
        area(FactBoxes)
        {

            part("Estadisticas"; "Estadisticas Profesor FactBox")
            {
                Caption = 'Statistics',
                Comment = 'es="Estadísticas"';

                SubPageView = sorting("Id profesor");
            }
        }
    }
}