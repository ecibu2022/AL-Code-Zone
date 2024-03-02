pageextension 50124 MyExtension extends "Customer Card"
{
    layout
    {        
        // Adds changes to existing ones
        // Add changes to page layout here
        // Adding a new control field 'ShoeSize' in the group 'General FastTab' when you open customer card after customer list
        addlast(General)
        {
            field("Shoe Size"; ShoeSize)
            {
                Caption = 'Shoe size';
                ApplicationArea=All;

                trigger OnValidate();
                begin
                    if (ShoeSize < 10) then
                        Error('Feet too small');
                end;
            }
        }
        // End

    }
    
    actions
    {
        // Add changes to page actions here
        // To see this go to Actions then New Document you will see MyActionGroup you will see Hello! and MyAction2
         addlast(Creation)
        {
            group(MyActionGroup)
            {
                Action(MyAction1)
                {
                    ApplicationArea = All;
                    Caption = 'Hello!';

                    trigger OnAction();
                    begin
                        Message('My message');
                    end;
                }

                Action(MyAction2)
                {
                    ApplicationArea = All;
                    
                    // Run page to test how actions work
                    RunObject = page "Absence Registration";                    
                }
            }
        }
    

    }
    
    var
        ShoeSize: Integer;
}