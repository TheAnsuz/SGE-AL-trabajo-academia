table 50103 "Tabla estudiantes"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id Estudiante"; Code[20])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;

        }
        field(2; Nombre; Text[100])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(3; Genero; Enum Gender)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Direccion; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; Telefono; Text[16])
        {
            DataClassification = ToBeClassified;
            // Verificar numero
            trigger OnValidate()
            var
                Matches: Record Matches;
                Regex: Codeunit Regex;
                Written: Text;
                Domestic: Text;
            begin
                Written := Telefono;
                Telefono := Telefono.Replace(' ', '').Replace('-', '');

                if (Telefono.StartsWith('+34')) then
                    Telefono := Telefono.Replace('+34', '');

                Domestic := '[6-9]\d{8}';

                if not (
                    Regex.IsMatch(Telefono, Domestic, 0)
                ) then begin
                    Error('No es un formato de numero de telefono Español');
                    Telefono := Written;
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
        key(pk; "Id Estudiante")
        {
            Clustered = true;
        }
    }



}