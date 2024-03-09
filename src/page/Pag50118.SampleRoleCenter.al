page 50118 "Sample Role Center"
{
    PageType = RoleCenter;
    Caption='My Role Ceneter';

    layout
    {
        area(RoleCenter)
        {
        //    Adding Components of the Page like HeadLine, Cues
        part(MyHeadLine; "RC HeadLine Page")
        {
            ApplicationArea=Basic, Suite;
        }

        // Adding Cues
        part(MyCuesPage; MyCustomCue)
        {
            ApplicationArea=Basic, Suite;
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
                
                // trigger OnAction()
                // begin
                    
                // end;
            }
        }
    }
    
    var
        myInt: Integer;
}


// Adding this Role Center to Profiles(Roles)

profile "Sample Role Center"
{
    Caption='Sample Role Center';
    RoleCenter="Sample Role Center";
}