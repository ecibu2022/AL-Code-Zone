// Codeunits group different procedures into one object.
// A codeunit contains the following elements:
// • Triggers
// • Functions
// • Variables
// • Properties
// • Statements
// CodeUnits have only one trigger called OnRun. It can be accessed within the same extension or outside other extensions using internal or public access property

codeunit 50140 MyFirstCodeunit
{
    // Access Type
    Access=Public;
    // Specifies when the codeunit shpuld run
    Subtype=Normal;

    trigger OnRun()
    begin
        
    end;
    
    var
        myInt: Integer;

    procedure MyProcedure()
    var
        myInt: Integer;
    begin
        Message('Code Unit called successfully');
    end;    
}


page 50142 "Page to Call CodeUnit"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    // SourceTable = TableName;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                // field(Name; NameSource)
                // {
                //     ApplicationArea = All;
                    
                // }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    // Calling the functions in the codeunit
                    CallingMyCodeUnit.MyProcedure();
                end;
            }
        }
    }
    
    var
        CallingMyCodeUnit: Codeunit MyFirstCodeunit;
}