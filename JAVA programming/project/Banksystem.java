import java.util.Scanner;

public class Banksystem{
    private String accno;
    private Double balance;
    public String name;

    public Banksystem(String accno, Double balance, String name){
        this.accno=accno;
        this.balance=balance;
        this.name=name;
    }

    public void checkBalance(){
        System.out.println("your account details::");
        System.out.println("Account number: "+ accno);
        System.out.println("currentbalance: "+ balance);
        System.out.println("Account holder name: "+ name);
    }

    public void depositMoney(double damount){
        if(damount >0){
            balance=balance+damount;
            System.out.println("deposit sucessfull!! "+ damount);
            System.out.println("your new balance: "+ balance);
        }
        else{
            System.out.println("amount must be greater then zero");
        }
    }

    public void withdrawMoney(double wamount){
        if(wamount > balance){
            System.out.println("Transaction Failed! Insufficient balance");
        }
        else if(wamount <= 0){
            System.out.println("amount must be greater then zero");
        }
        else{
            balance =balance-wamount;
            System.out.println("withdraw sucessfull!! "+ wamount);
            System.out.println("your remaining balance: "+ balance);
        }
    }

    public static void main(String[] args){
        Scanner sc= new Scanner(System.in);
        
        Banksystem myaccount= new Banksystem( "123456789",10000.0, "jinkal makwana");

        int choice=0;

        System.out.println("welcome to the banking system "+ myaccount.name);

        while(choice != 4){

            System.out.println("1. Check Balance");
            System.out.println("2. Deposit Money");
            System.out.println("3. Withdraw Money");
            System.out.println("4. Exit from system");
            System.out.print("Enter your choice: ");

            choice=sc.nextInt();

            switch(choice){
                case 1:
                    myaccount.checkBalance();
                    break;

                case 2:
                    System.out.println("enter deposit amount:");
                    double depositeamount=sc.nextDouble();
                    myaccount.depositMoney(depositeamount);
                    break;

                case 3:
                    System.out.println("enter withdraw amount:");
                    double withdrawamount=sc.nextDouble();
                    myaccount.withdrawMoney(withdrawamount);
                    break;

                case 4:
                    System.out.println("\nThank you for using our banking system!!");
                    System.exit(0);
                    break;

                default:
                    System.out.println("enter choice between 1 to 4");
            }
        }
    }
    
}
