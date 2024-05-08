.model small
.stack 100h

.data
    num1 dw 6
    num2 dw 7
    resultado dw ?

.code
main:
    mov ax, @data
    mov ds, ax
    
    mov ax, num1
    mul num2
    mov resultado, ax
    
    ; Imprimir el resultado
    mov ax, 4c00h
    int 21h
end main
