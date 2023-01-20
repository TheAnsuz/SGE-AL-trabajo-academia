table 50105 "Tabla horarios"
{
    // ARREGLAR LAS HORAS Y EL COMO COGE LA ID CURSO
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id horario"; Code[20])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;

        }

        field(2; "Id curso"; Code[20])
        {
            NotBlank = true;
            TableRelation = "Tabla cursos"."Id curso";
            DataClassification = ToBeClassified;
        }

        field(3; "Dia"; Enum Day)
        {
            DataClassification = ToBeClassified;
        }


        field(4; "Hora inicio"; Time)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                TiempoTranscurrido: Integer;

            begin
                TiempoTranscurrido := "Hora final" - "Hora inicio";
                if TiempoTranscurrido < 0 then
                    Error('La hora de inicio no puede superar a la hora de fin')
                else
                    if System.Abs(TiempoTranscurrido) < 60000 then
                        Error('Una clase no puede durar menos de 1 minuto')
                    else begin
                        TiempoTranscurrido := TiempoTranscurrido / 60000;
                        Duracion := TiempoTranscurrido
                    end;


            end;

        }

        field(5; "Hora final"; Time)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                TiempoTranscurrido: Integer;

            begin
                TiempoTranscurrido := "Hora final" - "Hora inicio";
                if TiempoTranscurrido < 0 then
                    Error('La hora de inicio no puede superar a la hora de fin')
                else
                    if System.Abs(TiempoTranscurrido) < 60000 then
                        Error('Una clase no puede durar menos de 1 minuto')
                    else begin
                        TiempoTranscurrido := TiempoTranscurrido / 60000;
                        Duracion := TiempoTranscurrido
                    end;


            end;

        }

        field(6; "Duracion"; Integer)
        {
            Editable = false;

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