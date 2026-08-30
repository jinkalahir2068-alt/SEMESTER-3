//  Write a program to find maximum no from given 3 no.(without if-else).[A]
import java.util.Scanner;
public class prac4_3
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a: ");
        int a = sc.nextInt();
        System.out.print("Enter b: ");
        int b = sc.nextInt();
        System.out.print("Enter c: ");
        int c = sc.nextInt();
    
       int max = ((a>b)?(a>c?a:c):(b>c?b:c));
       System.out.println("Max No is " + max);
    }
}
