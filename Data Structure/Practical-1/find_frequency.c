//WAP to count the frequency of each digit in a number
#include<stdio.h>

void main()
{
    int n;
    printf("Enter value of n: ");
    scanf("%d", &n);

    int f;
    printf("Enter number to search: ");
    scanf("%d", &f);

    int count = 0;

    while(n != 0)
    {
        int rem = n % 10;

        if(rem == f)
        {
            count++;
        }

        n = n / 10;
    }

    printf("Count of %d is %d", f, count);
}
