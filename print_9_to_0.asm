;print 9 to 0
.model small
.stack 100h
.data
a db 10,13, 'Loop concept: $'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, a
    int 21h
    
    mov cx, 10
    mov ah, 2
    mov dl, 9
    add dl, 48
        
    level:
    int 21h
    dec dl
    loop level
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main