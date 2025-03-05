.model small
.stack 100h
.data
msg db 10,13, "My name is Tamma Mobasshira $"
.code
print macro msg
    mov ah,9
    lea dx, msg
    int 21h
endm
main proc 
    mov ax, @data
    mov ds, ax
    mov cx, 50
    
    level:
    print msg
    loop level
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main