#include<stdio.h>
#define n 3
int cq[n];
int front=-1;
int rear=-1;

void enqueue(int value){
    if((rear+1)%n == front){
        printf("circular queue overflow");
        return;
    }
    rear = (rear+1)%n;
    cq[rear] = value;
    printf("inserted element: %d\n",cq[rear]);
    if(front==-1){
        front=0;
    }
}

int dequeue(){
    if(front==-1){
        printf("circular queue underflow");
        return -1;
    }
    int value = cq[front];
    if(front==rear){
        front=rear=-1;
    }
    else{
        front=((front+1)%n);
    }
    return value;
}

void display(){
    if(front==-1){
        printf("circular queue underflow");
        return;
    }
    for(int i=front;i!=rear;i=((i+1)%n)){
        printf("%d ",cq[i]);
    }
}

void main(){
    enqueue(10);
    printf("\nfront:%d and rear:%d\n",front,rear);
    enqueue(20);
    printf("\nfront:%d and rear:%d\n",front,rear);
    enqueue(30);
    printf("\nfront:%d and rear:%d\n",front,rear);
    enqueue(40);
    printf("\nfront:%d and rear:%d\n",front,rear);
    printf("deleted ele %d\n",dequeue());
    printf("\nfront:%d and rear:%d\n",front,rear);
    printf("deleted ele %d\n",dequeue());
    printf("\nfront:%d and rear:%d\n",front,rear);
    enqueue(50);
    printf("\nfront:%d and rear:%d\n",front,rear);
    enqueue(60);
    printf("\nfront:%d and rear:%d\n",front,rear);
    enqueue(70);
    printf("\nfront:%d and rear:%d\n",front,rear);
    display();


}
