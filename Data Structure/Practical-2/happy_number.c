//WAP to check whether a given number is a Happy Number or not.
#include<stdio.h>

void main()
{
    int n;
    printf("Enter number: ");
    scanf("%d", &n);

    while(n != 1 && n != 4)
    {
        int arr[10];
        int count = 0;
        int sum = 0;

        while(n > 0)
        {
            arr[count] = n % 10;
            n = n / 10;
            count++;
        }

        for(int i = 0; i < count; i++)
        {
            sum = sum + arr[i] * arr[i];
        }

        n = sum;
    }

    if(n == 1)
    {
        printf("Happy Number");
    }
    else
    {
        printf("Not Happy Number");
    }
}
