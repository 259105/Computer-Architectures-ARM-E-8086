.MODEL small
.STACK
DIM EQU 20
.DATA
TABLE DB DIM DUP(?)
.CODE
.STARTUP

MOV CX,DIM
LEA DI,TABLE
MOV AH,1; i want to read

lab1:
INT 21H
MOV [DI],AL
INC DI
DEC CX
CMP CX,0
JNE lab1

MOV CL,0FFH
MOV DI,0

ciclo:
CMP CL,