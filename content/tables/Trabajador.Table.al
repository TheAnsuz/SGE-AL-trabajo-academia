table 50100 "Tabla trabajadores"
{
    DataClassification = ToBeClassified;
    LookupPageId = "Pagina trabajadores";
    fields
    {
        field(1; "Id Trabajador"; Code[20])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;

        }
        field(2; "Nombre trabajador"; Text[100])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(3; "Direccion trabajador"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Salario trabajador"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if ("Salario trabajador" <= 0) then
                    FieldError("Salario trabajador", 'El salario no puede ser negativo o 0');
            end;
        }
        field(5; "Puesto trabajador"; Text[100])
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                length: Integer;
            begin
                length := STRLEN("Puesto trabajador");

                if (length > 1) then
                    "Puesto trabajador" := "Puesto trabajador".Substring(1, 1).ToUpper()
                    + "Puesto trabajador".Substring(2).ToLower()
                else
                    "Puesto trabajador" := "Puesto trabajador".ToUpper();
            end;
        }
        field(6; "Profesor asignado"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Tabla profesores";
            trigger OnValidate()
            begin
                if (StrLen("Profesor asignado") > 0) and not ("Puesto trabajador" = 'Ayudante') then
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

    fieldgroups
    {
        fieldgroup(DropDown; "Id Trabajador", "Nombre trabajador")
        {

        }
    }


}