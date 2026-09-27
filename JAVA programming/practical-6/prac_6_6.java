/*Write a program to find length of string and print second half of the string.*/
class prac_6_6{
    public static void main(String[] args) 
    {
        String str = "HelloWorld";
        System.out.println("Length = " + str.length());
        int half = str.length() / 2;
        System.out.println("Second Half = " + str.substring(half));
    }
}
