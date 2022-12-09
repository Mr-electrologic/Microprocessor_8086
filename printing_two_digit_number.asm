data segment
    n1 db 31h
    n2 db 16h
    data ends
code segment
    assume cs:code,ds:data
    start:
    mov ax,data
    mov ds,ax
    mov bh,96h;no to print
    mov ch,02h;no of digits
    mov cl,04h;rotation count
    up: rol bh,cl
    mov dl,bh
    and dl,0fh
    add dl,30h
    mov ah,02
    int 21h
    dec ch
    jnz up
    code ends 
end start