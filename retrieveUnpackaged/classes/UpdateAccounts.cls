public class UpdateAccounts {
    public static void allAccounts(Set<Id> accountIds){
        List<Account> acctsToUpdate = [select Name, Number_Of_Contacts__c,(select Id from Contacts)From Account Where Id in :accountIds];
        for(Account a: acctsToUpdate){
            a.Number_Of_Contacts__c =a.Contacts.size();
        }
        update acctsToUpdate;
    }
}