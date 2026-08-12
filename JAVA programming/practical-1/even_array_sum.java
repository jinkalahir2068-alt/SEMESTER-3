//WAP to find a sum of even number 1D array. [A]
import java.util.*;
public class EvenArraySum
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Size : ");
        int n = sc.nextInt();
        int arr[] = new int[n];
        int sum = 0;
        System.out.print("Enter Elements : ");
        for(int i=0;i<n;i++)
        {
             arr[i]=sc.nextInt();
        }
        for(int i = 0 ; i<n;i++)
        {
            if(arr[i]%2==0)
            {
                sum=sum+arr[i];
            }
        }
        System.out.print("Sum is : " + sum);

        
    }
}
