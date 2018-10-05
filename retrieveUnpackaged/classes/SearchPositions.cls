public class SearchPositions {
	
    public static List<Position__c> findAllPositions(String searchTerm){
        String q = '%' + searchTerm + '%';
       List<Position__c> allPositions = [select Name from Position__c where Name = :q];
       return allPositions;
    } 
}