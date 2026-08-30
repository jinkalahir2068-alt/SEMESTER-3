// Write a program to print given array in reverse order.[A]
import java.util.*;
public  class prac5_3
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        int arr[] = new int[6];
        for(int i = arr.length-1 ; i> 0; i--)
        {
         System.out.print("Enter No :");
         arr[i] = sc.nextInt();
        }
        int sum = 0;
        for(int i = 0 ; i<arr.length ; i++)
        {
            sum = sum +arr[i];
        }
        System.out.println("Sum is "+ sum );
    }
}
