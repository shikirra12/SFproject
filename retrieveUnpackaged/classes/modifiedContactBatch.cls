public class modifiedContactBatch implements Database.Batchable<sObject>, Database.Stateful{
	public Integer total = 0;
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'SELECT Number_Of_Contacts__c, (SELECT Id FROM Contacts) FROM Account';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext bc, List<sObject>scope){
        for(Account a: (List<Account>)scope){
            a.Number_Of_Contacts__c = a.Contacts.size();
            total++;
        }
        update scope;
    }
    
    public void finish(Database.BatchableContext bc){
        System.debug('Updated: ' + total + ' records');
    }
}