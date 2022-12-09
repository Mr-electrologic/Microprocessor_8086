data segment
    n1 db 05h
    n2 db 06h
    data ends
code segment
    assume cs:code,ds:data
    start:
    mov ax,data
    mov dx,ax
    mov al,n1
    mov bl,n2
    mul bl
    add al,30h
    mov dl,al
    mov ah,02h
    mov dx,ax
    int 21h
    code ends
end start