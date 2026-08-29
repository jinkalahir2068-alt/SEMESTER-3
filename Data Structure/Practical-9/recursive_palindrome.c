//Write a recursive function to determine whether a given string is a palindrome
#include<stdio.h>
#include<string.h>
int palindrome(char str[], int start , int end)
{
    if(start>=end)
    {
        return 1;
    }
    if(str[start] !=str[end] )
    {
        return 0 ;
    }
    return palindrome(str, start+1, end-1);
}

void main()
{
    char str[] = "radar ";
    int len = strlen(str);
    
    if (palindrome(str, 0, len - 1)) {
        printf("\"%s\" is a palindrome.\n", str);
    } else {
        printf("\"%s\" is not a palindrome.\n", str);
    }
}
