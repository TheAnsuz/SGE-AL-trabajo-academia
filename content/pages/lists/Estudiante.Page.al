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
                    Caption = 'Name',
                    comment = 'es="Nombre"';
                    ToolTip = 'Nombre del estudiante';

                }
                field("Genero estudiante"; Rec."Genero estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Genre',
                    comment = 'es="Género"';
                    ToolTip = 'Género del estudiante (Masculino / Femenino)';

                }
                field("Direccion estudiante"; Rec."Direccion estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Address',
                    comment = 'es="Dirección"';
                    ToolTip = 'Dirección de residencia del estudiante';


                }
                field("Telefono estudiante"; Rec."Telefono estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Phone',
                    comment = 'es="Teléfono"';

                    ToolTip = 'Telefono del estudiante';

                }
                field("Fecha nacimiento"; Rec."Fecha nacimiento")
                {
                    ApplicationArea = All;
                    Caption = 'Birthdate',
                    comment = 'es="Fecha de nacimiento"';
                    ToolTip = 'Fecha de nacimiento del estudiante';
                }
            }
        }
    }


}