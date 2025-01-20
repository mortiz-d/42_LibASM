#include <stdio.h>
#include <string.h>
#include <stdlib.h>

extern int ft_strcmp(const char *s1, const char *s2); // Declaración de la función


void to_test(char * str, char * str2 )
{
    
    int ft_result = ft_strcmp(str,str2);
    int result = strcmp(str,str2);
    printf("Comparando '%s'/'%s'\n",str,str2);
    printf("Original   %d\nFT_version %d\n", result,ft_result);
    printf("_______________________________________________________________\n");
    return ;
}

int main() {
    to_test("", "");
    
    to_test("h", "h");
    to_test("hola","hola");
    to_test("hola","holB");
    to_test("hol","hola");
    to_test("holb","hola");
    to_test("hola","holb");
    return 0;
}