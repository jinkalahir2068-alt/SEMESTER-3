//WAP to check whether 2 singly linked lists are same or not
#include <stdio.h>
#include <stdlib.h>

struct node
{
    int info;
    struct node *link;
};
struct node *FIRST = NULL;
struct node *head1 = NULL;
struct node *head2 = NULL;

int isSame(struct node *head1, struct node *head2) {
    while (head1 != NULL && head2 != NULL) {
        if (head1->info != head2->info) {
            return 0;
        }
        head1 = head1->link;
        head2 = head2->link;
    }
    if(head1 == NULL && head2 == NULL) {
        return 1;
    }
    return 0;
}
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
void main()
{
    int n1, n2;
    int value;
    printf("enter the number of nodes in first linked list: ");
    scanf("%d", &n1);
    printf("enter the number of nodes in second linked list: ");
    scanf("%d", &n2);
    printf("Enter value for first linked list: ");
    for (int i = 0; i < n1; i++) {
        scanf("%d", &value);
        head1 = insend(head1, value);
    }
    printf("Enter value for second linked list: ");
    for (int i = 0; i < n2; i++) {
        scanf("%d", &value);
        head2 = insend(head2, value);
    }
    printf("List is :");
    display(head1);
    printf("List is :");
    display(head2);
    if(isSame(head1, head2)) {
        printf("The lists are the same.\n");
    } else {
        printf("The lists are not the same.\n");
    }
}
