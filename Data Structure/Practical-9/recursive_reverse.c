// Write a recursive function to reverse a given number. 
#include<stdio.h>
int revnum=0;
int reverse(int num){
    if(num==0){
        return 0;
    }
    else{
        revnum=revnum*10+num%10;
        reverse(num/10);
    }
    return revnum;
}
void main(){
    int num;
    printf("enter num:");
    scanf("%d",&num);
    revnum=reverse(num);
    printf("reversed number is:%d",revnum);
}
