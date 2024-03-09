page 50205 "Option & Enum"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    // SourceTable = TableName;
    Caption='Option and Enum';
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(CustomerGender; Gender)
                {
                    ApplicationArea = All;
                    Caption='Customer Gender';
                    
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
        Gender: Option male, female, other;
        CallingEnum: Enum "Status Enum";
}



enum 50204 "Status Enum"
{
    Extensible = true;
    
    value(0; active)
    {
    }

    value(1; inactive)
    {
    }
    
}