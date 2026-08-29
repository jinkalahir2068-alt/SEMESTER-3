// WAP to convert infix notation to prefix notation using stack.
#include<stdio.h>
#include<string.h>

#define N 50

char S[N];
int TOP = -1;

void push(char x)
{
    S[++TOP] = x;
}

char pop()
{
    return S[TOP--];
}

int G(char c)
{
    if(c=='+' || c=='-')
        return 2;
    else if(c=='*' || c=='/')
        return 4;
    else if(c=='^')
        return 5;
    else if(c=='(')
        return 0;
    else
        return 8;
}

int F(char c)
{
    if(c=='+' || c=='-')
        return 1;
    else if(c=='*' || c=='/')
        return 3;
    else if(c=='^')
        return 6;
    else if(c=='(')
        return 9;
    else if(c==')')
        return 0;
    else
        return 7;
}

void reverse(char str[])
{
    int i, j;
    char temp;

    for(i=0, j=strlen(str)-1; i<j; i++, j--)
    {
        temp = str[i];
        str[i] = str[j];
        str[j] = temp;
    }
}

void revpol(char infix[])
{
    char polish[50];
    int i, j = 0;

    TOP = -1;


    reverse(infix);

    
    for(i=0; infix[i]!='\0'; i++)
    {
        if(infix[i]=='(')
            infix[i]=')';
        else if(infix[i]==')')
            infix[i]='(';
    }

    push('(');

    i = 0;

    while(infix[i]!='\0')
    {
        char next = infix[i];

        while(G(S[TOP]) > F(next))
        {
            polish[j++] = pop();
        }

        if(G(S[TOP]) != F(next))
            push(next);
        else
            pop();

        i++;
    }

    polish[j]='\0';

    reverse(polish);

    printf("Prefix Expression : %s", polish);
}

int main()
{
    char infix[50];

    printf("Enter Infix String: ");
    scanf("%s", infix);

    revpol(infix);

    return 0;
}
