#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>

extern ssize_t ft_read(int fd, const void *buf, size_t nbyte); // Declaración de la función


void to_test_read(int fd, char *buf , size_t size)
{
    
    int result = read(fd,buf,size);
    printf("(read)return value->%d\n",result);
    printf("(read)buffer->\n%s\n",buf);
    if (result == -1) {
        printf("Error: %s\n", strerror(errno));  // Imprime el mensaje de error
        printf("errno: %d\n", errno);             // Imprime el valor de errno
    }
    return ;
}

void to_test_ft_read(int fd, char *buf , size_t size)
{
    int result = ft_read(fd,buf,size);
    printf("(ft_read)return value->%d\n",result);
    printf("(ft_read)buffer->\n%s\n",buf);
    if (result == -1) {
        printf("Error: %s\n", strerror(errno));  // Imprime el mensaje de error
        printf("errno: %d\n", errno);             // Imprime el valor de errno
    }
    return ;
}

void test(char * filename, size_t size)
{
    int fd = open(filename, O_RDONLY);
    int fd2 = open(filename, O_RDONLY);
    char buf[size];
    char buf2[size];

    bzero(buf,size);
    printf("Filename : %s\n",filename);
    to_test_read(fd2,buf2,size);
    to_test_ft_read(fd,buf,size);
    printf("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - \n");
    close(fd);
    close(fd2);
}

int main() {
    test("info.txt", 20);
    test("ejamplo.txt",3000);
    // to_test_write(fd,ejemplo,strlen(ejemplo));
    // to_test_ft_write(fd,ejemplo,strlen(ejemplo));
    
    return 0;
}