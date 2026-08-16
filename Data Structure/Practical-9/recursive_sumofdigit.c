//Write a recursive function to find the sum of digits of a given number.
#include<stdio.h>
int sumOfDigits(int num){
    if(num==0){
        return 0;
    }
    return (num%10) + sumOfDigits(num/10);
}
void main(){
    int num,sum=0;
    printf("enter num:");
    scanf("%d",&num);
    sum=sumOfDigits(num);
    printf("sum: %d",sum);
}
