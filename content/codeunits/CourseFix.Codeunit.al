codeunit 50104 "Course fix codeunit"
{
    SingleInstance = true;

    var
        InternalDepartmentId: Code[20];

    procedure SetDepartment(Id: Code[20])
    begin
        InternalDepartmentId := Id;
    end;

    procedure GetDepartment() Result: Code[20];
    begin
        Result := InternalDepartmentId;
    end;
}