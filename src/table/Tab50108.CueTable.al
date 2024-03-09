/// <summary>
/// Adding cues to the role center in business central
/// You need to have a table where information is going to come from
/// </summary>

table 50108 "CueTable"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PrimaryKey; Code[20])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(2; Requests; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count("Dynamic Request Page Entity");
        }
    }

    keys
    {
        key(PK; PrimaryKey)
        {
            Clustered = true;
        }
    }

    procedure InsertIfNotExists()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}




/// <summary>
/// Create a page for the cues
/// </summary>
page 50147 "MyCustomCue"
{
    Caption='My Approvals';
    PageType = CardPart;
    SourceTable = CueTable;
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            cuegroup(cuegroup1)
            {
                Caption = 'My Pending Approvals';

                field(  Requests; Requests)
                {
                    Caption = 'My Requests to approve';
                    ApplicationArea = all;
                    StyleExpr = Style;

                    trigger OnDrillDown()
                    
                    begin
                        // Open the page displaying the list of pending approvals
                        page.Run(page::"Requests to Approve");
                    end;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Set Up your Cues")
            {
                ApplicationArea = All;
                Image = Setup;

                trigger OnAction()
                var
                    CuesAndKpis: Codeunit "Cues And KPIs";
                    CueRecordRef: RecordRef;
                begin
                    CueRecordRef.GetTable(Rec);
                    CuesAndKpis.OpenCustomizePageForCurrentUser(CueRecordRef.Number);
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.InsertIfNotExists();
    end;

    trigger OnAfterGetCurrRecord()
    
    begin
        
    end;


    var
        Requests: Integer;
        Style: Text;

}

