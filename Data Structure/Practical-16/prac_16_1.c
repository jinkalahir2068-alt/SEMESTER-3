// WAP to remove the duplicates nodes from given sorted Linked List.
// Input: 1 → 1 → 6 → 13 → 13 → 13 → 27 → 27
// Output: 1 → 6 → 13 → 27
#include<stdio.h>
#include<stdlib.h>

struct node
{
    int info;
    struct node *link;
};
struct node *FIRST = NULL;

void remove_duplicates(struct node *head)
{
   struct node *temp=head;


    while (temp !=  NULL   && temp->link != NULL)
    {
        if (temp->info == temp->link->info)
        {
        temp->link = temp->link->link;
        }
        else
        {
            temp = temp->link;
        }
    }
}
void display(struct node *head)
{
    struct node *temp=head;
    while(temp!=NULL)
    {
        printf("%d ",temp->info);
        temp=temp->link;
    }
    printf("\n");
}
void insend(int x)
{
    struct node *new;
    new=(struct node *)malloc(sizeof(struct node));

    new->info=x;
    new->link=NULL;

    if(FIRST==NULL)
    {
        FIRST=new;
        return;
    }

    struct node *save;
    save=FIRST;

    while(save->link!=NULL)
    {
        save=save->link;
    }

    save->link=new;
}
void main()
{
    int n1;
    int v;

    printf("Enter size of linked list ");
    scanf("%d",&n1);
    printf("Enter elements:");
    for(int i=0;i<n1;i++)
    {
        scanf("%d",&v);
        insend(v);
    }
    printf("List is :");
    display(FIRST);
    remove_duplicates(FIRST);
    printf("List after removing duplicates is :");
    display(FIRST);
}
