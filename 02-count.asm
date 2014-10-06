%include "tape.inc"

section .text
global _start

_start:
    mov r13, 0x0a00
    mov rbp, rsp
    sub rsp, 8
    mov r8, 10

    ; Syscall arguments
    mov rdi, 1
    mov rsi, rbp
    mov rdx, 2
iteration:
    mov r9, r8
    add r9, 47
    xor r9, r13
    mov [rbp], r9
    mov rax, sys_write
    syscall
    dec r8
    cmp r8, 0
    jnz iteration

    mov rax, sys_exit
    xor rdi, rdi
    syscall
