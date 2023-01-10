table 50102 "Tabla departamentos"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Despacho departamento"; CODE[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Nombre departamento"; Text[40])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
    }

}