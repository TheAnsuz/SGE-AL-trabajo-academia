page 50116 "Cabecera secretaría"
{

    Caption = 'Headline secretary',
    Comment = 'es="Cabecera secretaría"';
    PageType = HeadlinePart;
    RefreshOnActivate = true;

    layout
    {

        area(Content)
        {
            field(Bienvenida; headline1)
            {

            }

        }
    }

    var
        headline1: Label '¡Bienvenido/a a secretaría!';
}