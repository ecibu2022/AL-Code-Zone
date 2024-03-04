// Handling errors using Try Methods
// The main purpose of try methods is to catch errors/exceptions that are thrown
//  by Microsoft Dynamics 365 Business Central or exceptions that are thrown during .NET Framework
//  interoperability operations
// The .NET Framework is a software development framework developed by Microsoft that provides a runtime environment and a set of libraries and tools for building and running applications on Windows operating systems.
// Try methods catch errors, such as a conditional Codeunit.Run method call
// A method that is designated as a try method has a Boolean return value (true or false
// If a try method call doesn't use the return value, the try method will operate like an ordinary method and errors will be exposed as usual.
// If a try method call uses the return value in an OK:= statement or a conditional statement such as if-then, errors will be caught. The try method will return as true if no error occurs and false if an error occurs.

page 50137 "Error Handling"
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
                    if MyTryFunction() then
                        Message('No errors found')
                    else
                        Message('An error occured');
                end;
            }
        }
    }

    var
        myInt: Integer;

    [TryFunction]
    local procedure MyTryFunction()
    begin
        // error('Ooops! an error occured');
        // Message('treeeee');
    end;
}
