
global _start
extern printf

section .text

_start:
    push    rbp	
    mov rdi, fmt
    mov rax, 0
    call printf 

    mov rax, 60
    mov rdi, 0
    syscall

section .data
    fmt db "Program exit..", 10, 0

