// WAP to find the largest element in the array using Pointer. 
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
    int max=ptr[0];
    for(int i=0;i<n;i++){
        if(max<*(ptr+i)){
            max=*(ptr+i);
        }
        
    }
    printf("max : %d ",max);
}
