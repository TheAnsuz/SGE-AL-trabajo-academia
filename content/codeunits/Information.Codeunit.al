codeunit 50103 "Information codeunit"
{

    procedure estudiantesPorGenero(Gender: Enum "Genero enumeracion")
    var
        Students: Record "Tabla estudiantes";
        StudentsPageID: Integer;
    begin
        StudentsPageID := Page::"Pagina estudiantes";

        Students.SetCurrentKey("Id estudiante");
        Students.SetFilter("Genero estudiante", Format(Gender));

        Page.Run(StudentsPageID, Students);
    end;

    procedure cantidadEstudiantesPorGenero(Gender: Enum "Genero enumeracion") Cantidad: Integer
    var
        Students: Record "Tabla estudiantes";
        StudentsPageID: Integer;
    begin
        StudentsPageID := Page::"Pagina estudiantes";

        Students.SetCurrentKey("Id estudiante");
        Students.SetFilter("Genero estudiante", Format(Gender));

        Cantidad := Students.Count;
    end;
}