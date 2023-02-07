table 50103 "Tabla estudiantes"
{
    DataClassification = ToBeClassified;
    LookupPageId = "Pagina estudiantes";

    fields
    {
        field(1; "Id estudiante"; Code[20])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;



        }
        field(2; "Nombre estudiante"; Text[100])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;

        }
        field(3; "Genero estudiante"; Enum "Genero enumeracion")
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Direccion estudiante"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Telefono estudiante"; Text[16])
        {
            DataClassification = ToBeClassified;
            // Verificar numero
            trigger OnValidate()
            var
                Regex: Codeunit Regex;
                Written: Text;
                Domestic: Text;
            begin
                Written := "Telefono estudiante";
                "Telefono estudiante" := "Telefono estudiante".Replace(' ', '').Replace('-', '');

                if ("Telefono estudiante".StartsWith('+34')) then
                    "Telefono estudiante" := "Telefono estudiante".Replace('+34', '');

                Domestic := '[6-9]\d{8}';

                if not (
                    Regex.IsMatch("Telefono estudiante", Domestic, 0)
                ) then begin
                    Error('No es un formato de numero de telefono Español');
                    "Telefono estudiante" := Written;
                end;
            end;
        }
        field(6; "Fecha nacimiento"; Date)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(pk; "Id estudiante")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Id estudiante", "Nombre estudiante", "Direccion estudiante")
        {

        }
    }

}