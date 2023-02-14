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

            field(Curiosity; headline2)
            {

            }

        }
    }

    var
        headline1: Label '¡Bienvenido/a a secretaría!';
        headline2: Label 'Una pulga puede saltar une distancia equivalente a 30 veces la longitud de su cuerpo. Para un humano, supondría la longitud de un terreno de fútbol.';
}