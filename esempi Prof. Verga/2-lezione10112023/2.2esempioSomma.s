DATI   DCD     12,35,6,135,1
DIM    EQU     5
SOMMA  FILL    4

       MOV     R1,#DIM
       MOV     R2,#DATI
       MOV     R3, #0

CICLO  LDR     R4,[R2]
       ADD     R3,R3,R4
       SUBS    R1,R1,#1

       ADD     R2,R2,#4
       BGT     CICLO

       MOV     R10,#SOMMA
       STR     R3,[R10]




