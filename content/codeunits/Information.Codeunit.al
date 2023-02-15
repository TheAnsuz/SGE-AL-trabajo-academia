codeunit 50103 "Information codeunit"
{

    procedure estudiantesPorGenero(Gender: Enum "Genero enumeracion") Cantidad: Integer
    var
        Studients: Record "Tabla estudiantes";
        StudientsPageID: Integer;
        Gen: Text[20];
    begin
        StudientsPageID := Page::"Pagina estudiantes";

        Gen := Gender.Names.Get(Gender.AsInteger());

        Studients.SetCurrentKey("Id estudiante");
        Studients.SetFilter("Genero estudiante", Gen);

        Page.Run(StudientsPageID, Studients);
    end;
}