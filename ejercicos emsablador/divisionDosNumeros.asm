.model small
.stack 100h

.data
    num1 dw 50
    num2 dw 10
    resultado dw ?

.code
main:
    mov ax, @data
    mov ds, ax
    
    mov ax, num1
    mov bx, num2
    div bx
    mov resultado, ax
    
    ; Imprimir el resultado
    mov ax, 4c00h
    int 21h
end main
