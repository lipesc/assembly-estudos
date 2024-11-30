section .data
message: db 'Hello, World Correct exit', 10

section .text
global _start


_start:
    mov   rax, 1       ; numero da syscall 'write'
    mov   rdi, 1       ; descriptor stdout
    mov   rsi, message ; endereço da string
    mov   rdx, 27      ; tamanho da string em bytes
    syscall

    mov rax, 60       ; numero da syscall 'exit'       
    xor rdi, rdi      ; limpar rdi
    syscall