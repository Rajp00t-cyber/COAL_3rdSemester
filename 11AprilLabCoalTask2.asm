.model small
.stack 100h
.data 

msg1 DB 10, 13, "Enter a one_digit number: $"
msg2 DB 10, 13, "The number is positive.$"
msg3 DB 10, 13, "The number is zero.$"

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

cmp al, 0
jg positive
je zero

positive:
mov dx, offset msg2
mov ah, 9
int 21h
mov ah, 4ch
int 21h

zero:
mov dx, offset msg3
mov ah, 9
int 21h

main endp
end main

