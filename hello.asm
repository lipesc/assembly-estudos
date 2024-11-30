global _start

section .data
message: db 'Hello, World', 10

section .text
_start:
    mov   rax, 1        ; numero de chamada de sistema deve ser armazanado em rax. 
    mov   rdi, 1        ; argumento 1  em rdi = descritor
    mov   rsi, message  ; argumento 2  em rsi = string onde começa
    mov   rdx, 14       ; argumento 3  em rsi = quantos bytes
    syscall