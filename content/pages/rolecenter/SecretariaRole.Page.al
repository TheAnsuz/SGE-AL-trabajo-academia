page 50115 "Secretaria Role Center"
{
    Caption = 'Secretary', Comment = 'es="Secretaría"';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {

            group(Principal)
            {
                part(Bienvenida; "Cabecera secretaría")
                {
                    Editable = false;
                    Caption = 'Welcome',
                    Comment = 'es="Bienvenid@"';
                }

            }


        }
    }

    actions
    {
        area(Creation)
        {
            action(ActionBarAction)
            {

            }
        }
        area(Sections)
        {
            group(SectionsGroupName)
            {
                action(SectionsAction)
                {

                }
            }
        }
        area(Embedding)
        {
            action(EmbeddingAction)
            {

            }
        }
    }
}