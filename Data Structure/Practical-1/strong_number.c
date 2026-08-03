//WAP to check whether a number is a Strong Number or not.
#include<stdio.h>

void main()
{
    int n;
    printf("Enter value of n: ");
    scanf("%d", &n);

    int temp = n;
    int sum = 0;

    while(n > 0)
    {
        int rem = n % 10;
        int fact = 1;

        for(int i = 1; i <= rem; i++)
        {
            fact = fact * i;
        }

        sum = sum + fact;
        n = n / 10;
    }

    if(sum == temp)
    {
        printf("Strong Number");
    }
    else
    {
        printf("Not a Strong Number");
    }
}
