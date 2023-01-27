table 50102 "Tabla departamentos"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Despacho departamento"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
            trigger OnValidate()
            var
                Matches: Record Matches;
                Regex: Codeunit Regex;
                Pattern: Text;
            begin
                Pattern := '[A-Z]{3}[0-9]{2}$';

                if not (Regex.IsMatch("Despacho departamento", Pattern, 0)) then
                    Error('Formato incorrecto (XXXNN)');
            end;
        }
        field(2; "Nombre departamento"; Text[40])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(3; "Jefe departamento"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Tabla profesores";
        }
        field(4; "Promedio tarifa departamento"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = average("Tabla cursos"."Tarifa laboratorio curso"
                         where("Departamento curso" = field("Despacho departamento")));

        }
    }

    keys
    {
        key(pk; "Despacho departamento")
        {
            Clustered = true;
        }
    }

}