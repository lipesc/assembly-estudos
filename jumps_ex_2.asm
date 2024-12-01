mov rax, -1
mov rdx, 2


cmp rax, rdx
jg location       ; jump if greater
ja location       ; jump if above


cmp rax, rdx
je location       ; jump if equal
jne location      ; jump if not equal