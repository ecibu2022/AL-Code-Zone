// // Page extension allows you to add fields, actions, mofiy fields, modify actions in an existing page
// pageextension 50146 CheckLocationCode extends "Purchase Order"
// {
//     layout
//     {
//         // Add changes to page layout here
//     }

//     actions
//     {
//         modify(SendApprovalRequest)
//         {
//             trigger OnBeforeAction()
//             begin
//                 // Assuming all lines have the location code filled initially
//                 AllLinesFilled := true;

//                 // Filter "Purchase Line" records related to the current order
//                 // Setting filters on the LineVar record variable to only include lines related to the current order being processed
//                 LineVar.SETRANGE("Document Type", Rec."Document Type"::Order);
//                 LineVar.SETRANGE("Document No.", Rec."No.");

//                 // Iterate through each line
//                 // Checks if there are any lines found based on the filters set. If found, it enters the begin...end block.
//                 // FINSET allows us to retrieve all records in a table
//                 if LineVar.FINDSET then begin
//                     repeat
//                         // Check if the location code is empty for the current line
//                         if (LineVar."Location Code" = '') then begin
//                             // AllLinesFilled := false;
//                             Error('Location Code is required for all lines before sending for approval');
//                             break;
//                         end;
//                     until LineVar.NEXT = 0;
//                     //Iterates through each line found in the LineVar record variable until there are no more lines left
//                 end;

//                 // If any line is not filled, display error and exit
//                 // if not AllLinesFilled then begin
//                 //     Error('Location Code is required for all lines before sending for approval');
//                 //     exit;
//                 // end;

//             end;
//         }
//     }

//     var
//         // LineVar is declared as a record variable representing the "Purchase Line" table
//         LineVar: Record "Purchase Line";
//         AllLinesFilled: Boolean;
// }

