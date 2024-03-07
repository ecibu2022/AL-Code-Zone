page 50139 "Functions Page"
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
                Caption='Open Dialog';

                trigger OnAction()
                begin
                   MyDialog.RunModal();
                   Clear(MyDialog);
                end;
            }
        }
    }

    var
        myInt: Integer;
        // Declaring a page to open when actions are clicked
        MyDialog: Page "Prompt Dialog";

// Function without parameters
    local procedure MyLocalFunction()
    var
        MyInt: Integer;
    begin
        MyInt := 33;
        Error('An error has occurred');
    end;

// Function with parameters
    local procedure Add(Num1: Integer; Num2: Integer)
    var
        Result: Integer;
    begin
        Result:=Num1+Num2;
        if Confirm('Do you want to see the sum?') then
            Message('The sum is %1 ', Result)
        else
            Error('Something went wrong....');    
    end;

    // Function with return type
    local procedure MyProcedureWithReturnType(Number1: Integer): Integer
  
    begin
        Message('The number is ', System.Format(Number1));
        exit(Number1);
    end;
}