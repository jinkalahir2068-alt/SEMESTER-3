//WAP to check whether a number is a Harshad (Niven) Number or not.
#include<stdio.h>

void main()
{
    int n;
    printf("Enter value of n: ");
    scanf("%d", &n);

    int temp = n;
    int sum = 0;

    while(n != 0)
    {
        int rem = n % 10;
        sum = sum + rem;
        n = n / 10;
    }

    if(temp % sum == 0)
    {
        printf("It is a Harshad Number.");
    }
    else
    {
        printf("It is not a Harshad Number.");
    }
}
