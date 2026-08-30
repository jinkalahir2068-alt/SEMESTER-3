// Write a Java program to copy all the elements of an array to another array and print
// both the array elements. [B]
import java.util.*;
public class prac5_4
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        int arr[] = new int[6];
        int arr1[] = new int [6];
        for(int i = 0;i < arr.length; i++)
        {
         System.out.print("Enter No :");
         arr[i] = sc.nextInt();
        }
        for (int i = 0; i < arr.length; i++) {
            arr1[i] = arr[i];
        }
        System.out.println("Original Array:");
        for (int i = 0; i < arr1.length; i++) {
            System.out.print(arr[i] + " ");
        }
        System.out.println("\n");
        System.out.println("Copiedd  Array:");
        for (int i = 0; i < arr1.length; i++) {
            System.out.print(arr1[i] + " ");
        }
        
    }
}
