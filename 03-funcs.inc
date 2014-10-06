%include "tape.inc"

section .text

tape_exit:
    mov rdi, rax
    mov rax, sys_exit
    syscall

tape_putdigit:
    mov rsi, 0x0a00
    add rdi, 48
    xor rsi, rdi
    mov [rsp-8], rsi
    mov rax, sys_write
    mov rdi, 1
    lea rsi, [rsp-8]
    mov rdx, 2
    syscall
    ret
