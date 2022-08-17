title Laboratory 1 : Evaluating Simple Arithmetic Expression
Include Irvine32.inc
    p EQU 8d
.data
    x SDWORD 16d
    y SDWORD 154d
    z DWORD -17d
    w SDWORD ?
.code
main PROC
    ; w = (x + y) - (50 + x + y + z - p)
    MOV eax,x     ; EAX = x
    ADD eax,y     ; EAX = x+y

    MOV ebx,50d   ; EAX = 50
    ADD ebx,eax   ; EAX = 50 + x + y
    ADD ebx,z     ; EAX = 50 + x + y + z
    SUB ebx,p     ; EAX = 50 + x + y + z - p
    SUB eax,ebx   ; EAX = (x + y) - (50 + x + y + z - p)
    MOV w,ebx     ; w = (x + y) - (50 + x + y + z - p)
    call writeInt


    exit 
main ENDP
END main