page 50126 "RC HeadLine Page"
{
    PageType = HeadlinePart;
    Caption='RC HeadLine';
    // Refresh when the user navigates to another page and comes back to this one
    RefreshOnActivate=true;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(hdl1Txt;hdl1Txt)
                {
                    ApplicationArea = All;
                    
                }
                 field(hdl4Txt;hdl4Txt)
                {
                    ApplicationArea = All;
                    
                }
                 field(hdl2Txt;hdl2Txt)
                {
                    ApplicationArea = All;
                    
                }
                 field(hdl3Txt;hdl3Txt)
                {
                    ApplicationArea = All;
                    
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
        // CodeUnit variable for greeting message
        V: CodeUnit "RC Headlines Page Common"; 
        
        hdl1Txt: Label 'Hi, ';
        hdl2Txt: Label 'How are you doing';
        hdl3Txt: Label 'How is life';
        hdl4Txt: Label 'Welcome to Business Central';
}