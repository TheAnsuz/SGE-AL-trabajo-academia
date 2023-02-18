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
            begin
                checkPhone("Telefono estudiante");
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

    local procedure formatPhone(Input: Text[16]) Formatted: Text[16]
    begin
        Formatted := Input.Replace(' ', '').Replace('-', '').ToUpper();
    end;

    local procedure checkPhone(Input: Text[16])
    var
        Regex: Codeunit Regex;
        Domestic: Text;
    begin
        Domestic := '[6-9]\d{8}';

        if not (
            Regex.IsMatch(formatPhone(Input), Domestic)
        ) then begin
            Error('No es un formato de numero de telefono Español');
        end;

        Input := formatPhone(Input);
    end;

}