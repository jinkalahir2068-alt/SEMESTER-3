#include<stdio.h>
#include<stdlib.h>

struct node
{
    int info;
    struct node *link;
};

struct node *FIRST = NULL;
struct node *FIRST1 = NULL;

void insert_front(int x)
{
    struct node *new;
    new=(struct node *)malloc(sizeof(struct node));

    new->info=x;
    new->link=FIRST;
    FIRST=new;
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

void insord(int x)
{
    struct node *new;
    new=(struct node *)malloc(sizeof(struct node));

    new->info=x;

    if(FIRST==NULL)
    {
        new->link=NULL;
        FIRST=new;
    }
    else if(new->info <= FIRST->info)
    {
        new->link=FIRST;
        FIRST=new;
    }
    else
    {
        struct node *save;
        save=FIRST;

        while(save->link!=NULL && new->info > save->link->info)
        {
            save=save->link;
        }

        new->link=save->link;
        save->link=new;
    }
}

void display()
{
    if(FIRST==NULL)
    {
        printf("List is empty\n");
        return;
    }

    struct node *save;
    save=FIRST;

    while(save!=NULL)
    {
        printf("%d ",save->info);
        save=save->link;
    }

    printf("\n");
}

void delete_node(int x)
{
    struct node *save;
    struct node *pred;

    if(FIRST==NULL)
    {
        printf("List is empty\n");
        return;
    }

    save=FIRST;

    while(save!=NULL && save->info!=x)
    {
        pred=save;
        save=save->link;
    }

    if(save==NULL)
    {
        printf("Element not found\n");
        return;
    }

    if(save==FIRST)
    {
        FIRST=FIRST->link;
        free(save);
        return;
    }
    else
    {
        pred->link=save->link;
    }

    free(save);
}

// void count()
// {
//     struct node *save;
//     int count=0;

//     save=FIRST;

//     while(save!=NULL)
//     {
//         count++;
//         save=save->link;
//     }

//     printf("Number of nodes in the list: %d\n",count);
// }

struct node *copy()
{
    struct node *save;
    struct node *new;
    struct node *save1=NULL;

    if(FIRST==NULL)
    {
        printf("List is empty\n");
        return NULL;
    }

   
    while(FIRST1!=NULL)
    {
        save=FIRST1;
        FIRST1=FIRST1->link;
        free(save);
    }

    save=FIRST;

    while(save!=NULL)
    {
        new=(struct node *)malloc(sizeof(struct node));

        new->info=save->info;
        new->link=NULL;

        if(FIRST1==NULL)
        {
            FIRST1=new;
        }
        else
        {
            save1->link=new;
        }

        save1=new;
        save=save->link;
    }

    printf("List copied successfully\n");
    printf("Original list:");
    save=FIRST;
    while(save!=NULL)
    {
        printf("%d ",save->info);
        save=save->link;
    }

    save=FIRST1;

    printf("Copied list: ");

    while(save!=NULL)
    {
        printf("%d ",save->info);
        save=save->link;
    }

    printf("\n");
}

void main()
{
    int choice,x;

    while(1)
    {
        printf("\n1. Insert at front\n");
        printf("2. Insert at end\n");
        printf("3. Insert in order\n");
        printf("4. Display\n");
        printf("5. Delete a node\n");
        printf("6. Count nodes\n");
        printf("7. Copy linked list\n");
        printf("8. Exit\n");

        printf("Enter your choice: ");
        scanf("%d",&choice);

        switch(choice)
        {
            case 1:
                printf("Enter value to insert at front: ");
                scanf("%d",&x);
                insert_front(x);
                break;

            case 2:
                printf("Enter value to insert at end: ");
                scanf("%d",&x);
                insend(x);
                break;

            case 3:
                printf("Enter value to insert in order: ");
                scanf("%d",&x);
                insord(x);
                break;

            case 4:
                display();
                break;

            case 5:
                printf("Enter value to delete: ");
                scanf("%d",&x);
                delete_node(x);
                break;

            case 6:
                count();
                break;

            case 7:
                copy();
                break;

            case 8:
                exit(0);

            default:
                printf("Invalid choice\n");
        }
    }
}
