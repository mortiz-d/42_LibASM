section .text
global ft_strcmp  ; Punto de entrada

;int strcmp(const char *s1, const char *s2);
;(registros en uso)
;rax ;registro de retorno
;rdi ;frase s1 (el 1º)
;rsi ;frase s2 (el 2º)

ft_strcmp:
    mov rax, 0              ;ponemos rax (que es el valor que devolvemos a 0)
    jmp .loop               ;saltamos al loop de la funcion

.loop:
    cmp byte[rdi + rax],0       ;comparamos si la frase s1 llega al fin
    je .end
    cmp byte[rsi + rax],0       ;comparamos si la frase s2 llega al fin
    je .end
    mov r14b, byte[rsi + rax]   ;auxiliar 1
    mov r15b, byte[rdi + rax]   ;auxiliar 2
    cmp r15b, r14b              ;Hacemos la comparacion entre r15b y r14b
    jne .end
    inc rax                     ;incrementamos la posicion en el string
    jmp .loop


.end:
    mov r14 , 0                 ;limpiamos el auxiliar 1
    mov r15 , 0                 ;limpiamos el auxiliar 2 
    mov r14b, byte[rdi + rax]   ;extraemos el byte 1
    mov r15b, byte[rsi + rax]   ;extraemos el byte 2
    sub r14, r15                ;hacemos la resta entre los registros para obtener la diferencia
    mov rax, r14                ;movemos el resultado al registro de retorno
    ret



