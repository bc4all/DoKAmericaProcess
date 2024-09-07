// codeunit 50100 "MNB Posting Item Journal"
// {
//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Check Line", 'OnAfterCheckItemJnlLine', '', false, false)]
//     local procedure RunOnAfterCheckItemJnlLine(var ItemJnlLine: Record "Item Journal Line")
//     var
//         DOKDateCannotBeEmptyErr: Label 'DOK Date cannot be empty';
//     begin
//         //       if ItemJnlLine."MNB DOK Date" = 0D then
//         //           Error(DOKDateCannotBeEmptyErr);
//     end;

//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnAfterInitItemLedgEntry', '', false, false)]
//     local procedure RunOnAfterInitItemLedgEntry(var ItemJournalLine: Record "Item Journal Line"; var NewItemLedgEntry: Record "Item Ledger Entry")
//     begin
//         NewItemLedgEntry."MNB DOK Date" := ItemJournalLine."MNB DOK Date";
//     end;

//     #region "Sales Line"
//     // [EventSubscriber(ObjectType::Table, Database::"Item Journal Line", 'OnAfterCopyItemJnlLineFromSalesLine', '', false, false)]
//     // local procedure RunOnAfterCopyItemJnlLineFromSalesLine(SalesLine: Record "Sales Line"; var ItemJnlLine: Record "Item Journal Line")
//     // begin
//     //     ItemJnlLine."MNB DOK Date" := SalesLine."MNB DOK Date";
//     // end;
//     #endregion

//     procedure GetAllCustomers(var CountryRegion: Record "Country/Region")
//     var
//         Customer: Record Customer;
//         CustomerList: List of [Code[20]];
//     begin
//         if Customer.FindSet() then
//             repeat
//                 if CountryRegion."Code" = Customer."Country/Region Code" then begin
//                     Customer.Address := '';
//                     Customer.City := '';
//                     Customer."Post Code" := '';
//                 end else
//                     if Customer.City <> '' then
//                         CustomerList.Add(Customer."No.");
//             until Customer.Next = 0;
//     end;
// }