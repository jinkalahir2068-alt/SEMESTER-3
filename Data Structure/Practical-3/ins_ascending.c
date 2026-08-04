//WAP to insert a number in an array that is already sorted in an ascending order.
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
    printf("enter values of array in ascending order:");

    for(int i = 0; i< n; i++)
    {   
        scanf("%d",&arr[i]);
    }
    printf("enter value to insert:");
    scanf("%d",&val);
    for(int i = 0; i< n; i++)
    {
        if(arr[i]>val)
        {
            pos=i;
            break;
        }
    }
    for(int j = n; j>=pos;j--)
    {
     arr[j]=arr[j-1];  
        
    }
    arr[pos]=val;
    for(int i = 0; i<=n; i++)
    {   
        printf("%d",arr[i]);
        printf("\n");
    }

}
