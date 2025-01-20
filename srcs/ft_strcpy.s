section .text
global ft_strcpy  ; Punto de entrada

;char *  ft_strcpy(char * dst, const char * src);
;(registros en uso)
;rax ;registro de retorno
;rdi ;frase dst (el 1º)
;rsi ;frase src (el 2º)

ft_strcpy:
    push r15                                ;reservamos el registro r15
    mov rax, 0                              ;ponemos rax (que es el valor que devolvemos a 0)
    jmp .loop                               ;saltamos al loop de la funcion

.loop:
    cmp byte[rsi + rax],0                   ; comparamos la frase de src si estamos al final
    je .end                                 ; saltamos al final
    mov r15b, byte[rsi + rax]               ; extraemos el valor de la frase y lo ponemos en a variable r15b(usado como aux)
    mov byte[rdi + rax], r15b               ; movemos el valor del segundo argumento al primero
    inc rax                                 ; pasamos a la siguiente posicion del string
    jmp .loop

.end:
    mov byte [rdi + rax], 0                 ; ponemos el \0 al final del string
    mov rax, rdi                            ; ponemos el registro rdi en rax para devolver
    pop r15
    ret                                     ; din del programa

