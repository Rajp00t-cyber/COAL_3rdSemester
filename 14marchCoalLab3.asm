.model small
.stack 100h
.data 

msg1 DB 10, 13, "Enter a one-digit number: $"
msg2 DB 10, 13, "The number is even.$"
msg3 DB 10, 13, "The number is odd.$"

.code
main proc

mov ax, @data
mov ds, ax

mov dx, offset msg1
mov ah, 9
int 21h

mov ah, 1
int 21h
sub al, 30h        

test al, 1
jz even
jmp odd

even:
mov dx, offset msg2
mov ah, 9
int 21h
mov ah, 4ch
int 21h

odd:
mov dx, offset msg3
mov ah, 9
int 21h

main endp
end main