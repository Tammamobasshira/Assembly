; Write an assembly laguage program to calculate the factorial of an integer number

.model small
.stack 100h
.data
.code

main proc
    mov cx, 3
    mov ax, 0
    
    top:
    mul cx
    loop top
    
    mov dx,ax
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp
end main
