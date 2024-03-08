page 50122 "Page Example"
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
                field(MyDoB; MyDoB)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        Message('Ooops! you have entered a wrong date');
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
        

        action(PrintAction)
        {
            ApplicationArea = All;

            trigger OnAction()
            begin
                // Code for ActionName2
            end;
        }
    }
    }


    
    var
        MyDoB: Date;
}