page 50102 "Pagina departamentos"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Tabla departamentos";
    Caption = 'Departamentos';

    layout
    {
        area(Content)
        {
            repeater("Contenido pagina departamentos")
            {
                field("Despacho departamento"; Rec."Despacho departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Despacho';
                    ToolTip = 'Despacho asignado para el departamento';

                }

                field("Nombre departamento"; Rec."Nombre departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Nombre';
                    ToolTip = 'Nombre que recive el departamento';

                }
                field("Jefe departamento"; Rec."Jefe departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Jefe';
                    ToolTip = 'Profesor encargado del departamento';

                }
                field("Promedio tarifa departamento"; Rec."Promedio tarifa departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Tarifa promedio';
                    ToolTip = 'El promedio de la tarifa del departamento';
                }
            }
        }
    }
}