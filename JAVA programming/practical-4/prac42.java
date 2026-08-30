import java.util.Scanner;
public class prac4_2
{

    public static void main(String[] args)
    {
        Scanner sc = new Scanner (System.in);
        System.out.print("Enter Number: ");
        int a = sc.nextInt();
        if(a%2==0)
        {
            System.out.println(a+" is a even number");
        }
        else
        {
            System.out.println(a+" is a odd number");

        }
    }
}
