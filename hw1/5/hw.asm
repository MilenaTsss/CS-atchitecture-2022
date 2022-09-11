global _start

section .rodata
    hello_world: db "Hello world!", 0

section .text
_start:
    mov eax, 4              ; 0x04 = write()
    mov ebx, 1              ; дескриптор, 1 = стандартный вывод
    mov ecx, hello_world    ; строка
    mov edx, 14             ; длина строки
    int 0x80                ; системный вызов

    mov eax, 1              ; 1 = exit()
    mov ebx, 0              ; 0 = нет ошибок
    int 0x80
