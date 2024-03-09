report 50202 ReportsInAL
{
    ApplicationArea = All;
    Caption = 'Reports In AL';
    UsageCategory = ReportsAndAnalysis;
    AdditionalSearchTerms = 'Customers'' List';
    DataAccessIntent = ReadOnly;
    AllowScheduling = true;
    // Specifying the layout of the report
    RDLCLayout = 'Example_RDLCLayout.rdl';
    DefaultLayout = RDLC;
    // Press Ctrl+Shift+B to generate the layout file


    dataset
    {
        dataitem(CustomersReport; Customer)
        {
            // RequestFilterFields property
            // Sets which fields are automatically included on the tab of the request page that is related to this data item. The user can set filters on these fields.
            RequestFilterFields="No.","Search Name","Customer Posting Group";
            // Specifying Columns for the report
            // Adding Company Information to the report
            column(Logo; CompanyInfo.Picture)
            {
                
            }
            column(NameofCompany; CompanyInfo.Name)
            {

            }

            column(CompanyAddress; CompanyInfo.Address)
            {
                
            }

// Table values
            column(ReportPageNumber; "No.")
            {

            }

            column(CustName; Name)
            {
                
            }

            column(Phone; "Phone No.")
            {
                
            }

            column(Currency; "Customer Posting Group")
            {
                
            }

            column(CustBalance; Balance)
            {
                
            }

        }
    }

    requestpage
    {
        SaveValues=true;
        AboutTitle='Awesome Report';
        AboutText='THis is my first AL Report';

        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }

        actions
        {
            area(processing)
            {
            }
        }
    }

    labels
    {
        label1='Label Text', Comment='Foo', MaxLength=999, Locked=true;
    }


trigger OnInitReport()
begin
    CompanyInfo.Get;
    CompanyInfo.CalcFields(Picture);
end;

    var
        CompanyInfo: Record "Company Information";
    
}
