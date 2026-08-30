//Write a Java program to sum values of an array.[A]
import java.util.Scanner;

public class prac5_1
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
         int arr[] = new int[6];
        for(int i = 0 ; i<arr.length ; i++)
        {
         System.out.print("Enter No "+(i+1)+":");
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
