;----------------------------------------------------------------------------------------
; Duas funções -  print_newline, exibirá o caractere de quebra delinha
; print_hex, aceitará um número e o exibirá em formato hexadecimal 
;----------------------------------------------------------------------------------------

section .data


newline_char: db 10
codes: db '123456789abcdef'

section .text
global _start


print_newline:
    mov rax, 1              ; syscall 'write'
    mov rdi, 1              ; descritor stdout
    mov rsi, newline_char   ; dados 
    mov rdx, 1
    syscall
  ret

print_hex:
    mov rax, rdi

    mov rdi, 1
    mov rdx, 1
    mov rcx, 64             ; desolamento até rax
iterate:
    push rax                ; salvar inicio de rax
    sub rcx, 4
    sar rax, cl             ; instrução sar shift arithmetic rigth até 0 
    and rax, 0xf            ; extrair o nibble
    lea rsi, [codes + rax]  ; obtem caractere de um digito hex

    mov rax, 1

    push rcx                ; syscall modificara rcx
    syscall                 ; rax = 1 (31) para write
                            ; rdi = 1 para stdout, rsi = endereço de um caractere

    pop rcx


    pop rax
    test rcx, rcx           ; vai ser 0 quando todos os digitos forem imprimidos
    jnz iterate

    ret
_start:
    mov rdi, 0x1122334455667788
    call print_hex
    call print_newline


    mov rax, 60
    xor rdi, rdi
    syscall