page 50118 "Subpagina departamentos"
{
    PageType = ListPart;
    UsageCategory = None;
    SourceTable = "Tabla departamentos";
    Caption = 'Departments',
    Comment = 'es="Departamentos"';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Id departamento"; Rec."Id departamento")
                {
                    Caption = 'Department''s ID',
                    Comment = 'es="ID Departamento"';
                    DrillDown = true;
                    DrillDownPageId = "Ficha departamentos";
                    ApplicationArea = All;
                }
                field("Nombre departamento"; Rec."Nombre departamento")
                {
                    Caption = 'Name',
                    Comment = 'es="Nombre"';
                    ApplicationArea = All;
                }
                field("Despacho departamento"; Rec."Despacho departamento")
                {
                    Caption = 'Office',
                    Comment = 'es="Despacho"';
                    ApplicationArea = All;
                }
            }
        }
    }
}