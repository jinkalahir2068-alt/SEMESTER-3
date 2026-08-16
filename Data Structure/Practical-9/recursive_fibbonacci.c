// Write a recursive function to generate the nth Fibonacci number. 
 
#include <stdio.h>
int fibonacci(int n) {
    if (n == 0) {
        return 0;
    }
    if (n == 1) {
        return 1;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
    int n,i;
    printf("Enter n: ");
    scanf("%d", &n);
    for(i=0;i<n;i++){
        printf("%d, ",fibonacci(i));
    }
}
