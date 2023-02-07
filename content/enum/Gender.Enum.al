enum 50100 "Genero enumeracion"
{
    Caption = 'Gender',
    Comment = 'es="Género"';
    Extensible = false;

    value(0; "")
    {

    }

    value(1; "Masculino genero")
    {
        Caption = 'Male',
        Comment = 'es="Hombre"';
    }

    value(2; "Femenino genero")
    {
        Caption = 'Female',
        Comment = 'es="Mujer"';
    }
}