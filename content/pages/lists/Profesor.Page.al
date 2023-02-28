page 50101 "Pagina profesores"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Tabla profesores";
    CardPageId = "Ficha profesores";
    Caption = 'Profesores', Comment = 'es="Teachers"';

    layout
    {
        area(Content)
        {
            repeater(Informacion)
            {
                field("Id profesor"; Rec."Id profesor")
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                    ToolTip = 'ID del profesor';


                }
                field("Nombre profesor"; Rec."Nombre profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Name',
                    Comment = 'es="Name"';

                    ToolTip = 'Nombre del profesor';

                }
                field("Direccion profesor"; Rec."Direccion profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Address',
                    Comment = 'es="Dirección"';

                    ToolTip = 'Dirección del profesor';
                }
                field("Fecha contratacion profesor"; Rec."Fecha contratacion profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Hiring date',
                    Comment = 'es="Fecha de contratación"';

                    ToolTip = 'Fecha de contratación del profesor';
                }
                field("Salario profesor"; Rec."Salario profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Salary',
                    Comment = 'es="Salario"';

                    ToolTip = 'Teacher''s salary',
                    Comment = 'es="Salario que recibe el profesor"';

                }
                field("Departamento profesor"; Rec."Departamento profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Department',
                    Comment = 'es="Departamento"';
                    ToolTip = 'Department where the teacher works',
                    Comment = 'es="Departamento donde trabaja el profesor"';

                    DrillDown = true;
                    DrillDownPageId = "Pagina departamentos";

                }
                field("Despacho profesor"; Rec."Despacho profesor")
                {
                    ApplicationArea = All;
                    Caption = 'Office',
                    Comment = 'es="Despacho"';
                    ToolTip = 'Teacher'' Office',
                    Comment = 'es="Despacho del profesor"';
                }

                field("Nº Cursos profesor"; Rec."Nº Cursos")
                {
                    ApplicationArea = All;
                    Caption = 'Courses No.',
                    Comment = 'es="Nº Cursos"';
                    ToolTip = 'Number of courses of the teacher',
                    Comment = 'es="Nº de cursos del profesor"';

                    DrillDown = true;
                    DrillDownPageId = "Pagina cursos";
                }
            }
        }

    }

    actions
    {

        area(Reporting)
        {
            action("Salario medio")
            {
                Caption = 'Check average salary',
                Comment = 'es="Ver salario promedio"';

                trigger OnAction()
                begin
                    salarioMedio();
                end;
            }
        }
    }

    procedure salarioMedio()
    var
        SalarioTotal: Decimal;
        Contados: Integer;
        Message: Text;
        SalarioPromedio: Decimal;
        Profesores: Record "Tabla profesores";
    begin

        Contados := 0;
        SalarioPromedio := 0;
        Message := Msg1;

        if Profesores.FindSet() then
            repeat begin

                if Profesores."Salario profesor" <> 0 then begin
                    SalarioTotal := SalarioTotal + Profesores."Salario profesor";
                    Contados := Contados + 1;
                end;
            end until Profesores.Next() = 0;

        if Contados <> 0 then begin
            SalarioPromedio := SalarioTotal / Contados;
        end;
        Message(Message, SalarioPromedio);

    end;

    var
        Msg1: Label 'Average salary: %1 €',
                Comment = 'es="El salario promedio es de %1 €"';
}