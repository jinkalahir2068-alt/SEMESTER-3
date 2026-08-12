//WAP to determine if an input character string is of the form a^ib^i where i >= 1 i.e., Number of ‘a’ should be equal to number of ‘b’
#include<stdio.h>
#include<string.h>
#define n 20
char s[n];
int top = -1;
void push(char x)
{
    s[++top] = x;
}
char pop()
{
    return s[top--];
}
void main()
{
    char str[500] ;
    int i;
    printf("Enter a string: ");
    scanf("%s", str);
    for(i=0; str[i]=='a'; i++)
    {
        push(str[i]);
    }
    while(str[i] == 'b')
    {
        if (top == -1) {
            printf("not equal\n");
            return 0;
        }
        pop();
        i++;
         
    }
    if(top == -1 && str[i] == '\0')
    {
        printf("equal\n");
    }
    else{
        printf("not equal\n");
        
    }

}
