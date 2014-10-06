section .text
global _start

_start:
    mov rdi, 1
    mov rax, rdi
    mov rsi, hello
    mov rdx, hello_len
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall

section .data

hello db "Hello, World!", 10
hello_len equ $-hello

; vim: set et tw=100 ts=4 sw=4 ft=nasm:
