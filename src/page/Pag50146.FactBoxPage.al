page 50146 "FactBox Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Fact Box Page';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(Name; WorkDate)
                {
                    ApplicationArea = All;
                    Caption = 'Work Date';

                }

            }

            group(Payments)
            {
                Caption = 'Payments';

                field(Amount; Amount)
                {
                    ApplicationArea = All;
                    Caption = 'Amount';

                    // Validating the Amount Field
                    trigger OnValidate()
                    begin
                        Message('Amount is %1', Amount);
                    end;

                }

            }

        }

// Add FactBox here
        area(FactBoxes)
        {
            part(Box; "Customer Statistics FactBox")
            {
                ApplicationArea = All;
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
                Caption = 'Processing Action';
                InFooterBar = true;

                trigger OnAction()
                begin

                end;
            }
        }

        area(Reporting)
        {
            action(Repoprting)
            {
                ApplicationArea = All;
                Caption = 'Reporting Action';

                trigger OnAction()
                begin

                end;
            }
        }

        area(Navigation)
        {
            action(UserName)
            {
                ApplicationArea = All;
                Caption = 'Username';
                // Adds icon to this action
                Image = FixedAssets;
                // It uses RubOject to Navigate to a given page
                RunObject = Page "Item List";
                Promoted=true;

                trigger OnAction()
                begin
                    User := Database.UserId();
                end;
            }
        }

        area(Creation)
        {
            action(CreationAction)
            {
                ApplicationArea = All;
                Caption = 'Creation Action';
                // Adds icon to this action
                Image = Delete;
                // Promoted makes the Action to appear on the Action Tabs
                Promoted = true;

                trigger OnAction()
                begin

                end;
            }

        }

        //  area(Navigation)
        // {
        //     action(Navigate)
        //     {
        //         ApplicationArea = All;
        //         Caption='Navigation Action';
        //         // Adds icon to this action
        //         Image=FixedAssets;
        //         // It uses RubOject to Navigate to a given page
        //         RunObject=Page "Item List";

        //         trigger OnAction()
        //         begin

        //         end;
        //     }
        // }

    }

    var
        WorkDate: Date;
        Amount: Decimal;
        User: Text;
}