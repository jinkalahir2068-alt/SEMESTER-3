//  WAP to print Pascal triangle.
#include<stdio.h>
void main()
{
    int n, num = 1, i, j;
    printf("Enter number of rows: ");
    scanf("%d", &n);
    for(i = 0; i < n; i++)
    {
                num=1;  
                for(j = 0; j <= i; j++)
                {
                    printf("%d ", num);
                    num = num * (i - j) / (j + 1);
                }
                printf("\n");
    }
}
