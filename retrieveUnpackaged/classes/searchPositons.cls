public class searchPositons {
	String searchTerm = '';
    
    public List<Position__c> findAllPositons(String searchTerm){
        List<Position__c>  matchingPositions = [SELECT Name FROM Position__c WHERE Name = :searchTerm];
        
        return matchingPositions;
	}
}