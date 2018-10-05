public virtual class bankAccount {
    public string accountOwner;
    private integer accountNumber;
    private decimal accountBalance;
    
    public bankAccount(string aOwner, integer aNumber){
        this.accountOwner = aOwner;
        this.accountNumber = aNumber;
        this.accountBalance = 100.00;
    }

    public decimal getAccountBalance(){
        return this.accountBalance;
    }
    
    public decimal depositMoney(decimal depositAmount){
        return this.accountBalance = depositAmount + this.accountBalance;
    }
    
    public virtual decimal withdrawMoney(decimal withdrawAmount){
        if(withdrawAmount < 0){
            throw new MathException('Must be a postive whole Number');
        } 
        else if(withdrawAmount > accountBalance){
            throw new MathException('Withdraw amount must be less than account Balance');
        }
        else {
            return this.accountBalance = accountBalance - withdrawAmount;
        }
    }
}