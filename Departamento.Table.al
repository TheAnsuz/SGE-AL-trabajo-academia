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
                Pattern,
                Value : Text;
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
        field(4; "Promedio tarifa"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = average("Tabla cursos"."Tarifa laboratorio"
                         where(Departamento = field("Despacho departamento")));

            Caption = 'Promedio de tarifas de los cursos pertenecientes al actual departamento';
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