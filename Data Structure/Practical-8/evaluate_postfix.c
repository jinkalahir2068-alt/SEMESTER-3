//WAP for evaluation of postfix Expression using Stack.

#include<stdio.h>
#include<ctype.h>
#define n 50
int top=-1;
int s[n];

void push(int x){
    s[++top]=x;
}

int pop(){
    return s[top--];
}

int PERFORM_OPERATION(int opr1, int opr2, char temp)
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
    char postfix[100];
     printf("enter postfix expression:");
     scanf("%s",postfix);

     while(postfix[i] !='\0'){
        temp=postfix[i];
        if(isdigit(temp)){
            push(temp-'0');
        }
        else{
            opr2=pop();
            opr1=pop();
            value=PERFORM_OPERATION(opr1,opr2,temp);
            push(value);
        }
        i++;
     }

     int answer=pop();
     printf("answer : %d",answer);

}
