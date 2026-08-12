// Write a java program to take user input [A]
//  Through Scanner class

import java.util.*;
public class UserInput {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int n = sc.nextInt();
        System.out.println("You entered: " + n);
    }
}
// Through Command Line Argument.
import java.util.*;
public class Cmd {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Name "+args[0]);
        System.out.println("Roll No "+args[1]);
    }
}
