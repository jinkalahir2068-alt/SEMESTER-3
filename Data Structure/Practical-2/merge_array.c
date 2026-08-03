// WAP to merge two unsorted arrays
#include<stdio.h>
void main(){
	int n1,n2,count=0,i;
	printf("enter size of arr1:");
	scanf("%d",&n1);
	printf("enter size of arr2:");
	scanf("%d",&n2);
	int arr1[n1],arr2[n2],arr3[n1+n2];
	printf("enter values for arr1:");
	for(i=0;i<n1;i++){
		scanf("%d",&arr1[i]);
	}
	printf("enter values for arr2:");
	for(i=0;i<n2;i++){
		scanf("%d",&arr2[i]);
	}
	for(i=0;i<n1;i++){
		arr3[i]=arr1[i];
		count++;
	}
	for(i=0;i<n2;i++){
		arr3[count]=arr2[i];
		count++;
	}
	printf("alter array:\n");
	for(i=0;i<count;i++){
		printf("%d\n",arr3[i]);
	}
	
}
