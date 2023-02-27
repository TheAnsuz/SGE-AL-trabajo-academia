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
            field(Departaments; departmentsText)
            {
                DrillDown = true;
                trigger OnDrillDown()
                begin
                    Page.Run(Page::"Pagina departamentos");
                end;
            }
            field(Students; studentsText)
            {
                DrillDown = true;
                trigger OnDrillDown()
                begin
                    Page.Run(Page::"Pagina estudiantes");
                end;
            }
            field(Courses; coursesText)
            {
                DrillDown = true;
                trigger OnDrillDown()
                begin
                    Page.Run(Page::"Pagina cursos");
                end;
            }
            field(Mujeres; femaleText)
            {
                DrillDown = true;
                trigger OnDrillDown()
                var
                begin
                    Information.estudiantesPorGenero(Enum::"Genero enumeracion"::"Femenino genero");
                end;
            }
            field(Hombres; maleText)
            {
                DrillDown = true;
                trigger OnDrillDown()
                var
                begin
                    Information.estudiantesPorGenero(Enum::"Genero enumeracion"::"Femenino genero");
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        loadTexts();
    end;

    var
        Information: Codeunit "Information codeunit";
        departmentsText: Text;
        studentsText: Text;
        coursesText: Text;

        femaleText: Text;
        maleText: Text;
        otherText: Text;
        departmentsHeadline: Label 'There %p %i department%s', Comment = 'es="Hay %i departamento%s registrado%s"';
        studentsHeadline: Label 'There %p %i student%s', Comment = 'es="Hay %i estudiante%s registrado%s"';
        coursesHeadline: Label 'There %p %i active course%s', Comment = 'es="Hay %i curso%s activo%s"';

        genderFemaleHeadline: Label 'There %p %i female student%s', Comment = 'es="Hay %i estudiante%s femenino%s"';
        genderMaleHeadline: Label 'There %p %i male student%s', Comment = 'es="Hay %i estudiante%s masculinos%s"';
        welcome: Label 'Welcome to reception!', Comment = 'es="¡Bienvenido/a a secretaría!"';

    local procedure loadTexts()
    var
        Departamentos: Record "Tabla departamentos";
        Estudiantes: Record "Tabla estudiantes";
        Cursos: Record "Tabla cursos";
        Cantidad: Integer;
    begin
        departmentsText := formatText(departmentsHeadline, Departamentos.Count);

        studentsText := formatText(studentsHeadline, Estudiantes.Count);
        coursesText := formatText(coursesHeadline, Cursos.Count);

        Cantidad := Information.cantidadEstudiantesPorGenero(Enum::"Genero enumeracion"::"Femenino genero");
        femaleText := formatText(genderFemaleHeadline, Cantidad);

        Cantidad := Information.cantidadEstudiantesPorGenero(Enum::"Genero enumeracion"::"Masculino genero");
        maleText := formatText(genderMaleHeadline, Cantidad);
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

        //Formatted := StrSubstNo(Source, Format(Number), pluralPrefix, pluralIndicator);
    end;
}