; Data la lista [1,2,3,4,5,6,7,8,9,10] contare tutti 
; i numeri pari e minori di 8 e salvare il risultato 
; in memoria. 

LISTA DCD 1,2,3,4,5,6,7,8,9,10
DIM EQU 10
COSTANTE EQU 8
RISULTATO FILL 4

MOV R1,#LISTA
MOV R2,#DIM
MOV R5,#0
CICLO SUBS R2,R2,#1
BLT EXIT
LDR R3,[R1],#4
AND R4,R3,#1
CMP R4,#0
BEQ MINORE
B CICLO

MINORE CMP R3,#COSTANTE
BLT CONTA 
B CICLO

CONTA ADD R5,R5,#1  ; ADD R5,R5,R3
B CICLO 

EXIT MOV R2,#RISULTATO
STR R5,[R2]
