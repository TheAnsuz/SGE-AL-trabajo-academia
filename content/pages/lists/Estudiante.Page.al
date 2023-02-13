page 50103 "Pagina estudiantes"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Tabla estudiantes";
    Caption = 'Estudiantes';
    CardPageId = "Ficha estudiantes";

    layout
    {
        area(Content)
        {
            repeater("Contenido pagina estudiantes")
            {
                field("Id Estudiante"; Rec."Id estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                    ToolTip = 'ID del estudiante';

                }
                field("Nombre estudiante"; Rec."Nombre estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Nombre';
                    ToolTip = 'Nombre del estudiante';

                }
                field("Genero estudiante"; Rec."Genero estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Género';
                    ToolTip = 'Género del estudiante (Masculino / Femenino)';

                }
                field("Direccion estudiante"; Rec."Direccion estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Dirección';
                    ToolTip = 'Dirección de residencia del estudiante';


                }
                field("Telefono estudiante"; Rec."Telefono estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Telefono';
                    ToolTip = 'Telefono del estudiante';

                }
                field("Fecha nacimiento"; Rec."Fecha nacimiento")
                {
                    ApplicationArea = All;
                    Caption = 'Fecha de nacimiento';
                    ToolTip = 'Fecha de nacimiento del estudiante';
                }
            }
        }
    }


}