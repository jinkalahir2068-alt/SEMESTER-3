//stack implementation using array.
#include<stdio.h>
#define n 5

int TOP=-1;
int S[n];

void push(int x)
{
    if(TOP>=n-1){
        printf("stack overflow");
        return;
    }
    S[++TOP]=x;
}

int pop()
{
    if(TOP == -1){
        printf("stack underflow");
        return;
    }
    return S[TOP--];
}

int peek(){
    if(TOP==-1){
        printf("stack underflow");
        return;
    }
    return S[TOP];
}

int peep(int i){
    if((TOP-i+1) == -1){
        printf("element not availiable");
        return;
    }
    return S[(TOP-i+1)];
}

void change(int x,int i){
    if((TOP-i+1)==-1){
        printf("element not availiable");
        return;
    }
    S[(TOP-i+1)]=x;
}
void display(){
    if(TOP ==-1)
    {
        printf("Stack Underflow.");
        return;
    }
        for(int i=TOP; i>=0; i--){
        printf("%d\t", S[i]);
    }
}
void main(){
    push(30);
    push(40);
    push(50);
    push(60);
    push(70);
    printf("Top element (peek): %d\n", peek()); 
    printf("2nd element from top (peep): %d\n", peep(2)); 
    change(100, 3);
    display();
}
