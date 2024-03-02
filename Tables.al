table 50140 "Employee Table"
{
    DataClassification = ToBeClassified;
    Caption='My Employee Table';
    
    fields
    {
        field(1; EmpCode; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
        
        field(2; EmpName; Text[100])
        {

        }

        field(3; EmpDepartment; Text[50])
        {

        }

        field(4; MyDateField; Date)
        {
        Caption = 'My Date Field';
        }


    }
    
    keys
    {
        key(PrimaryKey; EmpCode)
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}