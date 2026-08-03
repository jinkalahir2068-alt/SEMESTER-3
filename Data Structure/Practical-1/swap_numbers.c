// WAP to swap the first and last digit of a number.
#include<stdio.h>

void main()
{
    int n, temp, first, last, digits = 0, power = 1;

    printf("Enter value of n: ");
    scanf("%d", &n);

    temp = n;
    last = n % 10;

    while(temp >= 10)
    {
        temp = temp / 10;
        digits++;
    }

    first = temp;

    for(int i = 0; i < digits; i++)
    {
        power = power * 10;
    }

    n = n % power;
    n = n / 10;

    int ans = last * power + n * 10 + first;

    printf("After swapping = %d", ans);
}
