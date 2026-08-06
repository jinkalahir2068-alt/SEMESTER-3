/*Anagram Game
• Allow a user to enter N words and store it in an array. 
• Generate a random number between 0 to N-1. 
• Based on the random number generated display the word stored at that index 
of an array and allow user to enter its anagram. 
• Check whether the word entered by the user is an anagram of displayed 
number or not and display an appropriate message. 
• Given a word A and word B. B is said to be an anagram of A if and only if the 
characters present in B is same as characters present in A, irrespective of their 
sequence. For ex: “LISTEN” == “SILENT”*/

#include <stdio.h>
#include <string.h>

void main() {
    char word1[50], word2[50];
    char temp;
    int len1, len2, i, j;
    printf("Enter first word: ");
    scanf("%s", word1);

    printf("Enter second word: ");
    scanf("%s", word2);

    len1 = strlen(word1);
    len2 = strlen(word2);
    if (len1 != len2) {
        printf("\nNot an anagram! (Different lengths)\n");
        return 0; 
    }
    for (i = 0; i < len1 - 1; i++) {
        for (j = 0; j < len1 - 1 - i; j++) {
            if (word1[j] > word1[j + 1]) {
                temp = word1[j];
                word1[j] = word1[j + 1];
                word1[j + 1] = temp;
            }
        }
    }
    for (i = 0; i < len2 - 1; i++) {
        for (j = 0; j < len2 - 1 - i; j++) {
            if (word2[j] > word2[j + 1]) {
                temp = word2[j];
                word2[j] = word2[j + 1];
                word2[j + 1] = temp;
            }
        }
    }
    if (strcmp(word1, word2) == 0) {
        printf("\nIt is an anagram!\n");
    } else {
        printf("\nNot an anagram! (Same length but different letters)\n");
    }

    return 0;
}
