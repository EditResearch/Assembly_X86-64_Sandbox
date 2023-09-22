global _start


section .data
    msg db "Program exit..", 10, 0
    index db 10


section .text
    _start:
        ; loop for cyclic printing the message until index value is not 0
        _loop:
           cmp byte [index], 0
           je _exit 
           call _print_msg
           dec byte [index]
           jmp _loop
            
    ; syscall sys_exit
    _exit:
        mov rax, 60
        mov rdi, [index]
        syscall
    
    ; subroutine for printing message into command line
    _print_msg:   
        mov rax, 1
        mov rdi, 1
        mov rsi, msg
        mov rdx, 15
        syscall
        ret


