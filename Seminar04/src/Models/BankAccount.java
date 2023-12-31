package Models;

/**
 * Модель банковского аккаунта
 */
public class BankAccount {
    private long card;
    private int balance;

    public BankAccount() {
        balance = 1000;
    }

    public long getCard() {
        return this.card;
    }

    public int getBalance() {
        return this.balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }

    @Override
    public String toString() {
        return "BankAccount {" +
                " card= " + (String.format("%016d", card)) +
                ", balance= " + balance +
                " }";
    }
}
