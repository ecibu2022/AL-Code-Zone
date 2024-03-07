page 50145 "Page Navigation"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Page Navigation in AL';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {

            }
        }

         area(FactBoxes)
        {
            part(Box; "Plans FactBox")
            {
                ApplicationArea=All;
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
                Caption = 'Open Page';

                trigger OnAction()
                begin
                    // OpenPage.RunModal();
                    // Clear(OpenPage);

// Adding click event to OK button in the dialog
                    if OpenPage.RunModal()=Action::OK then
                      Message('Ok Button Clicked');
                      Clear(OpenPage);
// Adding click event to Cancel button in the dialog
                    if OpenPage.RunModal()=Action::Cancel then
                        Message('Cancel Button Clicked');
                        Clear(OpenPage);
                end;
            }

            action(CustomerList)
            {
                ApplicationArea=All;
                Caption='Open Customer List';

                trigger OnAction()
                var
                    OpenCustomerList: Page "Customer List";
                begin
                    OpenCustomerList.RunModal();
                    Clear(OpenCustomerList);
                end;
            }
        }
    }

    var
        myInt: Integer;
        OpenPage: Page "Prompt Dialog";
}