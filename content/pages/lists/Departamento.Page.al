page 50102 "Pagina departamentos"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Tabla departamentos";
    CardPageId = "Ficha departamentos";
    Caption = 'Departamentos';

    layout
    {
        area(Content)
        {
            repeater("Contenido pagina departamentos")
            {
                field("Id departamento"; Rec."Id departamento")
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                    ToolTip = 'ID del departamento';
                }
                field("Despacho departamento"; Rec."Despacho departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Office',
                    comment = 'es="Oficina"';
                    ToolTip = 'Despacho asignado para el departamento';

                }

                field("Nombre departamento"; Rec."Nombre departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Name',
                    comment = 'es="Nombre"';
                    ToolTip = 'Nombre que recibe el departamento';

                }
                field("Jefe departamento"; Rec."Jefe departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Boss',
                    comment = 'es="Jefe"';
                    ToolTip = 'Profesor encargado del departamento';
                    DrillDown = true;
                    DrillDownPageId = "Ficha profesores";

                }
                field("Promedio tarifa departamento"; Rec."Promedio tarifa departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Average fee',
                    comment = 'es="Tarifa promedio"';

                    ToolTip = 'El promedio de la tarifa del departamento';
                }
            }
        }
    }
}