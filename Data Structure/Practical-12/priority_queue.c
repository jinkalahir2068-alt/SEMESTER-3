#include<stdio.h>
#define n 5

struct priority_queue
{
    int element;
    int priority;
};

struct priority_queue q[n];
int front=-1;
int rear=-1;

void enqueue(int ele,int prior){
    if(rear==n-1){
        printf("priority queue overflow");
        return;
    }
    rear=rear+1;
    q[rear].element=ele;
    q[rear].priority=prior;

    if(front==-1){
        front=0;
    }
}

void dequeue(){
    if(front==-1){
        printf("priority queue underflow");
        return;
    }
    else{
        if(front==rear){
            printf("deleted element: %d\n",q[front].element);
            printf("priority: %d\n",q[front].priority);
            front=rear=-1;
            return;
        }
        
        //for ascending queue

        /*int min_index=front;
        for(int i=front+1; i<=rear;i++){
            if(q[i].priority < q[min_index].priority){
                min_index = i;
            }
        }
        printf("deleted element: %d\n",q[min_index].element);
        printf("priority: %d\n",q[min_index].priority);
        for(int i=min_index; i<rear ;i++){
            q[i]=q[i+1];
        }
        rear=rear-1;*/

        //for descending queue
        
        int max_index=front;
        for(int i=front+1; i<=rear;i++){
            if(q[i].priority > q[max_index].priority){
                max_index = i;
            }
        }
        printf("deleted element: %d\n",q[max_index].element);
        printf("priority: %d\n",q[max_index].priority);
        for(int i=max_index; i<rear ;i++){
            q[i]=q[i+1];
        }
        rear=rear-1;
        
    }
}

void display(){
    if(front==-1){
        printf("priority queue underflow");
        return;
    }
    for(int i=front;i<=rear;i++){
        printf("{%d %d}\n",q[i].element,q[i].priority);
    }
}

void main(){
    enqueue(10,5);
    enqueue(20,3);
    enqueue(30,10);
    dequeue();
    dequeue();
    display();
}
