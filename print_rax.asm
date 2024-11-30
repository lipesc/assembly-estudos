section .data
codes:
    db       '0123456789ABCDEF'

section .text
global _start
_start:
    mov rax, 0x1122334455667788 ; numeros 1122.. em hex


    mov rdi, 1
    mov rdx, 1
    mov rcx, 64
                                ; a cada 4 bits exibe o hex como 1 digito
                                ; shift e AND para isolar
                                ; o resultado é o offset no array 'codes'

.loop:                          ; instrução controle de transferencia
    push rax                    ; inserir na stack
    sub rcx, 4                  

    sar rax, cl                 ; shift para o byte menos significativo
    
    and rax, 0xf

    lea rsi, [codes + rax]      ; carregar o endereço
    mov rax, 1

                                ; syscall deixa rcx e r11 alterados
    push rcx
    syscall
    pop rcx

    pop rax
                                ; test instrução comparador logico AND para comparar se é zero mesmo
                                ; de forma rapida se nao for jnz .loop continua e quando for 0  
                                ; syscall para sair e XOR para zerar é feito
    test rcx, rcx
    jnz .loop
    mov     rax, 60
    xor     rdi, rdi
    syscall

