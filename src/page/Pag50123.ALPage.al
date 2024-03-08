page 50123 "AL Page"
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
                field(Name; Name)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    // OnValidate will be triggered when the user leaves the field automatically
                    var
                        myInt: Integer;
                    begin
                        Error('Wrong Input entered');
                    end;
                    
                }
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
                    
                end;
            }
        }
    }
    
    var
        Name: Text;
}