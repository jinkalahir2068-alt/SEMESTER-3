// Write a program that creates and initializes a four integer element array. Calculate and
// display the average of its values.[A]
import java.util.Scanner;

public class prac5_2
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
         int arr[] = new int[4];
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
        int avg = sum / 4;
        System.out.println("Average is "+ avg );
    }
}
