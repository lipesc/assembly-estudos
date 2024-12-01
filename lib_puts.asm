;----------------------------------------------------------------------------------------
; c library com nasm, usuando 'puts' C library
;função puts()  pega os argumentos nos registradores da esquerda a direita rdi, 
;rsi, rdx, rcx, r8, r9 nessa ordem.
;----------------------------------------------------------------------------------------
global      main
extern      puts

section     .text

main:                               ; C library chama
    mov     rdi, message            ; primeiro argumento passado para rdi
    call    puts                    ; message
    ret                             ; retorno do main para C library 
message:
    db     "Hello, C library", 0    ; saida do main espera 0 no retorno.