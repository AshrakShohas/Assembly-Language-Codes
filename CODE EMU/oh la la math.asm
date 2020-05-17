include emu8086.inc
ORG 100h
PRINT 'oh la la'
printn  

mov ah,1
int 21h
mov bl,al
printn
mov ah,1
int 21h
mov cl,al

add bl,cl
sub bl,48
printn
mov ah,2
mov dl,bl
int 21h

end
