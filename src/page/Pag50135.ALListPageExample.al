page 50135 "AL List Page Example"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Customer;
    Caption = 'Sample List Page';
    
    layout
    {
        area(Content)
        {
             // Sets the No., Name, Contact, and Phone No. fields in the Customer table to be displayed as columns in the list. 
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field(Contact; Rec.Contact)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
    
    actions
    {
       // Adds an action on the Actions menu of the action bar that opens the page Customer Ledger Entries. 
        area(Processing)
        {
            action("Ledger Entries")
            {
                ApplicationArea = All;
                RunObject = page "Customer Ledger Entries";
                trigger OnAction();
                begin

                end;
            }
        }

        // Promotes an action for creating a sales quote to promoted action menu called New.
        area(Creation)
        {
            action("New Sales Quote")
            {
                ApplicationArea = All;
                RunObject = page "Sales Quote";
                Promoted = true;
                PromotedCategory = New;
                Image = NewSalesQuote;
                trigger OnAction();
                begin

                end;
            }
        }

        // Adds an action on the Report menu that opens the Top 10 List report.
        area(Reporting)
        {
            action("Top 10 List")
            {
                ApplicationArea = All;
                RunObject = report "Customer - Top 10 List";
                trigger OnAction();
                begin

                end;
            }
        }
    }
    
    
    var
        myInt: Integer;
}