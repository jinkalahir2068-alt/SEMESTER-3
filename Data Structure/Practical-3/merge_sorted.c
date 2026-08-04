//. WAP to merge two sorted arrays.
#include<stdio.h>

void main()
{
    int arr1[5], arr2[5], arr3[10];

    printf("Enter values for array 1(Ascending Order):\n");
    for(int i = 0; i < 5; i++)
    {
        scanf("%d", &arr1[i]);
    }

    printf("Enter values for array 2(Ascending Order):\n");
    for(int i = 0; i < 5; i++)
    {
        scanf("%d", &arr2[i]);
    }

    for(int i = 0; i < 5; i++)
    {
        arr3[i] = arr1[i];
    }

    for(int i = 0; i < 5; i++)
    {
        arr3[i + 5] = arr2[i];
    }

    printf("Merged array:\n");
    for(int i = 0; i < 10; i++)
    {
        printf("%d ", arr3[i]);
    }
}
