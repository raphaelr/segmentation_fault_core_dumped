%include "03-funcs.inc"

section .text
global _start

_start:
    mov rdi, 4
    call tape_putdigit
    mov rdi, 8
    call tape_putdigit
    mov rdi, 4
    call tape_putdigit
    mov rdi, 9
    call tape_putdigit

    xor rdi, rdi
    call tape_exit
