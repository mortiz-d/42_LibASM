section .text
global ft_strdup  ; Punto de entrada
extern __errno_location
extern malloc
extern ft_strlen
extern ft_strcpy
;char *strdup(const char *s);
;(registros en uso)
;rax ;registro de retorno
;rdi ;la frase a duplicar (el 1º)
;rsi ;(el 2º arg en caso de uso)
;rdx ;(la 3º arg en caso de uso)

ft_strdup:  
    ;FASE 1          
    push r15            ;Reservamos el registro r15 para guardar la frase
    mov r15,0           ;Limpiamos el registro en caso de tener basura
    mov r15, rdi        ;Guardamos la frase s1 en r15
    call ft_strlen      ;Llamamos a la funcion ft_strlen (el retorno va a rax y toma rdi como argumento)
    ;FASE 2
    inc rax             ;incrementamos en 1 las palabras contadas para darle un espacio mas a la reserva malloc
    mov rdi, rax        ;movemos el length al argumento para la llamada
    call malloc wrt ..plt ;Llamamos a la funcion malloc (el retorno va a rax y toma rdi como argumento)
    ;FASE 3
    mov rsi, r15        ;ponemos la frase original en el segundo argumento
    mov rdi, rax        ;ponemos la reserva en el primer argumento
    call ft_strcpy      ;Llamamos a la funcion ft_strcpy(el retorno para rax y toma rdi y rsi como argumentos)
    ;FASE 4 
    pop r15             ;liberamos el registro r15
    ret                 ;devolvemos el valor
.prep_malloc:

.prep_dup: