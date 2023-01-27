table 50126 "Tabla matriculas"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id Estudiante"; Code[20])
        {
            TableRelation = "Tabla estudiantes";
            NotBlank = true;
            DataClassification = ToBeClassified;

        }
        field(2; "Id Curso"; Code[20])
        {
            TableRelation = "Tabla cursos";
            NotBlank = true;
            DataClassification = ToBeClassified;
        }

        field(3; "Fecha matriculacion"; Date)
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }

        field(4; "Hora matriculacion"; Time)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }

    keys
    {
        key(pk; "Id Estudiante", "Id Curso")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        FechaYHora: Datetime;
    begin
        FechaYHora := System.CurrentDateTime;
        "Fecha matriculacion" := DT2Date(FechaYHora);
        "Hora matriculacion" := DT2Time(FechaYHora);
    end;

}