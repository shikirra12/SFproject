@IsTest
public class testBankAccount {
    
    static testmethod void PositiveTest(){
        bankAccount b = new BankAccount('John', 3);
        
        b.getAccountBalance();
        System.assertEquals(100.00, b.getAccountBalance());
        
        b.depositMoney(253.45);
        System.assertEquals(353.45, b.getAccountBalance());
        
        b.withdrawMoney(100.15);
        System.assertEquals(253.30, b.getaccountBalance());
    }
	
    static testmethod void NegativeTest(){
        bankAccount b = new BankAccount('Kirra', 5);
        
        try{
            b.withdrawMoney(-100.00);
        }catch(MathException m) {
            System.assert(true);
        }
        
        try{
            b.withdrawMoney(200.70);
        }catch(MathException m) {
            System.assert(true);
        }
    }
}