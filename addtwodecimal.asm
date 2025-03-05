;Write an assembly language program to add two decimal numbers    

.model small
.stack      

.data                          
var1 db 12
var2 db 12
msg db 'Sum of two number: $'
.code

main proc
       mov ax,@data
       mov ds,ax
       mov ax,0
       mov al,var1
       add al,var2
       aam              ;adjust after multiplication
       add ax,3030h
       push ax
       lea dx,msg
       
       mov ah,09h
       int 21h
       pop ax
       mov dl,ah
       mov dh,al
       mov ah,02h
       int 21h
       mov dl,dh
       mov ah,02h
       int 21h
       mov ax,4c00h
       int 21h
       main endp
end main



