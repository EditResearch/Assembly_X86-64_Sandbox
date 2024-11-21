section .data
    fmt db "Hello World", 10, 0

section .text
    global _start
    extern printf
    extern ExitProcess 

_start:
    mov rcx, fmt
    call printf

    mov rcx, 0
    call ExitProcess


