// Write an interactive program to print a string entered in a pyramid form. For instance,
// the string "stream" has to be displayed as follows:[B]
// s
// st
// str
// stre
// strea
// stream in java basic 

import java.util.*;
public class prac5_5
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter String:");
        String str = sc.nextLine();
        for (int i = 1; i <= str.length(); i++) {
            System.out.println(str.substring(0, i));
        }


    }
}
