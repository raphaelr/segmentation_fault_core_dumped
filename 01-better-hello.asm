%include "tape.inc"

section .text
global _start

_start:
    mov rdi, sys_write
    mov rax, rdi
    mov rsi, hello
    mov rdx, hello_len
    syscall

    mov rax, sys_exit
    xor rdi, rdi
    syscall

section .data

hello db "Hello, World!", 10
hello_len equ $-hello
