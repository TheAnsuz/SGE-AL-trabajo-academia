page 50112 "Subpagina Departamentos"
{
    PageType = ListPart;
    UsageCategory = None;
    SourceTable = "Tabla cursos";
    Caption = 'Courses',
    Comment = 'es="Cursos"';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Id curso"; Rec."Id curso")
                {
                    Caption = 'Course''s ID',
                    Comment = 'es="ID Curso"';
                    ApplicationArea = All;
                }
                field("Dia horario"; Rec."Nombre curso")
                {
                    Caption = 'Course''s name',
                    Comment = 'es="Nombre Curso"';
                    ApplicationArea = All;
                }
                field("Hora inicio horario"; Rec."Departamento curso")
                {
                    Caption = 'Course''s Description',
                    Comment = 'es="Descripcion del curso"';
                    ApplicationArea = All;
                }
                field("Hora final horario"; Rec."Profesor curso")
                {
                    Caption = 'Course''s Techer',
                    Comment = 'es="Profesor Curso"';
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(Matriculas)
            {
                Caption = 'Enrollments',
                Comment = 'es="Matrículas"';

                /*
                                Promoted = True;
                                PromotedCategory = New;
                                PromotedOnly = True;
                */
                RunObject = page "Pagina matriculas";
                // RunPageLink = ARREGLAR 
                RunPageMode = View;


            }
            action(Datos)
            {
                Caption = 'Open card',
                Comment = 'es="Abrir ficha"';
                /*
                                Promoted = true;
                                PromotedCategory = New;
                                PromotedOnly = true;
                */
                RunObject = page "Ficha cursos";
            }
        }
    }
}