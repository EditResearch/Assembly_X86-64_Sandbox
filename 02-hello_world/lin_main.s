global _start:

section .data
    format db  "Hello, World", 10, 0
    

section .text
    _start:
        mov rax, 1
        mov rdi, 1
        mov rsi, format
        mov rdx, 13
        syscall

        mov rax, 60
        mov rdi, 0
        syscall
    
;section .bss
;    resb 1



