//WAP to check whether a number is a Duck Number.
#include<stdio.h>

void main()
{
    int n;
    printf("Enter value of n: ");
    scanf("%d", &n);

    int duck = 0;

    while(n != 0)
    {
        int digit = n % 10;

        if(digit == 0)
        {
            duck = 1;
            break;
        }

        n = n / 10;
    }

    if(duck == 1)
    {
        printf("It is a Duck Number.");
    }
    else
    {
        printf("It is not a Duck Number.");
    }
}
