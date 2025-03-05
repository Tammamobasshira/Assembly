;add two integer
.model small 
.data
str1 db "Enter first number: $"
str2 db 10,13,"Enter second number: $"
str3 db 13,10,"The sum is: $"
.code
main proc
    mov ax,@data
    mov ds,ax 
    
    lea dx,str1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,9
    lea dx,str2
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    lea dx,str3
    mov ah,9
    int 21h
    
    mov ah,2 
    add bh,bl
    sub bh,48
    mov dl,bh 
    
    int 21h
    mov ah,4Ch
    int 21h
main endp
end