//Write a program to create basic calculator by getting 2 numbers and an operation(+,-
// ,/,*,%) from the user and apply the operation given in a string on the given numbers using functions.[A
import java.util.*;
public class prac3_2
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        while(true){
            System.out.print("Enter first number: ");
            double num1 = sc.nextDouble();
            System.out.print("Enter second number: ");
            double num2 = sc.nextDouble();
            System.out.print("Enter operation (+, -, *, /, % , -1 to exit): ");
            String operation = sc.next();

            if (operation.equals("-1")) {
                System.out.println("Exiting calculator.");
                break;
            }

            double result = calculate(num1, num2, operation);
            System.out.println("Result: " + result);
        }
       
    }

    public static double calculate(double num1, double num2, String operation)
    {
        switch (operation)
        {
            case "+":
                return num1 + num2;
            case "-":
                return num1 - num2;
            case "*":
                return num1 * num2;
            case "/":
                if (num2 != 0)
                    return num1 / num2;
                else
                    System.out.println("Division by zero is not allowed.");
            case "%":
                if (num2 != 0)
                    return num1 % num2;
                else
                    System.out.println("Division by zero is not allowed.");
            default:
                 System.out.println("Invalid operation: " + operation);
        }
        return 0;
    }
}
