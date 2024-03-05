pageextension 50147 "My Location CodeChecker" extends "Purchase Order"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        modify(SendApprovalRequest)
        {
            trigger OnBeforeAction()
            begin
                LineVar.SETRANGE("Document Type", Rec."Document Type"::Order);
                LineVar.SETRANGE("Document No.", Rec."No.");

                if LineVar.FINDSET then begin
                    repeat
                        if (LineVar."Location Code" = '') then begin
                        Rec.TestField("Location Code");
                        end;
                    until LineVar.NEXT = 0;
                     end;

            end;
        }
    }

    var
         LineVar: Record "Purchase Line";
}