//WAP to delete a number from a given location in an array.
#include<stdio.h>
void main()
{
    
    int arr[10];
    int n ;
    int pos;
    int temp;
    printf("enter n :");
    scanf("%d",&n);
    printf("enter values");
    for(int i = 0; i< n; i++)
    {   
        scanf("%d",&arr[i]);
    }
    printf("enter position:");
    scanf("%d",&pos);
    if(pos>n)
    {
        printf("deletion is not possible");
    }
    for(int j = n; j>=pos;j--)
    {
     arr[j]=arr[j-1];  
        
    }
    for(int i = 0; i<=n-1; i++)
    {   
        printf("%d",arr[i]);
        printf("\n");
    }



}
