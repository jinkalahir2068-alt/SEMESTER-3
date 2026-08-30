//Write a program to calculate the area of Rectangle.[A] using function
import java.util.Scanner;
public class prac3_3
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter length of rectangle: ");
        int length = sc.nextInt();
        System.out.print("Enter width of rectangle: ");
        int width = sc.nextInt();

        int area = calculateArea(length, width);
        System.out.println("Area of rectangle: " + area);
    }

    public static int calculateArea(int length, int width)
    {
        return length * width;
    }
}
