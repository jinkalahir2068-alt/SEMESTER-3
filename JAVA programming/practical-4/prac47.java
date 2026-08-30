//Write a program in Java to print all 3-digit prime numbers.[C]
public class prac4_7
{
    public static void main(String[] args)
    {
        System.err.println("Prime numbers between 100 to 999 : ");
        for(int i = 100; i<=999 ;i++)
        {
            int flag = 0;
            for(int j = 2; j<=Math.sqrt(i);j++)
            {
                if(i%j==0)
                {
                    flag=1;
                    break;
                }
            }
            if(flag==0)
            {
                System.out.println(i + " ");
            }
        }
    }
}
