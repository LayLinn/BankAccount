package bank.servlet;

public class BankAccount {

    private String accountID, accountName, type;
    private int balance, amount;

    public BankAccount() {
        type = "";
    }

    public String getAccountID() {
        return accountID;
    }

    public void setAccountID(String accountID) {
        this.accountID = accountID;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }

    public int getCalculatedBalance() {
        switch (type) {
            case "deposit":
                return balance + amount;
            case "withdraw":
                return (amount <= balance) ? balance - amount : balance;
            default:
                return balance;
        }
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public void setType(String type) {
        this.type = type;
    }

}
