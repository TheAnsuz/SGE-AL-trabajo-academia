page 50108 "Ficha estudiantes"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = "Tabla estudiantes";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Id Estudiante"; Rec."Id estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                    ToolTip = 'ID del estudiante';
                    Importance = Promoted;

                }
                field("Nombre estudiante"; Rec."Nombre estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Nombre';
                    ToolTip = 'Nombre del estudiante';
                    Importance = Standard;

                }
                field("Genero estudiante"; Rec."Genero estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Género';
                    ToolTip = 'Género del estudiante (Masculino / Femenino)';
                    Importance = Additional;

                }

                field("Fecha nacimiento"; Rec."Fecha nacimiento")
                {
                    ApplicationArea = All;
                    Caption = 'Fecha de nacimiento';
                    ToolTip = 'Fecha de nacimiento del estudiante';
                    Importance = Standard;
                }
            }
            group(Comunicacion)
            {
                Caption = 'Comunicación';

                field("Direccion estudiante"; Rec."Direccion estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Dirección';
                    ToolTip = 'Dirección de residencia del estudiante';
                    Importance = Standard;


                }
                field("Telefono estudiante"; Rec."Telefono estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Telefono';
                    ToolTip = 'Telefono del estudiante';
                    Importance = Standard;

                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}