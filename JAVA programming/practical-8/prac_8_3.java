class BankAccount {
    int accountNo;
    double balance;

    static String bankName;
    static double interestRate;

    BankAccount(int no, double bal) {
        accountNo = no;
        balance = bal;
    }

    static void setBankName(String name) {
        bankName = name;
    }

    static void setInterestRate(double rate) {
        interestRate = rate;
    }

    static String getBankName() {
        return bankName;
    }

    static double getInterestRate() {
        return interestRate;
    }

    void display() {
        System.out.println("Account No: " + accountNo);
        System.out.println("Balance: " + balance);
        System.out.println("Bank Name: " + bankName);
        System.out.println("Interest Rate: " + interestRate);
        System.out.println();
    }
}

public class prac_8_3 {
    public static void main(String[] args) {
        BankAccount.setBankName("ABC Bank");
        BankAccount.setInterestRate(7.5);

        BankAccount a1 = new BankAccount(101, 5000);
        BankAccount a2 = new BankAccount(102, 7000);
        BankAccount a3 = new BankAccount(103, 9000);

        a1.display();
        a2.display();
        a3.display();
    }
}
