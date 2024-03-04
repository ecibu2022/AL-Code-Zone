page 50138 "Handling Errors"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
               
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
                    MyErrorHandlingMethod();
                    // if MyErrorHandlingMethod() then
                    // Message('All is good')
                    // else
                    // Message('Please enter location code');
                end;
            }
        }
    }
    
    var
        myInt: Integer;

        // [TryFunction]
        local procedure MyErrorHandlingMethod()
        var
            myInt: Integer;
        begin
            // Error('Ooops! an error has occurred');
            myInt:= 10/2.333;
        end;
}