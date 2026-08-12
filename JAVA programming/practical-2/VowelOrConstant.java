//Write a program that prompts the user to enter a letter and check whether a letter is a vowel or a constant.[C]
import java.util.*;
public class  VowelOrConstant
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Character: ");
        char c = sc.next().charAt(0);
        if(c=='a' || c=='e' || c=='i' || c=='o' || c=='u' ||c=='A' || c=='E' || c=='I' || c=='O' || c=='U' )
        {
            System.out.print(c +  "is a vowel ");
        }
        else
        {
            System.out.print(c + " is a constant ");
        }


    }
}
