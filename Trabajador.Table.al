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

            trigger OnValidate()
            var
                length: Integer;
            begin
                length := STRLEN("puesto");

                if (length > 1) then
                    "Puesto" := "Puesto".Substring(1, 1).ToUpper()
                    + "Puesto".Substring(2).ToLower()
                else
                    "Puesto" := "Puesto".ToUpper();


            end;
        }
        field(6; "Profesor asignado"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Tabla profesores"."Id profesor";

            trigger OnValidate()
            begin
                if (StrLen("Profesor asignado") > 0) and not (Puesto = 'Ayudante') then
                    Error('Solo los ayudantes pueden tener un profesor asignado');
            end;
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