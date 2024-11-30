; verifica se rax é menor que 69 e move 1 para rbx, se não
; move 0 para rbx. instrucao cmp para configurar e jl para verificar flags de condição.

    cmp rax, 69
    jl yes

    mov rbx, 0
    jmp ex
yes:
    mov rbx, 1
ex: