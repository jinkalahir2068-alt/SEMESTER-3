//WAP to delete a number from an array that is already sorted in an ascendingorder.
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
    printf("enter value to Delete:");
    scanf("%d",&val);
    for(int i = 0; i< n; i++)
    {
        if(arr[i]==val)
        {
            pos=i;
            break;
        }
    }
    for(int j = pos; j<n-1;j++)
    {
     arr[j]=arr[j+1];  
    }
    arr[n-1]=val;
    for(int i = 0; i<n-1; i++)
    {   
        printf("%d",arr[i]);
        printf("\n");
    }
}
