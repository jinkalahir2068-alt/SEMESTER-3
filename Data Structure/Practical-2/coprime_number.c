//// WAP to check whether two numbers are co-prime or not.
#include<stdio.h>
void main(){
	int n1,n2,count=0,i,arr1[50],c1=0,c2=0,arr2[50],j;
	printf("enter number 1:");
	scanf("%d",&n1);
	printf("enter number 2:");
	scanf("%d",&n2);
	
	for(i=2;i<n1;i++){
		if(n1%i==0){
			arr1[c1]=i;
			c1++;
		}
	}
	for(i=2;i<n2;i++){
		if(n2%i==0){
			arr2[c2]=i;
			c2++;
		}
	}
	for(i=0;i<c1;i++){
		for(j=0;j<c2;j++){
			if(arr1[i]==arr2[j]){
				count=1; 
				break;
			}
		}
	}
	if(count==1){
		printf("not no prime");
	}
	else{
		printf("co prime");
	}
}
