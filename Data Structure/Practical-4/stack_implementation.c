//Stack implementation using Array
#include <stdio.h>
#define N 5
int TOP = -1;
int S[N];

void push (int x)
{
    if(TOP>=N-1)
    {
        printf("Stack Overflow\n");
    }
    else
    {
        TOP++;
        S[TOP] = x;
        printf("%d pushed to stack\n", x);
    }
}
void pop()
{
    if(TOP<=-1)
    {
        printf("Stack Underflow\n");
    }
    TOP--;
    printf("%d popped from stack\n", S[TOP+1]);
}
int peep(int position)
{
    if(TOP-position+1<=-1)
    {
        printf("Stack is empty\n");
        return -1;
    }
    else
    {
       printf("Element at position %d is %d\n", position, S[TOP-position+1]);
        return S[TOP-position+1];
    }
}
void change(int position, int x)
{
    if(TOP-position+1<=-1)
    {
        printf("Stack is empty\n");
    }
    else
    {
        S[TOP-position+1] = x;
        printf("Element at position %d changed to %d\n", position, x);
    }
}
void display()
{
    if(TOP>=0)
    {
        printf("Stack elements are:\n");
        for(int i=TOP; i>=0; i--)
        {
            printf("%d\n", S[i]);
        }
    }
    else
    {
        printf("Stack is empty\n");
    }
}
void main()
{
    int choice, x;
    while(1)
    {
        printf("1. Push\n2. Pop\n3. Display\n4. Peep\n5. Change\n6. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);
        switch(choice)
        {
            case 1:
                printf("Enter the element to push: ");
                scanf("%d", &x);
                push(x);
                break;
            case 2:
                pop();
                break;
            case 3:
                display();
                break;
            case 4:
                printf("Enter the position to peep: ");
                scanf("%d", &x);
                peep(x);
                break;
            case 5:
                printf("Enter the position to change: ");
                scanf("%d", &x);
                printf("Enter the new value: ");
                int newValue;
                scanf("%d", &newValue);
                change(x, newValue);
                break;
            case 6:
                return;
            default:
                printf("Invalid choice\n");
        }
    }
}
