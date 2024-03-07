codeunit 50143 "MTC Code Unit"
{
    trigger OnRun()
    begin
        
    end;
    
    var
        myInt: Integer;

    procedure MyProcedure()
    var
        myInt: Integer;
    begin
        Message('Code Unit has been called successfully');
    end;    
}