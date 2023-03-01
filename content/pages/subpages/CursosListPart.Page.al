page 50112 "Subpagina cursos"
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
                    Caption = 'ID',
                    Comment = 'es="ID Curso"';
                    ApplicationArea = All;
                }
                field("Dia horario"; Rec."Nombre curso")
                {
                    Caption = 'Name',
                    Comment = 'es="Nombre"';
                    ApplicationArea = All;
                }
                field("Descripcion curso"; Rec."Descripcion curso")
                {
                    Caption = 'Description',
                    Comment = 'es="Descripcion del curso"';
                    ApplicationArea = All;
                }
                field("Profesor curso"; Rec."Profesor curso")
                {
                    Caption = 'Teacher',
                    Comment = 'es="Profesor"';
                    ApplicationArea = All;
                }
                field("Extra"; Rec."Tarifa laboratorio curso")
                {
                    Caption = 'Fee',
                    Comment = 'es="Tarifa"';
                    ApplicationArea = All;
                }
                field("Id departamento"; Rec."Departamento curso")
                {
                    Editable = false;
                    Caption = 'Department',
                    Comment = 'es="Departamento"';
                    ApplicationArea = All;
                    Importance = Additional;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {

            group(Curso)
            {
                action(Matriculas)
                {
                    Caption = 'Enrollments',
                    Comment = 'es="Matrículas"';


                    RunObject = page "Pagina matriculas";
                    RunPageLink = "Id Curso" = field("Id curso");
                    RunPageMode = View;

                    Image = View;
                }
                action(Datos)
                {
                    Caption = 'Open card',
                    Comment = 'es="Abrir ficha"';

                    RunObject = page "Ficha cursos";
                    RunPageLink = "Id Curso" = field("Id curso");
                    RunPageMode = View;

                    Image = View;
                }
            }

        }
    }

    var
        Fix: Codeunit "Course fix codeunit";
        DepartmentID: Code[20];

    trigger OnAfterGetCurrRecord()
    begin
        // No es lo mas eficiente pero arregla el fallo
        Rec."Departamento curso" := Fix.GetDepartment(); //Poner de algun modo la ID del departamento desde el que se esta creando//;
    end;
}