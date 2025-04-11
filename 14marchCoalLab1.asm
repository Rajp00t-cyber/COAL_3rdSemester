.model small
.data
Msg1 DB 'RidaEman$'
Msg2 DB '59510students.riphah@gmail.com$' 
 Msg3 DB '03006258522$'                                   
.code
main Proc
      
        mov ax, @data 
mov ds, ax 
mov dl, msg1 
mov dx, offset msg1 
mov ah,9
int 21h
mov dx, 10
mov ah, 2 
int 21h    
mov dx, 13
mov ah, 2 
int 21h  

mov ax, @data 
mov ds, ax
mov dl, msg2 
mov dx, offset msg2  
mov ah,9
int 21h
mov dx, 10
mov ah, 2 
int 21h    
mov dx, 13
mov ah, 2 
int 21h    

mov ax, @data 
mov ds, ax
mov dl, msg3 
mov dx, offset msg3  
mov ah,9
int 21h
mov dx, 10
mov ah, 2 
int 21h    
mov dx, 13
mov ah, 2 
int 21h  

      
        
 main endp   

end main