.model small
.stack 100h

.code
main:
    mov ax, 10
    mov cx, 0
    
bucle:
    mov dx, cx
    add dx, 30h
    mov ah, 2
    int 21h
    
    inc cx
    cmp cx, ax
    jl bucle

    ; Salir del programa
    mov ax, 4c00h
    int 21h
end main
