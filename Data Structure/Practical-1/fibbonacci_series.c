//WAP to print the Fibonacci series up to n terms.
#include<stdio.h>
void main()
{
    int n ; 
    printf("enter value of n :");
    scanf("%d",&n);
    int a = 0, b=1;
    if(n>=1)
    {
        printf("%d , ",a);
    }
    if(n>=2)
    {
        printf("%d , ",b);
    }
    for(int i = 3 ; i<=n; i++)
    {
        int c = a+b;
        printf("%d , ",c);
        a=b;
        b=c;
    }
}
