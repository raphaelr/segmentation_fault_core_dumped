%include "03-funcs.inc"
section .text
extern printf
global _start

_start:
    xor rdx, rdx
    mov eax, 48
    mov rbx, 49
    mul rbx
    mov ecx, edx
    shl rcx, 32
    xor ecx, eax

    mov rdi, format_string
    mov rsi, 48
    mov rdx, 49
    call printf

    xor rdi, rdi
    call tape_exit

section .data
    format_string db '%ld * %ld = %ld, bitch!', 10
