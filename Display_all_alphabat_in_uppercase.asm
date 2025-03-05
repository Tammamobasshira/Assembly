;Display all alphabat in uppercase
.model small
.stack 100h
.data
a db 10,13, 'Display all alphabat in uppercase: $'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, a
    int 21h
    
    mov cx, 26
    mov dx, 65
        
    level:
    mov ah, 2
    int 21h
    inc dx
    loop level
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main