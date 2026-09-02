#include<stdio.h>
#define n 5
int q[n];
int front=-1;
int rear=-1;

void insert_rear(int value)
{
    if(rear==n-1){
        printf("queue overflow");
    }
    rear=rear+1;
    q[rear]=value;
    if(front==-1){
        front=0;
    }
}

int delete_front(){
    if(front==-1){
        printf("queue underflow");
        return;
    }
    int value=q[front];
    if(front==rear){
        front=rear=-1;
    }
    else{
        front=front+1;
    }
    return value;
}

void insert_front(int value){
    if(front==0){
        printf("queue overflow");
        return;
    }
    if(front==-1){
        front=rear=0;
    }
    else{
        front=front-1;
    }
    q[front]=value;
}

int delete_rear(){
    if(rear==-1){
        printf("queue underflow");
    }
    int value=q[rear];
    if(front==rear){
        front=rear=-1;
    }
    else{
        rear=rear-1;
    }
    return value;
}

void display(){
    if(front==-1){
        printf("queue underflow");
    }
    for(int i=front;i<=rear;i++){
        printf("%d ",q[i]);
    }
}

void main(){
    insert_front(10);
    printf("\nfront:%d and rear:%d\n",front,rear);
    insert_front(20);
    printf("\nfront:%d and rear:%d\n",front,rear);
    insert_rear(20);
    printf("\nfront:%d and rear:%d\n",front,rear);
    delete_rear();
    printf("\nfront:%d and rear:%d\n",front,rear);
    display();
}
