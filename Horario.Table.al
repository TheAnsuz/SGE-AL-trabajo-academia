table 50105 "Tabla horarios"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id horario"; Code[20])
        {
            NotBlank = true;
            TableRelation = "Tabla horarios";
            DataClassification = ToBeClassified;

        }

        field(2; "Id curso"; Code[20])
        {
            NotBlank = true;
            TableRelation = "Tabla cursos";
            DataClassification = ToBeClassified;
        }

        field(3; "Dia"; Enum Day)
        {
            DataClassification = ToBeClassified;
        }

        field(4; "Hora inicio"; Time)
        {
            DataClassification = ToBeClassified;
        }

        field(5; "Hora final"; Time)
        {
            DataClassification = ToBeClassified;
        }

        /*
        field(6; "Profesor encargado"; Code[20])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Tabla cursos".Profesor where("Id curso" = field("Id curso")));
        }
        */
    }

    keys
    {
        key(pk; "Id horario", "Id curso")
        {
            Clustered = true;
        }
    }
}