// WAP to count the number of digits, sum of digits and product of digits of a number.
#include<stdio.h>

void main()
{
    int n;
    printf("Enter value of n: ");
    scanf("%d", &n);

    int sum = 0;
    int product = 1;
    int count = 0;

    while(n > 0)
    {
        int rem = n % 10;
        sum = sum + rem;
        product = product * rem;
        count++;
        n = n / 10;
    }

    printf("Number of digits = %d\n", count);
    printf("Sum of digits = %d\n", sum);
    printf("Product of digits = %d", product);
}
