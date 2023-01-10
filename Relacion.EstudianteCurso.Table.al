table 50126 EstudianteCurso
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id Estudiante"; Code[20])
        {
            TableRelation = Estudiante;
            DataClassification = ToBeClassified;

        }
        field(2; "Id Curso"; Code[20])
        {
            TableRelation = Curso;
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(pk; "Id Estudiante", "Id Curso")
        {
            Clustered = true;
        }
    }


}