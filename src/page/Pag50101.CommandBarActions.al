page 50139 "Action Bar"
{
    PageType = Card;
    SourceTable = Customer;
    PromotedActionCategories = 'New,Process,Report,Manage,New Document,Request Approval,Customer,Page';
    Caption='Action Bar';

    layout
    {
        area(Content)
        {
            grid(UserDetails)
            {
                field(Name; Database.UserId)
                {
                    ApplicationArea=All;
                    Caption='UserID';
                }

                  field(Company; Database.CompanyName)
                {
                    ApplicationArea=All;
                    Caption='Company';
                }

                  field(CurrentDate; WorkDate())
                {
                    ApplicationArea=All;
                    Caption='WorkDate';
                }

            }

            group(General)
            {
                field(MyName; Database.UserId)
                {
                    ApplicationArea=All;
                    Caption='MyName';
                }

                  field(MyAge; Age)
                {
                    ApplicationArea=All;
                    Caption='Age';
                }

                  field(MyDob; DOB)
                {
                    ApplicationArea=All;
                    Caption='DOB';
                }

            }

        }

        area(FactBoxes)
        {
            part(MyFactBox; "Vendor Picture")
            {
                ApplicationArea=All;
                Caption='My Fact Box';
            }
        }
    }

    actions
    {
        area(Creation)
        {
            action("Sales Quote")
            {
                Promoted = true;
                PromotedCategory = Category5;  // PromotedActionCategories = New Document
                PromotedOnly = true;
                PromotedIsBig = true;
                Image = NewSalesQuote;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Message('Create sales quote');
                end;
            }
            action("Sales Invoice")
            {
                Promoted = true;
                PromotedCategory = Category5;  // PromotedActionCategories = New Document
                Image = SalesInvoice;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Message('UserID %1\ Company name %2', Database.UserId, Database.CompanyName);
                end;
            }
        }
        area(Processing)
        {
            action("Send Approval Request")
            {
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = Category6;  // PromotedActionCategories = Request Approval
                Image = SendApprovalRequest;
                ApplicationArea = All;
                trigger OnAction()
                begin
                end;
            }
            action("Cancel Approval Request")
            {
                Promoted = true;
                PromotedCategory = Category6;  // PromotedActionCategories = Request Approval
                Image = CancelApprovalRequest;
                ApplicationArea = All;
                trigger OnAction()
                begin
                end;
            }
        }
        area(Navigation)
        {
            action(Contact)
            {
                Promoted = true;
                PromotedCategory = Category7;  // PromotedActionCategories = Customer
                PromotedIsBig = true;
                Image = CustomerContact;
                ApplicationArea = All;
                trigger OnAction()
                begin
                end;
            }
            action("Account Details")
            {
                Promoted = true;
                PromotedCategory = Category7;  // PromotedActionCategories = Customer
                Image = Account;
                ApplicationArea = All;
                trigger OnAction()
                begin
                end;
            }
        }
    }

    var
    Age, DOB: Integer;
}