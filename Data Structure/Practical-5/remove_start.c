/*You are given a string s, which contains stars *. In one operation, you can: 
Choose a star in s. Remove the closest non-star character to its left, as well as 
remove the star itself. Return the string after all stars have been removed. 
Note :  
• The input will be generated such that the operation is always possible. 
• It can be shown that the resulting string will always be unique. 
 
Sample Example-1: 
Input: s = "leet**cod*e".             
Output: "lecoe" 
 
Sample Example-2: 
Input: s = "erase*****"     
Output: ""*/
#include <stdio.h>
#include <string.h>
int n;
char s[1000];
int top = -1;
char push(char c)
{
    s[++top] = c;
}
void pop(){
    return s[top--];
}
void main()
{
    printf("Enter the string: ");
    scanf("%s", s);
    n = strlen(s);
    for (int i = 0; i < n; i++)
    {
        if (s[i] == '*')
        {
            pop();
        }
        else
        {
            push(s[i]);
        }
    }
    s[top + 1] = '\0';
    printf("Output: %s", s);
}
