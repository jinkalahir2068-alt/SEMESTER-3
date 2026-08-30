// Write a program to convert temperature from Fahrenheit to Celsius. using function for both (Formula : c = (f-32)*5/9 ) [B]
import java.util.Scanner;
public class prac3_4
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter temperature in Fahrenheit: ");
        double fahrenheit = sc.nextDouble();

        double celsius = convertToCelsius(fahrenheit);
        System.out.println("Temperature in Celsius: " + celsius);
    }

    public static double convertToCelsius(double fahrenheit)
    {
        return (fahrenheit - 32) * 5 / 9;
    }
}
