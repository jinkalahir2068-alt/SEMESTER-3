// WAP to perform given operation in the linked list. There exist a Linked List.
// Add a node that contains the GCD of those two nodes between every pair
// adjacent node of Linked List.

#include <stdio.h>
#include <stdlib.h>

struct node
{
    int info;
    struct node *link;
};

struct node *head = NULL;

int FindGCD(int a, int b)
{
    if(b == 0)
        return a;

    return FindGCD(b, a % b);
}

struct node* createNode(int data)
{
    struct node *newNode;

    newNode = (struct node*)malloc(sizeof(struct node));

    newNode->info = data;
    newNode->link = NULL;

    return newNode;
}

void insertGCDNodes()
{
    struct node *current = head;

    while(current != NULL && current->link != NULL)
    {
        int gcd = FindGCD(current->info, current->link->info);

        struct node* gcdNode = createNode(gcd);

        // insert gcd between current and current->link
        gcdNode->link = current->link;
        current->link = gcdNode;

        // move to the original next node
        current = gcdNode->link;
    }
}

void display()
{
    struct node *temp = head;

    while(temp != NULL)
    {
        printf("%d -> ", temp->info);
        temp = temp->link;
    }

    printf("NULL\n");
}

void create()
{
    int n, i, data;
    struct node *newNode;
    struct node *temp;

    printf("Enter number of nodes: ");
    scanf("%d", &n);

    for(i = 0; i < n; i++)
    {
        printf("Enter data: ");
        scanf("%d", &data);

        newNode = createNode(data);

        if(head == NULL)
        {
            head = newNode;
        }
        else
        {
            temp = head;

            while(temp->link != NULL)
            {
                temp = temp->link;
            }

            temp->link = newNode;
        }
    }
}

int main()
{
    create();

    printf("\nOriginal Linked List:\n");
    display();

    insertGCDNodes();

    printf("\nLinked List after inserting GCD nodes:\n");
    display();

    return 0;
}
