//Write a program that reads a number in meters, converts it to feet, and displays the result.[B]
import java.util.*;
public class MeterToFeet {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter distance in meters: ");
        double meters = sc.nextDouble();
        double feet = meters*3.28084;
        System.out.print(feet);
        
    }
}
