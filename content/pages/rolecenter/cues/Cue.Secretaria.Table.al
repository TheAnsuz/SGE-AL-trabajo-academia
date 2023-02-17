table 50106 "Cue secretaria table"
{
    DataClassification = ToBeClassified;

    fields
    {

        field(1; "Primary key"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(2; "Departamentos"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Tabla departamentos");
        }

        field(3; "Departamentos sin jefe"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Tabla departamentos" where("Jefe departamento" = const('')));
        }
        field(4; "Suma tarifa departamentos"; Decimal)
        {
            FieldClass = FlowField;
            InitValue = 0;
            CalcFormula = sum("Tabla cursos"."Tarifa laboratorio curso");
        }

        field(5; "Estudiantes"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Tabla estudiantes");
        }

        field(6; "Profesores"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Tabla profesores");
        }

        field(7; "Ayudantes"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Tabla trabajadores" where("Puesto trabajador" = const('Ayudante')));
        }
        field(8; "Trabajadores"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Tabla trabajadores");
        }
        field(9; "Estudiantes hombre"; Integer)
        {
            InitValue = 0;
        }
        field(10; "Estudiantes mujer"; Integer)
        {
            InitValue = 0;
        }

    }

    keys
    {
        key(PK; "Primary key")
        {
            Clustered = true;
        }
    }
}