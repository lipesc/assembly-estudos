#!/bin/bash

name="lib_puts"

mkdir -p bin

nasm -felf64 ${name}.asm -o bin/${name}.o 

gcc -no-pie -z noexecstack bin/${name}.o -o bin/${name} 

./bin/${name}

