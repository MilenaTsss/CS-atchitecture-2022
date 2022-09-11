# Задание 3

Был создан файл hw1.c, в котором написан код на языке C для вывода Hello world
Также были выполнены следующие команды
gcc -E hw1.c > hw1.i
gcc -S hw1.i
gcc -c hw1.s -o hw1.o
gcc hw1.o

# Задание 4
Были выполнены различные трансформации в язык ассемблера

1. gcc -O0 -Wall -masm=intel -S hw1.c
2. gcc -O0 -Wall -masm=intel -S -fno-asynchronous-unwind-tables hw1.c
3. gcc -O0 -Wall -masm=intel -S -fno-asynchronous-unwind-tables -fcf-protection=none hw1.c
4. gcc -O3 -Wall -masm=intel -S -fno-asynchronous-unwind-tables -fcf-protection=none hw1.c 
# Задание 5
Написана программа на языке nasm и выполнены следующие команды, чтобы собрать исполняемый файл

nasm -f elf32 hw.asm -o hw.o
ld -m elf_i386 hw.o -o hw
