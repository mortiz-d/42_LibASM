section .text
global ft_read  ; Punto de entrada
extern __errno_location

;ssize_t ft_write(int fd, const void *buf, size_t nbyte);
;(registros en uso)
;rax ;registro de retorno
;rdi ;fd (el 1º)
;rsi ;frase buff (el 2º)
;rdx ;tamaño de escritura (el 3º)

ft_read:            
    mov rax, 0                          ;ponemos rax (que es el valor que devolvemos a 0)
    syscall                             ;llamamos a la syscall
    cmp rax, -1                         ;hacemos una comparacion en caso de error
    jle .error

.no_error:
    ret                                 ;si no hay error devolvemos el retorno
.error:
    neg rax
    mov rdi, rax
    call __errno_location wrt ..plt
    mov [rax], rdi 
    mov rax, -1              
    ret
