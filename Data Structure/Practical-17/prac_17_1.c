#include <stdio.h>
#include <stdlib.h>

struct node {
    int data;
    struct node *link;
};

struct node *head = NULL;
struct node *FIRST = NULL;

int countIndex();

void create()
{
    struct node *newnode, *temp;
    int n, i;

    printf("Enter number of nodes: ");
    scanf("%d", &n);

    for(i = 0; i < n; i++)
    {
        newnode = (struct node *)malloc(sizeof(struct node));

        printf("Enter data: ");
        scanf("%d", &newnode->data);

        newnode->link = NULL;

        if(head == NULL)
        {
            head = newnode;
        }
        else
        {
            temp = head;

            while(temp->link != NULL)
            {
                temp = temp->link;
            }

            temp->link = newnode;
        }
    }
}

void display()
{
    struct node *temp = head;

    while(temp != NULL)
    {
        printf("%d -> ", temp->data);
        temp = temp->link;
    }

    printf("NULL\n");
}

void swapkth(int K) 
{
    int n = countIndex();

    if(K > n || K <= 0)
    {
        printf("K is greater than the number of nodes in the list\n");
        return;
    }

    if(2 * K - 1 == n)
    {
        printf("Swapping the same node, no changes made\n");
        return;
    }

    struct node *x_prev = NULL;
    struct node *x = head;

    for(int i = 1; i < K; i++)
    {
        x_prev = x;
        x = x->link;
    }

    //find the nth node from end and its previous node
    struct node *y_prev = NULL;
    struct node *y = head;

    for(int i = 1; i < n - K + 1; i++)
    {
        y_prev = y;
        y = y->link;
    }

    //connect x to y
    if(x_prev != NULL)
        x_prev->link = y;
    else
        head = y;

    if(y_prev != NULL)
        y_prev->link = x;
    else
        head = x;

    struct node *temp = x->link;
    x->link = y->link;
    y->link = temp;
}

int countIndex()
{
    int count = 0;
    struct node *temp = head;

    while(temp != NULL)
    {
        count++;
        temp = temp->link;
    }

    return count;
}

int main()
{
    int K;

    create();

    printf("\nOriginal linked list:\n");
    display();

    printf("\nEnter K: ");
    scanf("%d", &K);

    swapkth(K);

    printf("\nLinked list after swapping:\n");
    display();

    return 0;
}
