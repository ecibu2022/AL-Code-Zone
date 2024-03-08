page 50144 "Prompt Dialog"
{
    PageType = StandardDialog;
    Caption = 'Standard Dialog';
    
    layout
    {
        area(Content)
        {
            field(MyDate; MyOwnDate)
            {
                ApplicationArea=All;
                Caption='Work Date';
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(Attach)
            {
                Caption='View Code Unit';
                
                trigger OnAction();
                begin
                    CallUnit.MyProcedure();
                end;
            }
        }
    }
    

    var
        CallUnit: Codeunit "MTC Code Unit";
        MyOwnDate: Date;
}