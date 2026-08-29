// Write a recursive function to find the largest element in a given array.
#include<stdio.h>
int max(int arr[] , int n)
{
    if(n==1)
     return  arr[0];
    
    
    int maxNo= max(arr,n-1);
    if(arr[n-1]>maxNo)
    {
        return arr[n-1];
    }
    else
    {
        return maxNo;
    }

}
int main()
{
    int arr[5] = {12,14,15,6,7};
    int n= 5; 
    int largest = max(arr,n);
    printf("The largest element in the array is: %d\n", largest);
}
