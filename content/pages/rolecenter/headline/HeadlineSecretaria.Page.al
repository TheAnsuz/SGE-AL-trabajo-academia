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
            field(Welcome; welcome) { }
            field(Departaments; departmentsText) { }
            field(Studients; studientsText) { }
            field(Courses; coursesText) { }
            field(Mujeres; femaleText) { }
            field(Hombres; maleText) { }
        }
    }

    trigger OnOpenPage()
    begin
        loadTexts();
    end;

    var
        Information: Codeunit "Information codeunit";
        "Estudiantes hombre": Integer;
        "Estudiantes mujer": Integer;
        "Estudiantes otro": Integer;
        departmentsText: Text;
        studientsText: Text;
        coursesText: Text;

        femaleText: Text;
        maleText: Text;
        otherText: Text;
        departmentsHeadline: Label 'There %p %i department%s', Comment = 'es="Hay %i departamento%s registrado%s"';
        studientsHeadline: Label 'There %p %i studient%s', Comment = 'es="Hay %i estudiante%s registrado%s"';
        coursesHeadline: Label 'There %p %i active course%s', Comment = 'es="Hay %i curso%s activo%s"';

        genderFemaleHeadline: Label 'There %p %i female studient%s', Comment = 'es="Hay %i estudiante%s femenino%s"';
        genderMaleHeadline: Label 'There %p %i male studient%s', Comment = 'es="Hay %i estudiante%s masculinos%s"';
        genderOtherHeadline: Label 'There %p %i studient%s with undefined gender', Comment = 'es="Hay %i estudiante%s de genero indefinido"';
        welcome: Label 'Welcome to reception!', Comment = 'es="¡Bienvenido/a a secretaría!"';
    //headline2: Label 'Una pulga puede saltar une distancia equivalente a 30 veces la longitud de su cuerpo. Para un humano, supondría la longitud de un terreno de fútbol.';

    local procedure loadTexts()
    var
        Departamentos: Record "Tabla departamentos";
        Estudiantes: Record "Tabla estudiantes";
        Cursos: Record "Tabla cursos";
    begin

        departmentsText := formatText(StrSubstNo(departmentsHeadline, 0), Departamentos.Count);
        studientsText := formatText(StrSubstNo(studientsHeadline, 0), Estudiantes.Count);
        coursesText := formatText(StrSubstNo(coursesHeadline, 0), Cursos.Count);
        loadAmount();
        femaleText := formatText(StrSubstNo(genderFemaleHeadline, 0), "Estudiantes hombre");
        maleText := formatText(StrSubstNo(genderMaleHeadline, 0), "Estudiantes mujer");
        otherText := formatText(StrSubstNo(genderOtherHeadline, 0), "Estudiantes otro");
    end;

    local procedure formatText(Source: Text; Number: Integer) Formatted: Text
    var
        pluralPrefix: Text;
        pluralIndicator: Text;
    begin
        if (Number < -1) or (Number > 1) or (Number = 0) then begin
            pluralPrefix := 'are';
            pluralIndicator := 's';
        end
        else begin
            pluralPrefix := 'is';
            pluralIndicator := '';
        end;

        Formatted := Source.Replace('%i', Format(Number)).Replace('%p', pluralPrefix).Replace('%s', pluralIndicator);
    end;

    local procedure loadAmount()
    var
        Masculino: Enum "Genero enumeracion";
        Femenino: Enum "Genero enumeracion";
        Otro: Enum "Genero enumeracion";
    begin
        Masculino := "Genero enumeracion"::"Masculino genero";
        Femenino := "Genero enumeracion"::"Femenino genero";

        "Estudiantes hombre" := Information.estudiantesPorGenero(Masculino);
        "Estudiantes mujer" := Information.estudiantesPorGenero(Femenino);
    end;
}