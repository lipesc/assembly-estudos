#!/bin/bash

name="print_call"

mkdir -p bin

nasm -felf64 ${name}.asm -o bin/${name}.o 

# gcc -no-pie -z noexecstack bin/${name}.o -o bin/${name}

ld -o bin/${name} bin/${name}.o 


./bin/${name}

