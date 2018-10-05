trigger AccountAddressTrigger on Account (before insert, before update) {
   /* (.IsBefore){
        (.IsInsert || .IsUpdate){
            if(Billing_Postal_Code == Match_Billing_Address__c ){
                Account.Shipping_Postal_Code = Billing_Postal_Code;
            }
        }
 	 }
 */
}