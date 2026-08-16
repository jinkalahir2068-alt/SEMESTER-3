//WAP for evaluation of prefix Expression using Stack.

#include<stdio.h>
#include<ctype.h>
#include<string.h>
#define n 50
int top=-1;
int s[n];

void push(int x){
    s[++top]=x;
}

int pop(){
    return s[top--];
}

int perform_operation(int opr1, int opr2, char temp)
{
    switch (temp)
    {
    case '+':
        return opr1 + opr2;
    case '-':
        return opr1 - opr2;
    case '*':
        return opr1 * opr2;
    case '/':
        return opr1 / opr2;
    default:
        printf("Invalid operator");
        return 0;
    }
    
}
void main(){
    int value=0,opr1,opr2,temp,i=0;
    char prefix[100];
     printf("enter prefix expression:");
     scanf("%s",prefix);
     i=strlen(prefix);
     while(i-1 >= -1){
        temp=prefix[i];
        if(isdigit(temp)){
            push(temp-'0');
        }
        else{
            opr1=pop();
            opr2=pop();
            value=perform_operation(opr1,opr2,temp);
            push(value);
        }
        i--;
     }

    int answer=pop();
    printf("answer : %d",answer);

}
