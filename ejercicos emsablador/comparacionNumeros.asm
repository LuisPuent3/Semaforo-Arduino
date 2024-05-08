.model small
.stack 100h

.data
    num1 dw 100
    num2 dw 200

.code
main:
    mov ax, @data
    mov ds, ax
    
    mov ax, num1
    mov bx, num2
    cmp ax, bx
    jg mayor
    jl menor
    mov ah, 9
    lea dx, igual
    int 21h
    jmp fin

mayor:
    mov ah, 9
    lea dx, esmayor
    int 21h
    jmp fin

menor:
    mov ah, 9
    lea dx, esmenor
    int 21h
    jmp fin

fin:
    mov ax, 4c00h
    int 21h

.data
    igual db 'Los números son iguales', '$'
    esmayor db 'El primer número es mayor', '$'
    esmenor db 'El segundo número es mayor', '$'
end main
