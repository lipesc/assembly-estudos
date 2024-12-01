; instrucao lea permite calcular varios operandos
; nao é possivel fazer isso com o mov

mov rsi, codes        ; endereço do rotulo code

mov rsi, [codes]      ; conteudo da memoria começando no codes com 8 bytes igual rsi

lea rsi, [codes]      ; equivalente a 'mov rsi, codes' 

mov rsi, [codes + rax] ; conteudo da memoria, começando em codes+rax


lea rsi, [codes + rax] ; equivalente a:'mov rsi, codes' 'add rsi, rax'. nao é possivel com um unico mov