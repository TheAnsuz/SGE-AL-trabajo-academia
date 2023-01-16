table 50100 Trabajador
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id Trabajador"; Code[20])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;

        }
        field(2; Nombre; Text[100])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(3; Direccion; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Salario"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if (Salario <= 0) then
                    FieldError("Salario", 'El salario no puede ser negativo o 0');
            end;
        }
        field(5; "Puesto"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Profesor asignado"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Tabla profesores";
        }

    }

    keys
    {
        key(PK; "Id Trabajador")
        {
            Clustered = true;
        }
    }
}