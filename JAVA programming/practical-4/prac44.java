//Write a program to check that the given number is prime or not.[A]
import java.util.Scanner;
public class prac4_4
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter No.");
        int a = sc.nextInt();
        int flag = 0;
        for(int i=2; i<=a/2; i++)
        {
            if(a%i==0)
            {
                flag = 1;
                break;
            }
        }
        if(flag == 0)
        {
            System.out.println("No is Prime");
        }
        else
        {
            System.out.println("No is not Prime");
        }
    }
}
