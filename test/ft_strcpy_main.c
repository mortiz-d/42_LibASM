#include <stdio.h>
#include <string.h>
#include <stdlib.h>
extern char *  ft_strcpy(char * dst, const char * src); // Declaración de la función


void to_test(char * test_str)
{
    char *test_str2 = malloc(sizeof(char) * strlen(test_str));
    char *test_str3 = malloc(sizeof(char) * strlen(test_str));
    
    strcpy(test_str2,test_str);
    ft_strcpy(test_str3,test_str);
    printf("Frase     (%ld) '%s'\nOriginal  (%ld) '%s'\nFT_Version(%ld) '%s'\n",strlen(test_str),test_str,strlen(test_str2), test_str2 , strlen(test_str3),test_str3 );
    return ;
}

int main() {
    to_test("");
    printf("_______________________________________________________________\n");
    to_test("h");
    printf("_______________________________________________________________\n");
    to_test("hola");
    printf("_______________________________________________________________\n");
    to_test("hola mundo");
    printf("_______________________________________________________________\n");
    to_test("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae risus dolor. Etiam venenatis, sapien eu eleifend convallis, massa velit fermentum magna, at tincidunt arcu lorem dapibus metus. Aliquam efficitur dolor at tristique commodo. Quisque ut purus quis erat dapibus ornare in id mauris. Etiam scelerisque mi velit, eu mollis nulla imperdiet sed. Praesent rhoncus urna a rhoncus faucibus. Morbi ac bibendum orci, nec semper turpis. Ut ullamcorper tristique magna at cursus. Suspendisse nec urna tincidunt, rhoncus magna vitae, ultrices lacus. Vestibulum sit amet risus nec sem eleifend sollicitudin non sed risus. Nunc urna lacus, tincidunt sed consectetur non, fermentum quis felis.");
    printf("_______________________________________________________________\n");
    return 0;
}