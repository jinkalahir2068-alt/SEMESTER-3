//Write a program to check whether a year is leap year or not.[B]
import java.util.*;
public class prac4_5
{
    public static  void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Year");
        int a = sc.nextInt();
        for(int i = 0; i < 1; i++)
        {
            if(a%4==0 && a%100!=0 || a%400==0)
            {
                System.out.println("Leap Year");
            }
            else
            {
                System.out.println("Not Leap Year");
            }
        }
        

    }
}
