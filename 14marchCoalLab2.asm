.model small
.data
                                  
.code
main Proc
      
mov ah,1
int 21h
mov bl,al
sub bl,32
mov dl,bl
mov ah,2
int 21h        

      
        
 main endp   

end main