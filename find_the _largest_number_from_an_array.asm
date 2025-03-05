; largest number
.model small
.stack 100h
.data
array db 2,4,1,5,7
.code
main proc
    mov ax, @data
    mov ds, ax 
    
    mov al,0 
    mov cx,5
    mov DI, 0   
    
    compair:
    cmp al, array[DI]
    ja next
    mov al, array[DI]
    
    next:
    inc DI
    loop compair 
    
    mov ah, 2
    add al,48
    mov dl, al
    int 21h
    
    main endp
end main