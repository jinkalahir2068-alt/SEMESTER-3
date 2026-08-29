/*Valid Parenthesis Problem 
Chef has a string which contains only the characters '{', '}', '[', ']', '(' and ')'.  
Now Chef wants to know if the given string is balanced or not.  
If is balanced then print 1, otherwise print 0.  
A balanced parenthesis string is defined as follows: 
- The empty string is balanced 
- If P is balanced then (P), {P}, [P] is also balanced 
- if P and Q are balanced PQ is also balanced 
- "([])", "({})[()]" are balanced parenthesis strings  
- "([{]})", "())" are not balanced. 
Input Format:  
The first line of the input contains a single integer T denoting the number of test 
cases. The description of T test cases follows. The first and only line of each test 
case contains a single string 
Output Format:  
For each test case, print a single line containing the answer. */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
void main()
{
    int t;
    scanf("%d", &t);
    while (t--)
    {
        char s[100000];
        scanf("%s", s);
        int len = strlen(s);
        char stack[100000];
        int top = -1;
        int flag = 1;
        for (int i = 0; i < len; i++)
        {
            if (s[i] == '(' || s[i] == '{' || s[i] == '[')
            {
                stack[++top] = s[i];
            }
            else
            {
                if (top == -1)
                {
                    flag = 0;
                    break;
                }
                char c = stack[top--];
                if ((s[i] == ')' && c != '(') || (s[i] == '}' && c != '{') || (s[i] == ']' && c != '['))
                {
                    flag = 0;
                    break;
                }
            }
        }
        if (flag && top == -1)
        {
            printf("1\n");
        }
        else
        {
            printf("0\n");
        }
    }
}
