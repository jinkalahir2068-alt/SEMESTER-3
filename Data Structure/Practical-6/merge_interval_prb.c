/*Merge Intervals Problem 
Given a set of time intervals in any order, our task is to merge all overlapping intervals 
into one and output the result which should have only mutually exclusive intervals. 
 
Sample Example-1: 
Input: Intervals = {{1,3},{2,4},{6,8},{9,10}} 
Output: {{1, 4}, {6, 8}, {9, 10}} 
Explanation: Given intervals: [1,3],[2,4],[6,8],[9,10], we have only two overlapping 
intervals here,[1,3] and [2,4]. Therefore we will merge these two and return [1,4],[6,8], 
[9,10] 
 
Sample Example-2: 
Input: Intervals = {{6,8},{1,9},{2,4},{4,7}} 
Output: {{1, 9}}*/
#include <stdio.h>
int top=-1;
struct Interval
{
    int start;
    int end;
};
#define n 100
struct Interval s[n];
void push(struct Interval next)
{
    s[++top] = next;
}
struct Interval pop()
{
    return s[top--];
}
void main()
{
    
    struct Interval arr[] = {{1,3},{2,4},{6,8},{9,10}};
    struct Interval temp;
    for(int i=0;i<3;i++){
        for(int j=i+1;j<3;j++){
            if(arr[i].start > arr[j].start){
               temp=arr[i];
                arr[i]=arr[j];
                arr[j]=temp;
            }
        }
    }
    push(arr[0]);
    for(int i=1;i<4;i++){
        temp=pop();
        if(temp.end>=arr[i].start){
            temp.end=arr[i].end;
            push(temp);
        }
        else{
            push(temp);
            push(arr[i]);
        }
    }
    printf("Output: ");
    while (top != -1)
    {
        temp = pop();
        printf("{%d, %d} ", temp.start, temp.end);
    }
}


