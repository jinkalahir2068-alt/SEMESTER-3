// WAP to convert a decimal number to binary.
#include<stdio.h>

void main()
{
    int n;
    printf("Enter value of n: ");
    scanf("%d", &n);

    if(n == 0)
    {
        printf("0");
    }
    else
    {
        int arr[50];
        int count = 0;

        while(n > 0)
        {
            arr[count] = n % 2;
            n = n / 2;
            count++;
        }

        for(int i = count - 1; i >= 0; i--)
        {
            printf("%d", arr[i]);
        }
    }

    printf("\n");
}
