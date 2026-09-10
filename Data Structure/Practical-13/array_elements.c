//WAP to get and print the array elements using Pointer. 
#include <stdio.h>
void main(){
    int n;
    printf("Enter the number of elements: ");
    scanf("%d",&n);
    int arr[n];
    int *ptr=arr;
    printf("Enter the elements: ");
    for(int i=0;i<n;i++){
        scanf("%d",ptr+i);
    }
    printf("The elements are: ");
    for(int i=0;i<n;i++){
        printf("%d ",*(ptr+i));
    }
}
