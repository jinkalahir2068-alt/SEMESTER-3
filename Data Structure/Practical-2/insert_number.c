//. WAP to insert a number at a given location in an array. 
#include<stdio.h>
void main()
{
    
    int arr[10];
    int n ;
    int val;
    int pos;
    int temp;
    printf("enter n :");
    scanf("%d",&n);
    printf("enter value to insert");

    for(int i = 0; i< n; i++)
    {   
        scanf("%d",&arr[i]);
    }
    printf("enter value to enter");
    scanf("%d",&val);
    printf("enter position:");
    scanf("%d",&pos);
    if(pos>n)
    {
        printf("insertion is not possible");
    }
    for(int j = n; j>=pos;j--)
    {
     arr[j]=arr[j-1];  
        
    }
    arr[pos-1]=val;
    for(int i = 0; i<=n; i++)
    {   
        printf("%d",arr[i]);
        printf("\n");
    }



}
