//The marks obtained by a student in 5 different subjects are input through the
//keyboard. The student gets a division as per the following rules:
// I. Percentage above or equals to 60-first division
// II. Percentage between 50 to 59-second division
// III. Percentage between 40 and 49-Third division
// IV. Percentage less than 40-fail
// Write a program to calculate the division obtained by the student.[A]


import java.util.*;
public class prac4_1
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        int arr[] = new int[6];
        for(int i = 0 ; i<5 ; i++)
        {
         System.out.print("Enter Marks for subject "+i+":");
         arr[i] = sc.nextInt();
        }
        
        int percentage = calculatePercentage(arr);
        if(percentage >= 60)
        {
            System.out.println("First Division");
        }
        else if(percentage >= 50)
        {
            System.out.println("Second Division");
        }
        else if(percentage >= 40)
        {
            System.out.println("Third Division");
        }
        else
        {
            System.out.println("Fail");
        }
    }
    public static int calculatePercentage(int[] marks)
    {
        int total = 0;
        for(int i = 0 ; i<5;i++)
        {
            total = total + marks[i];
        }
        int percentage = total / 5;
        return percentage;  
    }
}
