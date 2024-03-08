; Example assembly language program -- adds two numbers
; Author:  R. Detmer
; Date:    1/2008

.586
.MODEL FLAT

INCLUDE io.h            ; header file for input/output

.STACK 4096

.DATA
bval BYTE ?
wval WORD ?
dval DWORD ?
tval DWORD ?

.CODE
_MainProc PROC
        mov eax, 100
        mov AH, 0
        mov edx, dval
        mov dval, ecx
        mov EBX, 128
        mov CL, bval
        xchg tval, eax
        xchg dl, dh
        xchg eax, edx
        xchg bx, dx


_MainProc ENDP
END                             ; end of source code

