page 50141 "Employee Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Employee Table";
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(EmpCode; Rec.EmpCode)
                {
                    ApplicationArea = All;
                    
                }

                field(Name; Rec.EmpName)
                {
                    ApplicationArea = All;
                    
                }

                field(Department; Rec.EmpDepartment)
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
        myInt: Integer;
}