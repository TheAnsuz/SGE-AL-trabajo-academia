page 50110 "Ficha departamentos"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = "Tabla departamentos";
    PromotedActionCategories = 'Navigate',
    Comment = 'es="Navegar"';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General',
                Comment = 'es = "General"';
                field("Id departamento"; Rec."Id departamento")
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                    ToolTip = 'ID del departamento';
                }

                field("Despacho departamento"; Rec."Despacho departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Despacho',
                    comment = 'es="Office"';
                    ToolTip = 'Despacho asignado para el departamento';

                }

                field("Nombre departamento"; Rec."Nombre departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Name',
                    comment = 'es="Name"';
                    ToolTip = 'Nombre que recibe el departamento';

                }
            }
            group(Comunicacion)
            {
                Caption = 'Contact',
                Comment = 'es = "Comunicacion"';


                field("Jefe departamento"; Rec."Jefe departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Boss',
                    comment = 'es="Jefe"';
                    ToolTip = 'Profesor encargado del departamento';

                }
                field("Promedio tarifa departamento"; Rec."Promedio tarifa departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Average fee',
                    comment = 'es="Tarifa promedio"';
                    
                    ToolTip = 'El promedio de la tarifa del departamento';
                }
            }

            part("Lista Cursos"; "Subpagina cursos")
            {
                ApplicationArea = All;
                Editable = true;
                SubPageLink = "Departamento curso" = field("Id departamento");
                UpdatePropagation = Both;
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(Profesores)
            {
                Caption = 'Teachers',
                Comment = 'es="Profesores"';

                Promoted = True;
                PromotedCategory = New;
                PromotedOnly = True;

                Image = DepreciationBooks;

                RunObject = page "Pagina profesores";
                RunPageLink = "Departamento profesor" = field("Id departamento");
                RunPageMode = View;

                trigger OnAction()
                begin

                end;
            }

            action(Coordenador)
            {
                Caption = 'Coordination',
                Comment = 'es="Coordenador"';

                Promoted = True;
                PromotedCategory = New;
                PromotedOnly = True;

                RunObject = page "Ficha profesores";
                RunPageLink = "Id profesor" = field("Jefe departamento");
                RunPageMode = View;
            }
        }
    }

}