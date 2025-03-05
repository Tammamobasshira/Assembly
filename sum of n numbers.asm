
.model small
.stack 100h
.data
a db 10, 13, 'Enter the number of n: $'
.code
main proc
    mov ax, @data
    mov ds, ax 
    
    mov ah, 9
    lea dx, a
    int 21h
    
    mov bh,0
    
    mov ah, 1
    int 21h
    mov cl, al
    cmp bl, 0
    jnz lp
    jz lp2
    
    lp:
    mov ah,1
    int 21h
    add bh,al
    dec bl
    cmp bl,0
    jz lp2
    loop lp
    
    lp2:
    int 21h
    mov ah, 2
    mov dl, bh 
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main