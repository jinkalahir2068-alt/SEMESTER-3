// Write a recursive function to calculate the sum of all elements in an array
#include<stdio.h>
int sumofelements(int arr[] , int n)
{
    if(n<=0)
    {
        return 0;
    }
    return arr[n-1]+ sumofelements(arr, n-1);

}
int main()
{
    int n;
    printf ("enter size of array:");
    scanf("%d", &n);
    int arr[n];
    printf("enter elements:");
    for(int i = 0;i<n;i++)
    {
        scanf("%d",&arr[i]);
    }
    int total = sumofelements(arr,n);
    printf("sum is %d",total);
}
