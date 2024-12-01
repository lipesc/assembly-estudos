#!/bin/bash

name="hello_proper_exit"

mkdir -p bin

nasm -felf64 -o bin/${name}.o ${name}.asm

ld -o bin/${name} bin/${name}.o 

./bin/${name}

