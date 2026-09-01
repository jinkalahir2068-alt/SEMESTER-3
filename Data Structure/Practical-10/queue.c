#include<stdio.h>
#define n 3
int q[n];
int front=-1;
int rear=-1;

void enqueue(int value){
    if(rear==n-1){
        printf("queue overflow");
        return;
    }
    rear=rear+1;
    q[rear]=value;
    if(front==-1)
        front=0;
}

int dequeue(){
    if(front==-1){
        printf("queue underflow");
        return -1;
    }
    int value= q[front];
    if(front==rear){
        front=rear=-1;  
    }
    else{
        front++;
    }
    return value;
}

void display(){
    if(front==-1){
        printf("queue underflow");
        return;
    }
    for(int i=front;i<=rear;i++){
        printf("%d ",q[i]);
    }
}

void main(){
    enqueue(10);
    //printf("\nfront:%d and rear:%d\n",front,rear);
    enqueue(20);
    //printf("\nfront:%d and rear:%d\n",front,rear);
    enqueue(30);
    //printf("\nfront:%d and rear:%d\n",front,rear);
    enqueue(40);
    display();
    //printf("\n");
    //printf("\nfront:%d and rear:%d\n",front,rear);
    dequeue();
    //printf("\nfront:%d and rear:%d\n",front,rear);
    dequeue();
    //printf("\nfront:%d and rear:%d\n",front,rear);
    display();

}
