page 50100 "Pagina trabajadores"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Tabla trabajadores";
    CardPageId = "Ficha trabajadores";
    Caption = 'Workers', Comment = 'es="Trabajadores"';

    layout
    {
        area(Content)
        {
            repeater("Contenido pagina trabjador")
            {
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
                    Comment = 'es="Nombre"';

                    ToolTip = 'Nombre del trabajador';

                }
                field("Direccion trabajador"; Rec."Direccion trabajador")
                {
                    ApplicationArea = All;
                    Caption = 'Address',
                    Comment = 'es="Dirección"';

                    ToolTip = 'Dirección del trabajador';

                }
                field("Salario trabajador"; Rec."Salario trabajador")
                {
                    ApplicationArea = All;
                    Caption = 'Salary',
                    Comment = 'es="Salario"';

                    ToolTip = 'Salario del profesor';

                }
                field("Puesto trabajador"; Rec."Puesto trabajador")
                {
                    ApplicationArea = All;
                    Caption = 'Role',
                    Comment = 'es="Puesto"';
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
                    Comment = 'es="Profesor asignado"';

                    ToolTip = 'El profesor que tiene asignado en caso de que este trabajador sea un ayudante de profesor';

                    DrillDown = true;
                    DrillDownPageId = "Ficha profesores";
                }
            }
        }
    }

    var
        UsaAyudante: Boolean;
}