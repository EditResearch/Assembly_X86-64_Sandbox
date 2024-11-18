format ELF64 executable 3

segment readable executable

extern printf
entry _start

macro write fd, buf, count
{
    mov rax, 1
    mov rdi, fd
    mov rsi, buf
    mov rdx, count
    syscall
}


macro exit code
{
    mov rax, 60
    xor rdi, code
    syscall
}

_start:
    ;write 1, msg, 14
    mov rax, msg
    call printf

    exit 0

segment readable writable

msg  db "Hello world!", 10, 0


