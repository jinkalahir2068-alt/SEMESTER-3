//Write a program that prompts the user to enter three numbers. Find the largest
// number.[C]

import java.util.Scanner;
public class prac3_5
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a ");
        int a = sc.nextInt();
        System.out.print("Enter b: ");
        int b = sc.nextInt();
        System.out.print("Enter c: ");
        int c = sc.nextInt();

        int max = maxNo(a,b,c);
        System.out.println("Max No is " + max );
    }
    public static int maxNo(int a, int b, int c)
    {
      if(a>b && a>c)
      {
        return a ;
      }
      else if(b>a && b>c)
      {
        return b;
      }
      else
      {
        return c;
      }
    }
}
