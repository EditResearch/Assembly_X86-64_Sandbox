global _start
extern ExitProcess
extern printf

section .text
_start: 
    call main


main:
    mov rcx, 42
    mov rdx, 1
    call add_two_numbers

    mov rcx, fmt
    mov rdx, rax
    call printf

    mov rcx, 1
    mov rdx, 2
    mov r8, 3
    mov r9, 4
    push 5
    call add_five_numbers

    mov rcx, fmt
    mov rdx, rax
    call printf    


    mov rcx, 0
    call ExitProcess    


add_two_numbers:
    ; prolog
    push rbp    ; zálohujeme adresu vrcholu zásobníku aby volající funkce měla původní hodnotu a mohla používat své lokální proměnné
    mov rbp, rsp    ; nastavíme adresu vrcholu zásobníku na adresu v rsp registru kde je konec zásobníkového rámce volající funkce
    sub rsp, 8 ; rezervace 8 bytů pro jednu lokální proměnnou 

    ; function body
    add rcx, rdx
    mov [rbp - 8], rcx ; presun hodnoty z registru rcx do lokální proměnné 
    mov rax, [rbp - 8] ; přesun hodnoty z lokální proměnné do registru rax, který slouží k předání návratové hodnoty

    ; epilog
    mov rsp, rbp ; obnovení adresy konce zásobníkového rámce
    pop rbp ; obnovení adresy vrcholu vrcholu zásobníku, který definuje začátek zásobníkového rámce volající funkce
    ret


add_five_numbers:
    push rbp
    mov rbp, rsp
    sub rsp, 8

    add rcx, rdx
    add rcx, r8
    add rcx, r9
    add rcx, [rbp+16]
    mov [rbp - 8], rcx 
   
    mov rax, [rbp - 8]    
    mov rsp, rbp
    pop rbp
    ret


section .data
    fmt db "%d", 10, 0
