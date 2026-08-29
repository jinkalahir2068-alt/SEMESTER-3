#include<stdio.h>

void decimalToBinary(int n)
{
    if(n == 0)
    {
        return;
    }

    decimalToBinary(n / 2);
    printf("%d", n % 2);
}

int main()
{
    int n;

    printf("Enter decimal number: ");
    scanf("%d", &n);

    printf("Binary equivalent: ");

    if(n == 0)
    {
        printf("0");
    }
    else
    {
        decimalToBinary(n);
    }

    return 0;
}
