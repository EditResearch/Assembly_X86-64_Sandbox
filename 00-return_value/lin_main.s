section .data
    return_value dd 22

section .text
    global _start

_start:
    mov rax, 60       ; Syscall číslo pro sys_exit (60)
    mov rdi, [return_value]
    syscall


