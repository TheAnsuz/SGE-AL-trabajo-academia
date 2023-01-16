table 50104 "Tabla cursos"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id curso"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;

        }
        field(2; "Nombre curso"; Text[100])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(3; "Descripcion curso"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Horas totales"; Integer)
        {
            DataClassification = ToBeClassified;
            // Que sea positivo
            trigger OnValidate()
            begin
                if ("Horas totales" <= 0) then
                    FieldError("Horas totales", 'No puedes tener horas totales negativas');
            end;
        }
        field(5; "Tarifa laboratorio"; Decimal)
        {
            DataClassification = ToBeClassified;
            // Que sea real con 2 decimales
        }
        field(6; "Profesor"; Code[20])
        {
            TableRelation = "Tabla profesores";
            DataClassification = ToBeClassified;
        }

        field(7; "Departamento"; Code[20])
        {
            TableRelation = "Tabla departamentos";
            DataClassification = ToBeClassified;
        }

        field(8; "Nº Estudiantes"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Tabla matriculas"
            where(
                "Id Curso" = field("Id curso"),
                "Fecha matriculacion" = field("Filtro fecha")
                )
                );

            Caption = 'Muestra el nº de estudiantes con esa fecha de matriculación exacta';
        }

        field(100; "Filtro fecha"; Date)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(pk; "Id curso")
        {
            Clustered = true;
        }


    }

}