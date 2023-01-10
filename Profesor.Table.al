table 50101 "Tabla profesores"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id profesor"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Nombre profesor"; Text[40])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Direccion"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Fecha contratacion"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Salario"; Decimal)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                if (Salario <= 0) then
                    FieldError("Salario", 'El salario no puede ser negativo o 0');
            end;

        }
        field(7; "Departamento"; Text[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Tabla departamentos";
        }
        field(8; "Despacho"; Code[20])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                Matches: Record Matches;
                Regex: Codeunit Regex;
                Pattern,
                Value : Text;
            begin
                Pattern := '[A-Z]{3}[0-9]{2}$';

                if not (Regex.IsMatch("Despacho", Pattern, 0)) then
                    Error('No Match');
            end;
        }
    }
    keys
    {
        key(PK; "Id profesor")
        {
            Clustered = true;
        }
    }
}