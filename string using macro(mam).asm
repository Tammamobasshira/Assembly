.model small
.stack
.data
a db "tamma",0dh, 0ah, "$" 
.code
main proc
    mov ax, @data
    mov ds, ax 
    
    mov bx, 5
       
    sm:
    lea dx, a
    mov ah , 09h
    int 21h
    dec bx
    jnz sm
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main