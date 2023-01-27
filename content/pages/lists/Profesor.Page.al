page 50101 "Pagina profesores"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Tabla profesores";
    Caption = 'Profesores';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Id profesor"; Rec."Id profesor")
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                    ToolTip = 'ID del profesor';

                }
                field("Nombre profesor"; Rec."Nombre profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Nombre';
                    ToolTip = 'Nombre del profesor';

                }
                field("Direccion profesor"; Rec."Direccion profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Dirección';
                    ToolTip = 'Dirección del profesor';
                }
                field("Fecha contratacion profesor"; Rec."Fecha contratacion profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Fecha de contratación';
                    ToolTip = 'Fecha de contratación del profesor';
                }
                field("Salario profesor"; Rec."Salario profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Salario';
                    ToolTip = 'Salario que recive el profesor';

                }
                field("Departamento profesor"; Rec."Departamento profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Departamento';
                    ToolTip = 'Departamento en el que trabaja el profesor';

                }
                field("Despacho profesor"; Rec."Despacho profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Despacho';
                    ToolTip = 'Despacho del profesor';
                }
            }
        }
    }
}