
// 53. WAP to copy a linked list. Take 2 linked lists

#include<stdio.h>
#include<stdlib.h>

struct node
{
    int info;
    struct node *link;
};

struct node *FIRST = NULL;
struct node *FIRST1 = NULL;

void create()
{
    struct node *newnode, *save;
    int choice;

    do
    {
        newnode = (struct node *)malloc(sizeof(struct node));

        printf("Enter element: ");
        scanf("%d", &newnode->info);

        newnode->link = NULL;

        if(FIRST == NULL)
        {
            FIRST = newnode;
            save = newnode;
        }
        else
        {
            save->link = newnode;
            save = newnode;
        }

        printf("Do you want to add another node? (1/0): ");
        scanf("%d", &choice);

    } while(choice == 1);
}

struct node *copy(struct node *first)
{
    struct node *save, *save1, *newnode;

    if(first == NULL)
    {
        printf("List is empty\n");
        return NULL;
    }

    newnode = (struct node *)malloc(sizeof(struct node));

    newnode->info = first->info;
    newnode->link = NULL;

    FIRST1 = newnode;

    save = first;

    while(save->link != NULL)
    {
        save1 = newnode;
        save = save->link;

        newnode = (struct node *)malloc(sizeof(struct node));

        newnode->info = save->info;
        newnode->link = NULL;

        save1->link = newnode;
    }

    printf("List copied successfully\n");
    return FIRST1;
}

void display(struct node *first)
{
    struct node *save;

    save = first;

    while(save != NULL)
    {
        printf("%d ", save->info);
        save = save->link;
    }

    printf("\n");
}

int main()
{
    create();

    printf("\nFirst linked list:\n");
    display(FIRST);

    FIRST1 = copy(FIRST);

    printf("\nSecond linked list:\n");
    display(FIRST1);
}
