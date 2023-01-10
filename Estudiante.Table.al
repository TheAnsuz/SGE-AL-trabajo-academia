table 50103 Estudiante
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; idEstudiante; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Nombre; Text[100])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(3; Genero; Enum Gender)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Direccion; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; Telefono; Text[9])
        {
            DataClassification = ToBeClassified;
            // Verificar numero
        }
        field(6; "Fecha nacimiento"; Date)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(pk; idEstudiante)
        {
            Clustered = true;
        }
    }



}