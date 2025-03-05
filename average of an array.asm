.model small
.stack 100h
.data

    array db 1,4,2,3,8,6,7,5,9
    msg db "average = $"
    
.code

main proc
      mov ax,data
      mov ds,ax

      lea si,array 
      lea dx,msg
      mov ah,9
      int 21h

      mov ax,00
      mov bl,9

      mov cx,9 
      loop1:
           add al,array[SI]
           inc SI
      loop loop1

      div bl

      add al,30h

      mov dl,al
      mov ah,2
      int 21h

      mov ah,4ch
      int 21h 
     
     main endp
end main