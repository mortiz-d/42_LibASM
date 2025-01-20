section .text
global ft_write  ; Punto de entrada
extern __errno_location

;ssize_t ft_write(int fd, const void *buf, size_t nbyte);
;(registros en uso)
;rax ;registro de retorno
;rdi ;fd (el 1º)
;rsi ;frase buff (el 2º)
;rdx ;tamaño de escritura (el 3º)

ft_write:            
    mov rax, 1              ;ponemos rax (que es el valor que devolvemos a 0)
    syscall
    cmp rax, -1
    jle .error

.no_error:
    ret
.error:
    neg rax
    mov rdi, rax
    call __errno_location wrt ..plt
    mov [rax], rdi  ;value of errno
    mov rax, -1              
    ret
