.686
.model flat,stdcall

.stack 100h

.data
X dw 15
Y dw -10
Z dw 65
X1 dw ?
Y1 dw ?
.code
ExitProcess PROTO STDCALL :DWORD
Start:

mov cx, X
ror cx,5 ;сдвиг x' в право на 5
mov X1,cx

mov cx , Y
ror cx,5 ;сдвиг y' в право на 5 бит
mov Y1,cx

mov ax, X1
imul Y1
add ax,Z

mov bx, X1
add bx,Y1

xor ax,bx

exit:
Invoke ExitProcess,1
End Start
