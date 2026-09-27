// WAP to remove duplicate elements from a singly linked list.
#include <stdio.h>
#include <stdlib.h>
struct node
{
    int info;
    struct node *link;
};

struct node *FIRST = NULL;
struct node *duplicate = NULL;

struct node* insend(struct node *head, int x) {
    struct node *new_node = (struct node *)malloc(sizeof(struct node));
    new_node->info = x;
    new_node->link = NULL;
    
    if (head == NULL) {
        return new_node;
    }
    
    struct node *temp = head;
    while (temp->link != NULL) {
        temp = temp->link;
    }
    temp->link = new_node;
    return head;
}
void display(struct node *head) {
    struct node *temp = head;
    while (temp != NULL) {
        printf("%d ", temp->info);
        temp = temp->link;
    }
    printf("\n");
}
void isduplicate()
{
    struct node *ptr1 = FIRST;
    struct node *ptr2;
    struct node *duplicate;

    while (ptr1 != NULL && ptr1->link != NULL) {
        ptr2 = ptr1;

        while (ptr2->link != NULL) {
            if (ptr1->info == ptr2->link->info) {
                duplicate = ptr2->link;
                ptr2->link = ptr2->link->link;
            } 
            else {
                ptr2 = ptr2->link;
            }
        }
        ptr1 = ptr1->link;
    }
}
void main()
{
    int n , value;
    printf("Enter the number of nodes: ");
    scanf("%d", &n);
    printf("Enter the values: ");
    for (int i = 0; i < n; i++) {
        scanf("%d", &value);
        FIRST=insend(FIRST, value);
    }
    printf("Original list: ");
    display(FIRST);
    isduplicate();
    printf("List after removing duplicates: ");
    display(FIRST);
}
