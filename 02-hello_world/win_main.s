global  main
extern  printf


section .data
    number db   42
    format db "%s", 0
    message db  "Hello, World", 0


section .text

main:

    mov     rcx, format
  ; mov     rdx, [number]
    mov     rdx, message
    call    printf
    
    mov rax, 0
    ret


