page 50114 "Ficha trabajadores"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = "Tabla trabajadores";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', Comment = 'es="General"';
                field("Id trabajador"; Rec."Id Trabajador")
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                    ToolTip = 'ID del trabajador';

                }
                field("Nombre trabajador"; Rec."Nombre trabajador")
                {
                    ApplicationArea = All;
                    Caption = 'Name',
                    comment = 'es="Nombre"';
                    ToolTip = 'Nombre del trabajador';

                }
                field("Direccion trabajador"; Rec."Direccion trabajador")
                {
                    ApplicationArea = All;
                    Caption = 'Direction',
                    comment = 'es="Dirección"';
                    ToolTip = 'Dirección del trabajador';

                }
                field("Salario trabajador"; Rec."Salario trabajador")
                {
                    ApplicationArea = All;
                    Caption = 'Salary',
                    comment = 'es="Salario"';
                    ToolTip = 'Salario del profesor';

                }
                field("Puesto trabajador"; Rec."Puesto trabajador")
                {
                    ApplicationArea = All;
                    Caption = 'Role',
                    comment = 'es="Puesto"';
                    ToolTip = 'Puesto en el que trabaja el trabajador';
                    trigger OnValidate()
                    begin
                        UsaAyudante := Rec."Puesto trabajador" = Enum::"Role enum"::Ayudante;
                    end;
                }
                field("Profesor asignado"; Rec."Profesor asignado")
                {
                    Enabled = UsaAyudante;
                    ApplicationArea = All;
                    Caption = 'Assigned teacher',
                    comment = 'es="Profesor asignado"';
                    DrillDownPageId = "Ficha profesores";
                    ToolTip = 'El profesor que tiene asignado en caso de que este trabajador sea un ayudante de profesor';
                }
            }
        }
    }

    var
        UsaAyudante: Boolean;
}