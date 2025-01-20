#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>

extern char * ft_strdup(const char *s); // Declaración de la función

void test(char * str)
{
    char * ft_dup;
    char * original_dup;

    ft_dup = ft_strdup(str);
    original_dup = strdup(str);
    printf("Frase.     %p - %s\nOriginal.  %p - %s\nFT_version.%p - %s\n",str, str, original_dup, original_dup, ft_dup ,ft_dup);
    if(str !=  NULL)
    {
        free(ft_dup);
        free(original_dup);
    }
}

int main() {
    test("Hola mundo");
    test("");
    test("ESTO  ES UN EJEMPLO DE UNA FRASE LARGA QUE ME DICES?");
    // to_test_ft_write(fd,ejemplo,strlen(ejemplo));
    
    return 0;
}