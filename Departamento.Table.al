table 50102 "Tabla departamentos"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Despacho departamento"; Code[20])
        {
            DataClassification = ToBeClassified;
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
    }

}