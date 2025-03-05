.model small
.stack 100h
.code
main proc
    MOV ah, 1
    int 21h
    MOV bl, al
    
    MOV ah, 1
    int 21h
    MOV bh, al 
           
    MOV ah,2
    MOV dl,bl
    int 21h      
       
    MOV ah,2
    MOV dl,bh                                                                                                                                                                                                                                        
    int 21h 
    
    exit:
     MOV ah, 4ch
     int 21h
     main endp
end main