.model small
.stack 100h
.data
msg db "Hello,World!", 10,13,"$"
.code 
Display macro msg
    mov ah,9
    lea dx,msg
    int 21h
endm

main proc 
    mov ax, @data
    mov ds, ax
    
    mov cx, 10

    level:
    Display msg
    loop level
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main