public class wholeNumbers {
	
   public static Integer averageNumber(List<Integer> wholeNumbersList) {
        Integer sum = 0;
        
        for(Integer i: wholeNumbersList){
           sum += i; 
        }
         return sum/wholeNumbersList.size();
    }
    
   public static Integer smallestNumber(List<Integer> wholeNumbersList){
        wholeNumbersList.sort();
       	return math.min(wholeNumbersList[0], (wholeNumbersList.size() - 1));
    }

    public static Integer largestNumber(List<Integer> wholeNumbersList){
        wholeNumbersList.sort();
        return math.max(wholeNumbersList[0], (wholeNumbersList.size()-1));
    }
    
    public String oddOrEven(Integer wholeNumber){
        if((math.mod(wholeNumber, 2))== 0){
           return 'Number is Even'; 
        } else {
            return 'Number is Odd';
        }
    }
    
    public static String numberAbbreviation(Integer wholeNumber){
        Integer divBy100 = math.mod(wholeNumber, 100);
        Integer divBy10 = math.mod(wholeNumber, 10);
        
        if(divBy10 == 1 && divBy100 != 11){
            return wholeNumber + 'st';
        } else if(divBy10 == 2 && divBy100 != 12){
            return wholeNumber + 'nd';
        } else if(divBy10 == 3 && divBy100 != 13){
            return wholeNumber + 'rd';
        } else {
          return wholeNumber + 'th';  
        }
    }
}