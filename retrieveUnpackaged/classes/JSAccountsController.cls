public class JSAccountsController {
    public List<Account> accounts {get; set;}
    public List<Contact> contacts {get; set;}
    
    public JSAccountsController(){
        getAllAccounts();
    }
    
    public PageReference getAllAccounts(){
        accounts = [SELECT Id, Name, BillingState, Type, Rating, Industry, CreatedDate FROM Account];
        
        return ApexPages.currentPage();
    }
    
    @RemoteAction
    public static List<Contact> getContactsByAccountId(Id accountId){
        system.debug(accountId);
        return [SELECT FirstName, LastName, Email, Phone FROM Contact WHERE AccountId = :accountId];   
    }
    
    @RemoteAction
    public static List<Account> sortAccounts(){
        return [SELECT Name FROM Account];
    }
}