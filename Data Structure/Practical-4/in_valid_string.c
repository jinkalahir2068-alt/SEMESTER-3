//How stack can be used to recognize strings aca, bcb, abcba, abbcbba? WAP to solve the above problem.
#include<stdio.h>
#include<string.h>
#define n 50
char s[n];
int top=-1;

void push(char x){
    s[++top]=x;
}
char pop(){
    return s[top--];
}

void main(){
    char str[500];
    int i;
    printf("enter string::");
    scanf("%s",str);
    push('c');
    for(i=0;str[i]!='c';i++){
        push(str[i]);
    }
    i++;
    while(s[top]!='c'){
        char ch=pop();
        if(str[i]!=ch){
            printf("invalid");
            break;
        }
        i++;
    }
    if(str[i]!='\0'){
        printf("invalid");
    }
    else{
        printf("valid");
    }
    
}
