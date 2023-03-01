page 50117 "Cue secretaria pagina"
{
    PageType = CardPart;
    SourceTable = "Cue secretaria table";

    layout
    {
        area(Content)
        {
            cuegroup("Departamentos grupo")
            {
                Caption = 'Departments',
                Comment = 'es="Departamentos"';
                ShowCaption = true;

                field("Departamentos"; Rec.Departamentos)
                {
                    Caption = 'Department amount',
                    Comment = 'es="Cantidad Departamentos"';
                    DrillDownPageId = "Pagina departamentos";
                }

                field("Tarifa departamentos"; Rec."Suma tarifa departamentos")
                {
                    Caption = 'Department fees (total)',
                    Comment = 'es="Total tarifas departamentos"';
                    DrillDownPageId = "Pagina departamentos";
                }

                field("Departamentos sin jefe"; Rec."Departamentos sin jefe")
                {
                    Caption = 'Department without boss',
                    Comment = 'es="Departamentos sin jefe"';
                    DrillDownPageId = "Pagina departamentos";
                }

            }

            cuegroup("Estudiantes grupo")
            {
                Caption = 'Students',
                Comment = 'es="Estudiantes"';
                ShowCaption = true;

                field("Estudiantes"; Rec.Estudiantes)
                {
                    Caption = 'Students',
                    Comment = 'es="Estudiantes"';

                    DrillDownPageId = "Pagina estudiantes";

                }
            }

            cuegroup("Trabajadores grupo")
            {
                Caption = 'Workers',
                Comment = 'es="Trabajadores"';
                ShowCaption = true;

                field("Profesores"; Rec.Profesores)
                {
                    Caption = 'Teachers',
                    Comment = 'es="Profesores"';
                    DrillDownPageId = "Pagina profesores";
                }

                field("Ayudantes"; Rec.Ayudantes)
                {
                    Caption = 'Helpers',
                    Comment = 'es="Ayudantes"';
                    DrillDownPageId = "Pagina trabajadores";
                }

                field("Trabajadores"; Rec.Trabajadores)
                {
                    Caption = 'Workers',
                    Comment = 'es="Trabajadores"';
                    DrillDownPageId = "Pagina trabajadores";
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Create Departments")
            {
                RunObject = page "Ficha departamentos";
                RunPageMode = Create;
                Image = Add;
            }

            action("Visit Departments")
            {
                RunObject = page "Pagina departamentos";
                RunPageMode = View;
                Image = View;
            }

            action("Create Students")
            {
                RunObject = page "Pagina estudiantes";
                RunPageMode = Create;
                Image = Add;
            }

            action("Visit Students")
            {
                RunObject = page "Pagina estudiantes";
                RunPageMode = View;
                Image = View;
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;

    end;
}