table 50101 "Tabla profesores"
{
    DataClassification = ToBeClassified;
    LookupPageId = "Pagina profesores";

    fields
    {
        field(1; "Id profesor"; Code[20])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(2; "Nombre profesor"; Text[40])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(3; "Direccion profesor"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Fecha contratacion profesor"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Salario profesor"; Decimal)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                if ("Salario profesor" <= 0) then
                    FieldError("Salario profesor", 'El salario no puede ser negativo o 0');
            end;

        }
        field(7; "Departamento profesor"; Text[100])
        {
            NotBlank = True;
            DataClassification = ToBeClassified;
            TableRelation = "Tabla departamentos";
        }
        field(8; "Despacho profesor"; Code[20])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                Matches: Record Matches;
                Regex: Codeunit Regex;
                Pattern: Text;
            begin
                Pattern := '[A-Z]{3}[0-9]{2}$';

                if not (Regex.IsMatch("Despacho profesor", Pattern, 0)) then
                    Error('Formato incorrecto (XXXNN)');
            end;
        }

        field(9; "Nº Ayudantes"; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count("Tabla trabajadores" WHERE(
                "Profesor asignado" = field("Id profesor"),
                "Puesto trabajador" = const('Ayudante')
                ));
            // Trabajador WHERE("Profesor asignado" = field("Id profesor"))
        }


        field(10; "Nº Cursos"; Integer)
        {
            Editable = false;
            FieldClass = FlowField;

            CalcFormula = count("Tabla cursos" where("Profesor curso" = field("Id profesor")));

        }

        /*
        // Especifico filtro a partir de ID 100
        field(100; "Filtro dia"; Enum Day)
        {
            FieldClass = FlowFilter;
        }
        */
    }
    keys
    {
        key(PK; "Id profesor")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Id profesor", "Nombre profesor", "Departamento profesor")
        {

        }
    }
}