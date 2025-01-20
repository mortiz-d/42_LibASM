section .text
global ft_strlen  ; Punto de entrada

;size_t strlen(const char *s);
;(registros en uso)
;rax ;registro de retorno
;rdi ;registro de entrada (el 1º)


ft_strlen:
    mov rax, 0              ;ponemos rax (que es el valor que devolvemos a 0)
    jmp .loop               ;saltamos al loop de la funcion

.loop:
    cmp byte[rdi + rax], 0  ;comparamos la posicion del byte de la frase con el final de la frase
    je .end                  ;devolvemos el valor de rax si encuentra el final de la frase
    inc rax                 ;incrementamos rax en uno
    jmp .loop               ;volvemos al inicio

.end:
    ret

