.model small
.stack 100h
.data 
a db 10, 13, 'Enter the 1st number : $'   
b db 10, 13, 'Enter the 2nd number : $'
c db 10, 13, 'The smaller number is $'
.code
main proc
    mov ax,@data
    mov ds,ax
         
    mov ah, 9
    lea dx, a
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    
    mov ah, 9
    lea dx, b
    int 21h
     
    mov ah, 1
    int 21h
    
    cmp bl,al
    jl l1 
    jmp l2 
    
    l1: 
       
      mov ah, 9
      lea dx, c
      int 21h
      
      mov ah, 2
      mov dl, bl
      int 21h 
      
      jmp exit 
      
    l2:
       
      mov ah, 9
      lea dx, c
      int 21h
      
      mov ah, 2
      mov dl, al
      int 21h   
      
     exit:
     mov ah, 4ch
     int 21h
     main endp
end main