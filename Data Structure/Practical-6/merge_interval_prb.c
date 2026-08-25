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
    int num = sizeof(arr) / sizeof(arr[0]);
    int i;
    for (i = 0; i < num; i++)
    {
        if (top == -1 || s[top].end < arr[i].start)
        {
            push(arr[i]);
        }
        else if (s[top].end < arr[i].end)
        {
            s[top].end = arr[i].end;
        }
    }
    printf("Merged Intervals: ");
    while (top != -1)
    {
        struct Interval interval = pop();
        printf("[%d, %d] ", interval.start, interval.end);
    }
}


