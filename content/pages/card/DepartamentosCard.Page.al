page 50110 "Ficha departamentos"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = "Tabla departamentos";
    //DataCaptionExpression = 'Departamento ' + Rec."Id departamento";
    PromotedActionCategories = 'Navigate',
    Comment = 'es="Navegar"';
    Caption = 'Departamento', Comment = 'es="Departamentos"';

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

                    trigger OnValidate()
                    begin
                        //Message(Rec."Id departamento");
                        Fix.SetDepartment(Rec."Id departamento");
                    end;
                }

                field("Despacho departamento"; Rec."Despacho departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Office',
                    comment = 'es="Despacho"';

                }

                field("Nombre departamento"; Rec."Nombre departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Name',
                    comment = 'es="Nombre"';

                }
            }
            group(Comunicacion)
            {
                Caption = 'Contact',
                Comment = 'es = "Informacion de contacto"';


                field("Jefe departamento"; Rec."Jefe departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Boss',
                    comment = 'es="Jefe"';

                    DrillDown = true;
                    DrillDownPageId = "Ficha profesores";

                }
                field("Promedio tarifa departamento"; Rec."Promedio tarifa departamento")
                {
                    ApplicationArea = All;
                    Caption = 'Average fee',
                    comment = 'es="Tarifa promedio"';
                }
            }

            part("Lista Cursos"; "Subpagina cursos")
            {
                ApplicationArea = All;
                // Preguntar a Macarena como organizarla
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

                /*
                trigger OnAction()
                var
                    Teacher: record "Tabla profesores";
                    Courses: record "Tabla cursos";
                    TeachersPageID: Integer;
                begin

                    Courses."Profesor curso"

                    TeachersPageID := Page::"Pagina profesores";

                    Page.Run(TeachersPageID, Teacher);
                end;
                */
            }

            action(Coordenador)
            {
                Caption = 'Coordinator',
                Comment = 'es="Coordinador"';

                Promoted = True;
                PromotedCategory = New;
                PromotedOnly = True;

                RunObject = page "Ficha profesores";
                RunPageLink = "Id profesor" = field("Jefe departamento");
                RunPageMode = View;
            }

            action(Cursos)
            {
                Caption = 'Courses',
                Comment = 'es="Cursos"';

                Promoted = True;
                PromotedCategory = New;
                PromotedOnly = True;

                RunObject = page "Pagina cursos";
                RunPageLink = "Departamento curso" = field("Id departamento");
                RunPageMode = View;
            }
        }
    }

    var
        Fix: Codeunit "Course fix codeunit";

    trigger OnOpenPage()
    begin
        Fix.SetDepartment(Rec."Id departamento");
    end;
}