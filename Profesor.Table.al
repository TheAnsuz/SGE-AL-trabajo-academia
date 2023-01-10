table 50101 "Tabla profesores"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id profesor"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Nombre profesor"; Text[40])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Direccion"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Fecha contratacion"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Salario"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Puesto"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Departamento"; Text[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Tabla departamentos";
        }
        field(8; "Despacho"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
}