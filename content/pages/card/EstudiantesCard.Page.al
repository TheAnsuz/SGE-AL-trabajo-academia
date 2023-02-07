page 50108 "Ficha estudiantes"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = "Tabla estudiantes";
    Caption = 'Studients',
    Comment = 'es="Estudantes"';
    PromotedActionCategories = 'Actions,Navigate,null,null',
    Comment = 'Acciones,Navegar,null,null';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General',
                Comment = 'es="General"';
                field("Id Estudiante"; Rec."Id estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'ID',
                    Comment = 'es="ID"';
                    ToolTip = 'Studient ID',
                    Comment = 'es="ID del estudiante"';
                    Importance = Promoted;

                }
                field("Nombre estudiante"; Rec."Nombre estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Name',
                    Comment = 'es="Nombre"';
                    ToolTip = 'Studient name',
                    Comment = 'es="Nombre del estudiante"';
                    Importance = Standard;

                }
                field("Genero estudiante"; Rec."Genero estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Gender',
                    Comment = 'es="Género"';
                    ToolTip = 'Studient''s gender',
                    Comment = 'es="Género del estudiante"';
                    Importance = Additional;

                }

                field("Fecha nacimiento"; Rec."Fecha nacimiento")
                {
                    ApplicationArea = All;
                    Caption = 'Born date',
                    Comment = 'es="Fecha de nacimiento"';
                    ToolTip = 'Studient''s born date',
                    Comment = 'es="Fecha de nacimiento del estudiante"';
                    Importance = Standard;
                }
            }
            group(Comunicacion)
            {
                Caption = 'Comunication',
                Comment = 'es="Comunicación"';

                field("Direccion estudiante"; Rec."Direccion estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Address',
                    Comment = 'es="Dirección"';
                    ToolTip = 'Studient'' residential address',
                    Comment = 'es="Dirección de residencia del estudiante"';
                    Importance = Standard;
                }
                field("Telefono estudiante"; Rec."Telefono estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Phone no.',
                    Comment = 'es="Teléfono"';
                    ToolTip = 'Studient''s phone number',
                    Comment = 'es="Telefono del estudiante"';
                    Importance = Standard;

                }

            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action("Nueva matricula")
            {
                Caption = 'New enrollment',
                Comment = 'es="Nueva matrícula"';

                Promoted = true;
                PromotedCategory = New;

                RunObject = page "Ficha matriculas";
                

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}