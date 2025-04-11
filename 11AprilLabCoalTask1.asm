.model small
.stack 100h
.data 

msg1 DB 10, 13, "A is greater than B.$"
msg2 DB 10, 13, "A is less than B.$"
msg3 DB 10, 13, "A is equal to B.$"    

A DB 11         
B DB 4          

.code
main proc 
    
mov ax, @data
mov ds, ax

mov al, A
cmp al, B
jg greater
jl less
je equal

greater:
mov dx, offset msg1
mov ah, 9
int 21h
mov ah, 4ch
int 21h

less:
mov dx, offset msg2
mov ah, 9
int 21h
mov ah, 4ch
int 21h

equal:
mov dx, offset msg3
mov ah, 9
int 21h

main endp
end main