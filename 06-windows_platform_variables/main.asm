global main
global _start
extern ExitProcess
extern printf

section .text
    
_start:
    call main

main:
    mov rcx, fmt
    mov rdx, [rel var]
    call printf    

    mov rcx, 0
    call ExitProcess


section .data
    var dq 55
    fmt db "%d", 10, 0

