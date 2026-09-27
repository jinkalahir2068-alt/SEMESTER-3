/*Create class BankDemo and Account(accNum:int, accType:String, balance: double). 
Implement getter() and setter() method to assign and display data for 3 students */
class BankDemo {
    int accNum;
    String accType;
    double balance;

    void setData(int accNum, String accType, double balance) {
        this.accNum = accNum;
        this.accType = accType;
        this.balance = balance;
    }

    void getData() {
        System.out.println("Account Number: " + accNum);
        System.out.println("Account Type: " + accType);
        System.out.println("Balance: " + balance);
    }

}

public class prac_6_3 {

    public static void main(String[] args) {
        BankDemo b1 = new BankDemo();
        BankDemo b2 = new BankDemo();
        BankDemo b3 = new BankDemo();

        b1.setData(101, "Saving", 5000);
        b1.getData();

        b2.setData(102, "Current", 8000);
        b2.getData();

        b3.setData(103, "Saving", 10000);
        b3.getData();

    }
}
