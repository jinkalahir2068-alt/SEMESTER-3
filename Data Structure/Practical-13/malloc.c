// WAP to allocate and de-allocate memory for int, char and float variable at runtime.
#include <stdio.h>
#include <stdlib.h>
void main(){
    int *p;
    float *q;
    char *r;
    p=(int*)malloc(sizeof(int));
    q=(float*)malloc(sizeof(float));
    r=(char*)malloc(sizeof(char));
    printf("Enter an integer: ");
    scanf("%d",p);
    printf("Enter a float: ");
    scanf("%f",q);
    printf("Enter a character: ");
    scanf(" %c",r);
    printf("Integer: %d\n", *p);
    printf("Float: %f\n", *q);
    printf("Character: %c\n", *r);
    free(p);
    free(q);
    free(r);
}
