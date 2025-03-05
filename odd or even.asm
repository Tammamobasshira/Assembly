.model small
.stack 100h
.data
a db 10,13, "Even number $"
b db 10,13, "Odd number $"
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    int 21h
     
     mov bl,2
    div bl
    
    cmp ah, 0
    jz branch1
    jnz branch2
    
    branch1:
    mov ah, 9
    lea dx, a
    int 21h
    
   jmp exit
   
   branch2:
   mov ah, 9
   lea dx, b
   int 21h
   
   exit:
   mov ah, 4ch
   int 21h  
   main endp
end main 