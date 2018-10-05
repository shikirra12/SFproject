@IsTest
public class testSavingAccount {
    
    static testmethod void PostiveTest(){
        savingsAccount sa = new savingsAccount('Katy', 2);
        
        sa.depositMoney(350.55);
        System.assertEquals(450.55, sa.getAccountBalance());
        
        try{
            sa.withdrawMoney(200.00);
                } catch(MathException m){
                    System.assert(true);
                }
    }

}