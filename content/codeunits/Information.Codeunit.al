codeunit 50103 "Information codeunit"
{

    procedure estudiantesPorGenero(Gender: Enum "Genero enumeracion")
    var
        Studients: Record "Tabla estudiantes";
        StudientsPageID: Integer;
    begin
        StudientsPageID := Page::"Pagina estudiantes";

        Studients.SetCurrentKey("Id estudiante");
        Studients.SetFilter("Genero estudiante", Format(Gender));

        Page.Run(StudientsPageID, Studients);
    end;

    procedure cantidadEstudiantesPorGenero(Gender: Enum "Genero enumeracion") Cantidad: Integer
    var
        Studients: Record "Tabla estudiantes";
        StudientsPageID: Integer;
    begin
        StudientsPageID := Page::"Pagina estudiantes";

        Studients.SetCurrentKey("Id estudiante");
        Studients.SetFilter("Genero estudiante", Format(Gender));

        Cantidad := Studients.Count;
    end;

    /*

            if Studients.FindSet() then
                repeat begin
                    if (Studients."Genero estudiante" = Gender) then begin
                        Cantidad := Cantidad + 1;
                    end;
                end until Studients.Next() = 0;
    */
}