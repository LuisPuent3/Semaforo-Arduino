.model small
.stack 100h

.data
    num1 dw 1234h
    num2 dw 5678h
    resultado dw ?

.code
main:
    mov ax, @data
    mov ds, ax
    
    mov ax, num1
    add ax, num2
    mov resultado, ax
    
    ; Imprimir el resultado
    mov ax, 4c00h
    int 21h
end main
