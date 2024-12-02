#!/bin/bash

name="print_call"

mkdir -p bin

nasm -felf64 ${name}.asm -o bin/${name}.o 

# compilar para c com gcc
# gcc -no-pie -z noexecstack bin/${name}.o -o bin/${name}

# linker para assembly desativar quando usar c
ld -o bin/${name} bin/${name}.o 


./bin/${name}

