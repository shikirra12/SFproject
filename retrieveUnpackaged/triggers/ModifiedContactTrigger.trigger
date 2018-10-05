trigger ModifiedContactTrigger on Contact (after insert, after update, before delete) {
    if(Trigger.IsAfter){
        if(Trigger.IsInsert){
            Set<Id> accountIds = new Set<Id>();
            
            for(Contact c: trigger.new){
                accountIds.add(c.AccountId);
            }
            
            List<Account> acctsToUpdate = [select Name, Number_Of_Contacts__c,(select Id from Contacts)From Account Where Id in :accountIds];
            for(Account a: acctsToUpdate){
                a.Number_Of_Contacts__c =a.Contacts.size();
            }
            update acctsToUpdate;
        }
        
        if(Trigger.IsUpdate){
             Set<Id> updatedAccounts = new Set<Id>();
            for(Contact c: trigger.new){
                if(c.AccountId != trigger.oldMap.get(c.Id).AccountId){
                    updatedAccounts.add(c.AccountId);
                    trigger.oldMap.remove(c.Id);
                }
            }
            updateAccounts.allAccounts(updatedAccounts);    
        }
        
        if(Trigger.IsDelete){
            Set<Id> accountIds = new Set<Id>();
            for(Contact c: trigger.old){
                accountIds.add(c.AccountId);
            }   
            updateAccounts.allAccounts(accountIds);
        }
    }  
}