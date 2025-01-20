#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>

extern int ft_write(int fd, const void *buf, size_t nbyte); // Declaración de la función


void to_test_write(int fd, const void *buf , size_t size)
{
    
    int result = write(fd,buf,size);
    printf("(write)return value->%d\n",result);
    if (result == -1) {
        printf("Error: %s\n", strerror(errno));  // Imprime el mensaje de error
        printf("errno: %d\n", errno);             // Imprime el valor de errno
    }
    return ;
}

void to_test_ft_write(int fd, const void *buf , size_t size)
{
    int result = ft_write(fd,buf,size);
    printf("(ft_write)return value->%d\n",result);
    if (result == -1) {
        printf("Error: %s\n", strerror(errno));  // Imprime el mensaje de error
        printf("errno: %d\n", errno);             // Imprime el valor de errno
    }
    return ;
}

void test(char * filename, char * str)
{
    int fd = open(filename, O_WRONLY);
    
    printf("Filename : %s\n",filename);
    to_test_ft_write(fd,str,strlen(str));
    to_test_write(fd,str,strlen(str));
    printf("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - \n");
    close(fd);
}

int main() {
    test("test/write_example.txt","Hola que tal esto es un ejemplo\n");
    test("ejamplo.txt","Hola que tal esto es un ejemplo\n");
    // to_test_write(fd,ejemplo,strlen(ejemplo));
    // to_test_ft_write(fd,ejemplo,strlen(ejemplo));
    
    return 0;
}