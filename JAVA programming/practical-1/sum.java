// WAP to find a sum of numbers entered by user. (E.g: 582=5+8+2=15) [A]
import java.util.*;
public class Sum
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter n: ");
        int n = sc.nextInt();
        int sum =0; 
        int rev;
        while(n!=0)
        {
            rev= n % 10;
            sum = sum + rev;
            n = n/10;
        }
        System.out.print("Sum is : " + sum);

    }
}
