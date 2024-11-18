global _start


section .data
    msg1 db "Higher than zero", 10
    msg2 db "Zero", 10
    index db 0


section .text
    _start:
        ; if (index == 0) _print_true_msg else print_false_msg
        cmp byte [index], 0
        je _else 
        call _print_true_msg
        jmp _exit
       
    _else:          
        call _print_false_msg
     
    ; syscall sys_exit
    _exit:
        mov rax, 60
        mov rdi, [index]
        syscall
    
    ; subroutine for printing message into command line
    _print_true_msg:   
        mov rax, 1
        mov rdi, 1
        mov rsi, msg1
        mov rdx, 17
        syscall
        ret

    ; subroutine for printing message into command line
    _print_false_msg:   
        mov rax, 1
        mov rdi, 1
        mov rsi, msg2
        mov rdx, 5
        syscall
        ret
