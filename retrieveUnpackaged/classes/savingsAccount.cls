public class savingsAccount extends bankAccount {
    
    public savingsAccount(string aOwner, integer aNumber){
       super(aOwner, aNumber);     
    }
    
    public override decimal withdrawMoney(decimal amount){
        throw new MathException('Does not allow withdrawls from this account');
    }
}