enum 50102 "Role enum"
{
    Caption = 'Role', Comment = 'es="Puesto"';
    Extensible = true;

    value(0; "Sin cargo")
    {
        Caption = 'No role', comment = 'es="Sin cargo"';
    }

    value(1; "Ayudante")
    {
        Caption = 'Helper', Comment = 'es="Ayudante"';
    }
}