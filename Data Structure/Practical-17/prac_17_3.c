// WAP to swap two consecutive nodes in the linked list.
// Don't change the values of nodes, implement by changing the link of the nodes.
//
// Input:  1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> 8
// Output: 2 -> 1 -> 4 -> 3 -> 6 -> 5 -> 8 -> 7

#include <stdio.h>
#include <stdlib.h>

struct node
{
    int data;
    struct node *link;
};

// Function to swap consecutive nodes
struct node* swapPairs(struct node *head) {
    // If the list is empty or has only one node, no swapping is needed
    if (head == NULL || head->link == NULL) {
        return head;
    }

    struct node *prev = NULL;
    struct node *curr = head;
    
    // The new head of the list will be the second node
    struct node *newHead = head->link; 

    while (curr != NULL && curr->link != NULL) {
        struct node *nextPair = curr->link->link;
        struct node *second = curr->link;

        // Reverse the links between the pair
        second->link = curr;
        curr->link = nextPair;

        // Connect the previous pair to the current swapped pair
        if (prev != NULL) {
            prev->link = second;
        }

        // Move pointers forward for the next iteration
        prev = curr;
        curr = nextPair;
    }

    return newHead;
}
// Insert node at end
void insertEnd(struct node **head, int data)
{
    struct node *newNode;
    struct node *temp;

    newNode = (struct node*)malloc(sizeof(struct node));

    newNode->data = data;
    newNode->link = NULL;

    if (*head == NULL)
    {
        *head = newNode;
        return;
    }

    temp = *head;

    while (temp->link != NULL)
    {
        temp = temp->link;
    }

    temp->link = newNode;
}

// Print linked list
void printList(struct node *head)
{
    struct node *temp = head;

    while (temp != NULL)
    {
        printf("%d", temp->data);

        if (temp->link != NULL)
        {
            printf(" -> ");
        }

        temp = temp->link;
    }

    printf("\n");
}

int main()
{
    struct node *head = NULL;

    // Create list
    for (int i = 1; i <= 8; i++)
    {
        insertEnd(&head, i);
    }

    printf("Input:  ");
    printList(head);

    // Swap consecutive nodes
    head = swapPairs(head);

    printf("Output: ");
    printList(head);

    return 0;
}
