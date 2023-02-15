table 50105 "Tabla horarios"
{
    DataClassification = ToBeClassified;
    LookupPageId = "Pagina horarios";
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

        field(3; "Día horario"; Enum "Dia enumerador")
        {
            DataClassification = ToBeClassified;
        }


        field(4; "Hora inicio horario"; Time)
        {
            DataClassification = ToBeClassified;
            InitValue = 0T;

            trigger OnValidate()
            begin
                validarHora("Hora final horario" - "Hora inicio horario");
            end;
        }

        field(5; "Hora final horario"; Time)
        {
            DataClassification = ToBeClassified;
            InitValue = 0T;

            trigger OnValidate()
            begin
                validarHora("Hora final horario" - "Hora inicio horario");
            end;
        }

        field(6; "Duracion horario"; Integer)
        {
            Editable = false;
        }
    }

    keys
    {
        key(pk; "Id horario", "Id curso")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Id horario", "Id curso", "Hora inicio horario", "Día horario")
        {

        }
    }

    local procedure setDuration(tiempo: Integer)
    begin
        Rec."Duracion horario" := tiempo;
    end;

    local procedure validarHora(Tiempo: Integer)
    begin
        Tiempo := "Hora final horario" - "Hora inicio horario";
        if Tiempo < 0 then
            Error('La hora de inicio no puede superar a la hora de fin')
        else
            if System.Abs(Tiempo) < 60000 then
                Error('Una clase no puede durar menos de 1 minuto')
            else begin
                setDuration(Tiempo / 60000);
            end;
    end;

}