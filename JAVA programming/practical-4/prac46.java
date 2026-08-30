//Write a program to find that given Number is palindrome or not. [B]
import java.util.*;
public class prac4_6
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter number");
        int n = sc.nextInt();
         int temp = n;
        int rev = 0;
        while(n!=0)
        {
            int remainder = n % 10;
            rev = rev * 10 + remainder; 
            n = n / 10;                    
        }

        if(temp==rev)
        {
            System.out.println(temp +" is palidrome");
        }
        else{
            System.out.println(temp +" is not palidrome");
        }
    }
}
