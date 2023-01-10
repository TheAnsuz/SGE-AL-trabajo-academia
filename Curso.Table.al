table 50104 Curso
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id curso"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Nombre curso"; Text[100])
        {
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
        field(6; "Horario"; Blob)
        {
            DataClassification = ToBeClassified;
            // Linkear con Horario
        }
        field(7; "Profesor"; Code[20])
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