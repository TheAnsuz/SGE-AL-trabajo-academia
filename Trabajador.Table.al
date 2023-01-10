table 50100 Trabajador
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id Trabajador"; Code[20])
        {
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
        }
        field(5; "Puesto"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; MyField)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}