data segment
    n1 db 05h
    data ends
        code segment
            assume cs:code,ds:data
            start:
            mov ax,data
            mov ds,ax
            mov al,01
            mov cl,n1
            li:mul cl
            dec cl
            jnz li
            add al,30h
            mov dl,al
            mov ah,02h
            mov dx,ax
            int 21h
            code ends
        end start
    