// WAP to find the largest and smallest digit in a number
#include<stdio.h>

void main()
{
    int n;
    printf("Enter value of n: ");
    scanf("%d", &n);

    int rem;
    max = 0;
    min = 9;

    while(n != 0)
    {
        rem = n % 10;

        if(rem > max)
        {
            max = rem;
        }

        if(rem < min)
        {
            min = rem;
        }

        n = n / 10;
    }

    printf("Largest digit = %d\n", max);
    printf("Smallest digit = %d", min);
}
